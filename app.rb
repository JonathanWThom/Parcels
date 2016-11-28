require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/parcels')

get('/') do
  erb(:index)
end

get('/parcels_output') do
  height = params.fetch('height').to_f
  width = params.fetch('width').to_f
  weight = params.fetch('weight').to_f
  distance = params.fetch('distance').to_f
  speed = params.fetch('speed').to_f
  @parcels = Parcels.new(height, width, weight, distance, speed)
  erb(:parcels_output)
end
