require 'grape'
module DoIt
  class API < Grape::API
    format :json
    resources :motivation do
      get do
        f = File.read("./do_it.txt")
        { do_it: f }
      end
    end
  end
end
