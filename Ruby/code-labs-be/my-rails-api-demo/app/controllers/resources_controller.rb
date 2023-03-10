class ResourcesController < ApplicationController

    # POST --  localhost:3000/resources
    def create
        resource = Resource.new(content: params[:content], link: params[:link])

        # define response
        if resource.save
            render json: resource, status: :created
        else
            render json: {errors: resource.errors}, status: :unprocessable_entity
        end
    end

    # GET --  localhost:3000/resources
    def index
      resources = Resource.all
      render json: resources, status: :ok
    end

    # GET --  localhost:3000/resources/:id
    def show
        resource = Resource.find(params[:id])
        render json:resource, status: :ok
    end

    # PATCH --  localhost:3000/resources/:id
    def update
        resource = Resource.find(params[:id])

        if resource.update(content: params[:content], link: params[:link])
            render json: resource, status: :ok
        else
            render json: {errors: resource.errors}, status: :unprocessable_entity
        end
    end

    def destroy
        resource = Resource.find(params[:id])
        resource.destroy
        render json: {message: "resource deleted"}, status: :ok
      end
end