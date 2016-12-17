require 'sinatra'
require 'mongo'
require_relative '../containerService'
require 'json'

cs = ContainerService.new

get '/deploy/list' do
  @options = ["wordpress", "jenkins", "graylog"]
  erb :deploy_options
end

get '/containers/list/:user_id' do 


  
  contents = nil
  File.open("../models/users.json", "r") do |f|
    contents = f.sysread(f.size)
  end  
  erb :user
  users = JSON.parse(contents)
  users['User']['containers']
end



