class HomeController < ApplicationController
    #protect_from_forgery unless: -> { request.format.json? }
    def index
        @posts=Movie.all
    end
    
    def new
        newpost = Movie.new
        
        newpost.title = params[:title]
        newpost.content = params[:content]
        newpost.save
        redirect_to '/home/index'
    end
    
    def edit
        @editpost=Movie.find(params[:post_id])
    end
    
    def update
        updatepost=Movie.find(params[:post_id])
        updatepost.title=params[:title]
        updatepost.content=params[:content]
        updatepost.save
        redirect_to '/home/index'
    end
    
    def delete
        deletepost=Movie.find(params[:post_id])
        deletepost.destroy
        redirect_to '/home/index'
    end
    
end
