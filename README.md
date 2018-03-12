# Commands

## Building

Because of the need to accept the highcharts licence and this was difficult to do without mucking about with inputs to scripts etc. tag 1.0.1 build was created after launching a container of 1.0.0 and running the install, accepting the licence etc. and using `docker commit` to make a new tagged image.

## Run the Docker container

````bash
docker run -d -p 3001:3001 paulatstepup/highcharts-export-server:1.0.1
````

## Test that the server is running and can build a chart

````bash

curl -H "Content-Type: application/json" -X POST -d '{"infile":{"title": {"text": "Steep Chart"}, "xAxis": {"categories": ["Jan", "Feb", "Mar"]}, "series": [{"data": [29.9, 71.5, 106.4]}]}}' 127.0.0.1:3001 -o mychart.png

````

//http://34.242.3.27:3001/

curl -H "Content-Type: application/json" -X POST -d '{"infile":{"title": {"text": "Steep Chart"}, "xAxis": {"categories": ["Jan", "Feb", "Mar"]}, "series": [{"data": [29.9, 71.5, 106.4]}]}}' 34.242.3.27:3001 -o mychart.png