class ApplicationController < Sinatra::Base

  get '/console' do
    binding.pry
  end
end