require 'docker'


'deae7abef717'
container = Docker::Container.create('Image' => 'blankblank/razorchess')
container.start
#containerService class?
class ContainerService

  #docker info
  #create new container
  def create_container
    #This method should create and provision a new container for the user.
    #We will return the id of the newly created container
    puts 'todo: implement this method'
  end
  #delete container
  #update container
  #create new image
  
end


