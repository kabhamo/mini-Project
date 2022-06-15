class Api::V1::TasksController < ApplicationController
	before_action :get_person
	before_action :get_task, only: [:show, :update, :destroy]

	def index
	   @tasks = @person.tasks
	   render json: @tasks
    end 

	def show
		@task = @person.tasks.find(params[:id])
	    render json: @task
    end 

    def show
    	@task= Task.all
		@task = @task.find(params[:id])
	    render json: @task
    end 

    def create
		@tasks = @person.tasks.create!(
		    status: params[:status],
		    description: params[:description]
		)
		render json: @tasks
    end 

    def update
       @tasks = @person.tasks.update(
		    status: params[:status],
		    description: params[:description]
		)
        render json: @tasks
    end 

    def destroy
	    @tasks = Task.all 
	    @tasks = Task.find(params[:id])
	    @tasks.destroy
	    render json: @tasks
    end

    def action_123
    	@task= Task.all
		@task = @task.find(params[:id])
	    render json: @task
    end 


     private
	  def get_person
	    @person = Person.find(params[:person_id])
	  end

	   def get_task
    	@task = @person.tasks.find(params[:id]) if @person
  end
end
