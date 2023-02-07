class PostsController < ApplicationController
    def index
        @posts = Post.all
    end

    def new
        @post = Post.new
    end

    def create
        @post = Post.new(title: params[:post][:title], body: params[:post][:body])

        if @post.save
            flash[:message] = "Blog was successfully saved"
            redirect_to posts_path
        else
            render :new, status: :unprocessable_entity
        end
    end

    def show
        @post = Post.find(params[:id])
    end

    def edit
        @post = Post.find(params[:id])
    end

    def update
        @post = Post.find(params[:id])

        if @post.update(title: params[:post][:title], body: params[:post][:body])
            flash[:message] = "Blog was updated successfully! :D"
            redirect_to posts_path
        else
            render :edit, status: :unprocessable_entity
        end
    end

    def destroy
        @post = Post.find(params[:id])

        @post.destroy
        redirect_to posts_path
    end
end