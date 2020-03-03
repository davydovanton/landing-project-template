require "sinatra"
require "json"

class WebApp < Sinatra::Base
  get "/" do
    App.keys.join(' ')
  end
end
