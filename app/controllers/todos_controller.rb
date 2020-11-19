class TodosController < ApplicationController
  before_action :set_todo, only: [:show, :update, :destroy]

  # GET /todos
  def index
    render json: Todo.all
  end

  # GET /todos/1
  def show
    render json: @todo.to_json(:methods => :created_ago)
  end

  # POST /todos
  def create
    @todo = Todo.new(todo_params)

    if @todo.save
      render json: @todo, status: :created
    else
      render json: @todo.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /todos/1
  def update
    if @todo.update(todo_params)
      render json: @todo
    else
      render json: @todo.errors, status: :unprocessable_entity
    end
  end

  # DELETE /todos/1
  def destroy
    if @todo.destroy
      render json: {}, status: :ok
    else
      render json: 'No se pudo borrar el todo', status: :unprocessable_entity
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_todo
      @todo = Todo.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def todo_params
      params.require(:todo).permit(:title, :description)
    end
end
