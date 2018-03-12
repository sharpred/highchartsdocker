curl -H "Content-Type: application/json" -X POST -d '{"infile":{"title": {"text""
: "Steep Chart"}, "xAxis": {"categories": ["Jan", "Feb", "Mar"]}, "series": [{"dd
ata": [29.9, 71.5, 106.4]}]}}' 127.0.0.1:3001 -o testchart.png