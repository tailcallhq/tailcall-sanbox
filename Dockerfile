FROM ubuntu:latest
RUN apt-get update && apt-get install -y curl jq entr
WORKDIR /exercises
COPY ./exercises/. /exercises
EXPOSE 4000
curl -sSL https://raw.githubusercontent.com/tailcallhq/tailcall/master/install.sh | bash -s -- v0.16.0