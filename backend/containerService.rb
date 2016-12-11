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
  def create_container(params)
    #This method should create and provision a new container for the user.
    #We will return the id of the newly created container
    puts params 
    image_name = params["image_name"]  

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
    results = {"container_id" => container.id}
    return results

  end
  #delete container
  #update container
  #create new image
  
end

#cs = ContainerService.new
#cs.create_container({ "image_name" => "blankblank/razorchess" })
