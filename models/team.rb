module Xpat
  module Model
    class Team
      # Class definition for teams
      include Mongoid::Document
      include Mongoid::Timestamps

      field :abbr, type: String
      field :city, type: String
      field :name, type: String
      field :division, type: String

    end
  end
end
