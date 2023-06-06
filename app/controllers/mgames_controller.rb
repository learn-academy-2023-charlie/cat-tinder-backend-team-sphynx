class MgamesController < ApplicationController
        def index
            mgames = Mgame.all
            render json: mgames
        end
      
        def create
        # Create a new cat
            mgame = Mgame.create(mgame_params)
            render json: mgame
        end
      
        def update
        end
      
        def destroy
        end

        private
        def mgame_params
          params.require(:mgame).permit(:name, :game_type, :file_size, :summary, :img,)
        end
end