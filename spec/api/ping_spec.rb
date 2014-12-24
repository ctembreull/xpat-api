require 'spec_helper'

describe Xpat::API do

  def app
    Xpat::API
  end

  describe Xpat::Ping do
    it 'goes ping' do
      get '/ping'
      expect(last_response.status).to eq(200)
    end
  end
end
