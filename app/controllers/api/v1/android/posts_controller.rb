class API::V1::Android::PostsController < ApplicationController
    include ApplicationHelper
    before_action :set_post, only: %i[show] 
    skip_before_action :doorkeeper_authorize!, :raise => false
   
    
    def index
      @posts = Post.all
      respond_to do |format|
        format.json {render json: @posts}
        format.any {redirect_to root_url}
      end
      
      #@posts = Post.find_by_sql("SELECT DISTINCT Post_titles.name Post_title, Supervisor.post_name Supervisor, Posts.post_name Post FROM Posts, Post_titles INNER JOIN Posts AS Supervisor")
    end

    def show
        render json: @post
    end
  
    private

    def set_post
        @post = Post.find(params[:id])
    end
  
    def post_params
      params.require(:post)
    end
  
  end
  