class Api::V1::PeopleController < ApplicationController
	def index
	   @people = Person.all 
	   render json: @people
    end 

    def show
	    @people = Person.find(params[:id])
	    render json: @people
    end 

    def create
		@people = Person.create(
		    name: params[:name],
		    email: params[:email],
		    fpl: params[:fpl]
		)
		render json: @people
    end 

    def update
        @people = Person.find(params[:id])
        @people.update(
            name: params[:name],
		    email: params[:email],
		    fpl: params[:fpl]
        )
        render json: @people
    end 

    def destroy
	    @people = Person.all 
	    @people = Person.find(params[:id])
	    @people.destroy
	    render json: @people
    end 
end
