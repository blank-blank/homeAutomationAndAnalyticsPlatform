require 'docker'



def container_exists(container_id)
  Docker::Container.get(container_id)
  return true
  rescue
    return false
end



class ContainerService

  #docker info
  #create new container
  def create_container
    #This method should create and provision a new container for the user.
    #We will return the id of the newly created container
  
     
  image_name = 'blankblank/razorchess'

  container = Docker::Container.create(
    'Image' => image_name,
    'Tty' => true,
    'ExposedPorts' => { '8081/tcp' => {} },
    'HostConfig' => {
      'PortBindings' => {
        '8081/tcp' => [{ 'HostPort' => '8081' }]
      }
    }
  )
  container.start

  container_id = container.id
  return container_id 

  end
  #delete container
  #update container
  #create new image
  
end

#cs = ContainerService.new
#cs.create_container
