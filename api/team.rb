module Xpat
  module Resource
    class Team < Grape::API

      namespace :teams do
        get do
          present Xpat::Model::Team.all
        end
      end

      namespace :team do

        params do
          requires :abbr, type: String
          requires :city, type: String
          requires :name, type: String
          requires :division, type: String
        end
        post do
          team = Xpat::Model::Team.create(
            abbr: Sanitize.fragment(params[:abbr]),
            city: Sanitize.fragment(params[:city]),
            name: Sanitize.fragment(params[:name]),
            division: Sanitize.fragment(params[:division])
          )

          if team.save!
            present team
          end
        end # POST /team

        route_param :project_id do
          params do
            requires :project_id, type: String
          end # params

          get do
            team = Xpat::Model::Team.find_by(abbr: params[:project_id])
            present team
          end # GET /team/:project_id

          put do
          end # PUT /team/:project_id

          delete do
          end # DELETE /team/:project_id
        end # route_param :project_id
      end # namespace :team
    end # class Team
  end # module Resource
end # module Xpat
