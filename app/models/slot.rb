class Slot < ActiveRecord::Base
	has_many :slot_collections
	validates :start_time, :end_time, :total_capacity, presence: true
	validates :total_capacity, presence: true, :numericality => { :greater_than_or_equal_to => 0, only_integer: true }
	validate :start_time_and_end_time_not_in_past
	after_create :create_slot_collections

  def start_time_and_end_time_not_in_past
    if start_time.present? && start_time < DateTime.now
      errors.add(:start_time, "can't be in the past")
    end
    if end_time.present? 
			errors.add(:end_time, "can't be in the past") if (end_time < DateTime.now)
			errors.add(:end_time, "can't be less than start date") if (end_time < start_time)
    end
  end

  def create_slot_collections
  	total_mins = (end_time - start_time)/60
  	slots_mins = total_mins/total_capacity
  	slots_mins = slots_mins > 15 ? slots_mins : 15
  	arr = []
  	e_time = nil
  	counter = (total_mins/slots_mins).to_i
  	decrment_counter = total_capacity
  	counter.times do |x|
  		s_time = e_time || (start_time)
  		e_time = (s_time + slots_mins.minutes)
  		decrment_counter = decrment_counter - 1
  		arr << {start_time: s_time, end_time: e_time, capacity: 1}
  	end
  	arr.last(decrment_counter).map{|a| a[:capacity] = a[:capacity] + 1}
  	slot_collections.create(arr)
  end
end
