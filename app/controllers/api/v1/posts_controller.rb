class Api::V1::PostsController < ApplicationController
    def index
        posts = Post.all
        render json: posts, status: 200
    end

    def create
        post = Post.create(post_params)
        if post.save
            render json: post, status: 200
        else
            render json: {error: "Could not create post"}
        end
    end

    def show
        post = Post.find_by(search_params)
        if post
            render json: post, status: 200
        else    
            render json: {error: "Product not found"}
        end
    end

    private
    def search_params
        params.permit(:id) 
    end
    def post_params
        params.require(:post).permit(:sender_id, :content)
    end
end
