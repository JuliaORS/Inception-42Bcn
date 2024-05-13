
# Inception

## Project description
This project entails setting up a small infrastructure composed of different services within a virtual machine environment. 
The infrastructure is to be orchestrated using Docker Compose, with each service running in a dedicated container. 
The containers are built from custom Docker images using Dockerfiles.

## Pre-requisites
  - Docker installed - [Download docker]((https://docs.docker.com/)

## Project specifications

#### Docker Compose Setup
  - Docker Compose is used to define and manage the infrastructure services.

#### Custom Docker Images
  - Each service have a corresponding Docker image.
  - There is a Dockerfile for each service.
  - Containers are built from Docker images using the Makefile.
 
#### Service Composition
  - NGINX
  - WordPress
  - MariaDB

#### Volume Configuration
  - Volume to contain the WordPress database.
  - Volume to contain the WordPress website files.

#### Networking
  - Docker network to facilitate communication between containers.
    
## Usage
To set up the infrastructure and deploy the services:

  1. Clone this repository to your local machine.
  2. Navigate to the project directory.
  3. Modify the Dockerfiles and docker-compose.yml file as needed to meet project requirements.
  4. Use the Makefile to build the Docker images and deploy the infrastructure.

## Resources
  - [Docker documentation](https://docs.docker.com/compose/)

    
