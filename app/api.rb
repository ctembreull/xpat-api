module Xpat
  # Default mounting point for API methods
  class API < Grape::API
    format :json

    before do; end
    after do; end
    helpers do; end

    mount ::Xpat::Ping

  end
end
