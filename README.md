# Generic Web application

This is an example of a generic web application running on Venice.

The `builder` generates a `dist` folder.

The `server` uses Python's [SimpleHTTPServer](https://docs.python.org/2/library/simplehttpserver.html) to serve on port 8080, forwarded to port 3000.

You can test locally running:

```sh
docker-compose build builder
docker-compose run --rm builder
cd dist
docker-compose build server
docker-compose up server
```
