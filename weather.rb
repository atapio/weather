class Weather < Sinatra::Base
  get "/" do
    content_type 'text/plain'
    location = Yr::Location.new(60.183, 24.933)
    location.current_weather.symbol.name
  end
end
