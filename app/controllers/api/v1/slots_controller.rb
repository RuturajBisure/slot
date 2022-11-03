class Api::V1::SlotsController < ApplicationController
	protect_from_forgery with: :null_session

	def index
		@slots = Slot.all
		render json: @slots
	end

	def create
		@slot = Slot.new(slot_params)
		if @slot.save
      render json:  @slot.to_json( :include => [:slot_collections] )
		else
			render json: {error: @slot.errors}, status: 400
		end
	end

  def show
    @slot = Slot.find(params[:id])
    render json:  @slot.to_json( :include => [:slot_collections] )
  end

	private
	def slot_params
		params.require(:slot).permit(:start_time, :end_time, :total_capacity)
	end
end
