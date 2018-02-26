class Home < Sinatra::Base
    get '/' do  # Calls a GET request from the root directory then prints "Hello Sinatra!"
        erb :home
    end
end