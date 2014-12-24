module Xpat
  module Model
    class Team
      # Class definition for teams
      include Mongoid::Document
      include Mongoid::Timestamps

      store_in collection: 'teams'

      field :abbr, type: String
      field :city, type: String
      field :name, type: String
      field :division, type: String
      field :color1, type: String
      field :color2, type: String
      field :color3, type: String

      class Entity < Grape::Entity
        expose :abbr, :city, :name, :division, :color1, :color2, :color3
      end

    end
  end
end
