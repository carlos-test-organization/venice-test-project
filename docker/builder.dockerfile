# Starts with a very small linux distribution
FROM alpine

# Contact information for this service
MAINTAINER Work & Co <tech@work.co>

# Set workdir
WORKDIR /workdir

# Generates the website assets with commands as follows:
# - Invokes make-website.sh script
# - Removes the artifacts folder (would exist on development time)
# - Creates the artifacts folder
# - Moves the built content to the artifacts folder
# - Copies the docker files into the artifacts folder
# - Copies the docker-compose file into the artifacts folder
CMD ./make-website.sh && \
  rm -rf dist && \
  mkdir dist && \
  mv public dist && \
  cp -a docker dist && \
  cp docker-compose.yml dist

# At this point, Venice will tar the contents of the folder described in
# `venice.json#build.artifacts.path`, which in this case is dist, and upload
# that to GitHub and AWS.
