# Commands

## Run the Docker container

````bash
docker run -d -p 3001:3001 highchartsdocker
````

## Test that the server is running and can build a chart

````bash

curl -H "Content-Type: application/json" -X POST -d '{"infile":{"title": {"text": "Steep Chart"}, "xAxis": {"categories": ["Jan", "Feb", "Mar"]}, "series": [{"data": [29.9, 71.5, 106.4]}]}}' 127.0.0.1:3001 -o mychart.png

````