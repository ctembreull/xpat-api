module Xpat
  # Default runnable for Rack
  class App
    def initialize; end

    def self.instance
      @instance ||= Rack::Builder.new(debug: true) do
        run Xpat::App.new
      end.to_app
    end

    def call(env)
      Xpat::API.call(env)
    end
  end
end
