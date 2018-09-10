module Api
    module V1
        class MoviesController < ApplicationController
            def index
                movies = Movie.order('id ASC');
                render json: {status:'SUCCESS', message:'Loaded Movies', data:movies},status: :ok
            end
            
        end
    end
end