class Weather < Sinatra::Base
  get "/" do
    content_type 'text/plain'
    location = Yr::Location.new(60.183, 24.933)
    location.current_weather.symbol.name
  end
  get "/:lat/:lon" do
    content_type 'text/plain'
    latitude = params[:lat].to_f
    longitude = params[:lon].to_f
    location = Yr::Location.new(latitude, longitude)
    location.current_weather.symbol.name
  end
end
