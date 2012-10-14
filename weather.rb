class Weather < Sinatra::Base
  get "/" do
    content_type 'text/plain'
    location = Yr::Location.new(60.183, 24.933)
    location.current_weather.symbol.name
  end
  get "/:position" do
    content_type 'text/plain'
    coordinates = params[:position].split(',')
    latitude = coordinates[0].to_f
    longitude = coordinates[1].to_f
    location = Yr::Location.new(latitude, longitude)
    location.current_weather.symbol.name
  end
end
