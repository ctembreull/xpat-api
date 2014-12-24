module Xpat
  module Resource
    class Team < Grape::API

      namespace :teams do
        get do
          present Xpat::Model::Team.all
        end
      end

      namespace :team do
        route_param :project_id do
          params do
            requires :project_id, type: String
          end

          get do
            team = Xpat::Model::Team.find_by(abbr: params[:project_id])
            present team
          end
        end
      end

    end
  end
end
