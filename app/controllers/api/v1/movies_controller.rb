module Api
    module V1
        class MoviesController < ApplicationController
            def index
                movies = Movie.order('id ASC');
                render json: {status:'SUCCESS', message:'Loaded Movies', data:movies},status: :ok
            end
            
            def show
                movie = Movie.find(params[:id]);
                render json: {status:'SUCCESS', message:'Loaded Movie', data:movie},status: :ok
            end

            def create
                movie = Movie.new(movie_params);
                if movie.save
                    render json: {status:'SUCCESS', message:'Saved Movie', data:movie},status: :ok
                else
                    render json: {status:'ERROR', message:'Movie not saved', data:movie.erros},status: :unprocessable_entity
                end
            end

            def destroy
                movie = Movie.find(params[:id]);
                movie.destroy
                render json: {status:'SUCCESS', message:'Deleted Movie', data:movie},status: :ok
            end

            def update
                movie = Movie.find(params[:id]);
                if movie.update_attributes(movie_params)
                    render json: {status:'SUCCESS', message:'Updated Movie', data:movie},status: :ok
                else
                    render json: {status:'ERROR', message:'Movie not Updated', data:movie.erros},status: :unprocessable_entity
                end
            end

            private
            def movie_params
                params.permit(:title, :content)
            end
            
        end
    end
end