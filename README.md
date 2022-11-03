# slot
Create a REST API using ROR application which will allow the users to
create time based slots. That should accepts various parameters in
payload: start_time, end_time, and total_capacity.
Divide all the capacities during the entered start and end time. And if
some capacities are exceeding the rounding values then divide the slot
capacities to the last slots.
Example: User has entered the start time as tomorrow at start time 11:00
AM and end time as 12:00 noon. And the total capacity as 6. 
