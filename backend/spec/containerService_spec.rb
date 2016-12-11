require 'containerService'  # <-- your sinatra app
require 'rspec'


describe 'the create_container method' do

  params = { "image_name" => "blankblank/razorchess" }
  cs = ContainerService.new
  results = cs.create_container(params)

  it "should create a new container" do

    container_id = results["container_id"]
    exists = container_exists(container_id)
    exists.should be true
  end
  
  it "should return a hash with container_id as a key" do
    results.should be_kind_of(Hash)
    results.should have_key("container_id")
    
  end
end




