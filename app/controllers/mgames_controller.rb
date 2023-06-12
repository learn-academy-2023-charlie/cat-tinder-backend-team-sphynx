class MgamesController < ApplicationController

        def index
            mgames = Mgame.all
            render json: mgames
        end


        def create
            mgame = Mgame.create(mgame_params)
            if mgame.valid?
              render json: mgame
             else
               render json: mgame.errors, status: 422
            end
        end
      
        def update
          mgame = Mgame.find(params[:id])
          if mgame.update(mgame_params)
            render json: mgame
          else
            render json: mgame.errors, status: :unprocessable_entity
          end
        end
      
        def destroy
          mgames = Mgame.all
          mgame = Mgame.find(params[:id])
          if mgame.destroy
            render json: mgame
          else
          render json: mgame.errors, status: 422
          end
        end

        private

        def mgame_params
          params.require(:mgame).permit(:name, :game_type, :file_size, :summary, :img)
        end
end