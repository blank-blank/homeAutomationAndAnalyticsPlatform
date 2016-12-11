require 'containerService'  # <-- your sinatra app
require 'rspec'


describe 'The Container Service' do

  it "should create a new container" do
    cs = ContainerService.new
    container_id = cs.create_container()
    exists = container_exists(container_id)
    exists.should be true
    #expect(container_exists(container_id)).to be true
  end
end
