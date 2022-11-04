# slot
Create a REST API using ROR application which will allow the users to
create time based slots. That should accepts various parameters in
payload: start_time, end_time, and total_capacity.
Divide all the capacities during the entered start and end time. And if
some capacities are exceeding the rounding values then divide the slot
capacities to the last slots.
Example: User has entered the start time as tomorrow at start time 11:00
AM and end time as 12:00 noon. And the total capacity as 6. 



For eg:
URL: localhost:3000/api/v1/slots
Post
<img width="1512" alt="Screenshot 2022-11-04 at 12 16 13 PM" src="https://user-images.githubusercontent.com/8465120/199909639-9594d51d-49c0-4728-9749-df66024b67a0.png">
<img width="1512" alt="Screenshot 2022-11-04 at 12 16 29 PM" src="https://user-images.githubusercontent.com/8465120/199909643-82fc1bc0-1afc-4be7-9658-fb0658caace9.png">


<img width="1512" alt="Screenshot 2022-11-04 at 12 15 51 PM" src="https://user-images.githubusercontent.com/8465120/199909597-4a63e79f-49f0-4365-a487-5893fd3cf359.png">
