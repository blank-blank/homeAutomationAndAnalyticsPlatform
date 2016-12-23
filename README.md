getting started:

git clone <url>
cd lilypad
bundle install


# homeAutomationAndAnalyticsPlatform
A minimal compute, analytics, and automation platform for personal residences

The platform will provide a Self service API.  A user should be able to do the following:


Requirements:
  Ruby/Sinatra
  MongoDB
ContainerService:

  api:
    create_container:
      description: supporting service that allows creation/deletion of docker containers meant for development/task/service/analytics platforms.
      params:
        image_id -> name of the docker image for the container
     
      returns:
        hash:
          container_id
          

  
Needs-driven MVP: 
    create a server on demand
       require 'containerService'
       cs = ContainerService.new
       cs.create_container
       ~~Will create and run a hard-coded docker image.~~  Takes a params hash: image_name
       

  
    Create a LAMP stack
    add new services
      
    update a server on demand
    destroy a server on demand
    Control a home-theater system
    Get calendars
    Start a movie
    View fitness data and analytics
    Financial metrics
    



