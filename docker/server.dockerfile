FROM alpine

MAINTAINER Work & Co <tech@work.co>

# Install Python
RUN apk add --update python

# Set workdir
WORKDIR /dist/public

# Copy content to folder
COPY . /dist

# Run server on por 8080
CMD python -m SimpleHTTPServer 8080

