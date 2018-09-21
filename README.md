# rust_minify

Send requests as 

POST:

DOMAIN:PORT/minify

content - JSON with field js_to_minify

EXAMPLE

```
curl http://localhost:8000/minify -H "Accept: application/json" -H "Cache-control: no-cache" -H "Content-Type: application/json" --data '{"js_to_minify": "var 4;;                 ;    "}'
```
