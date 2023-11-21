# Use an official Node.js runtime as a parent image
FROM node:latest

# Install utilities
RUN apt-get update && apt-get install -y curl jq entr

# Set the working directory
WORKDIR /exercises

# Copy the current directory contents into the container at /exercises
COPY ./exercises/. /exercises

RUN npm install -g @tailcallhq/tailcall

# Make port 4000 available to the world outside this container
EXPOSE 4000
