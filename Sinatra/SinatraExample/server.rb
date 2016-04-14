# myapp.rb
require 'sinatra'

set :bind, '0.0.0.0'

get '/' do
  @mensaje = 'Hola todos'
  # 'Hello world!'
  erb :index
end

get '/hello/:name' do
  # matches "GET /hello/foo" and "GET /hello/bar"
  # params['name'] is 'foo' or 'bar'
  "Hello #{params['name']}!"
end

# get '/whatever' do
#   #fixNum is an integer
#   500
# end
