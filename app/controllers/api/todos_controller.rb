# app/controllers/api/todos_controller.rb
class Api::TodosController < ApplicationController
  def index
    @todos = Todo.all
    render json: @todos
  end

  def show
  @todo = Todo.find_by(id: params[:id])
  if @todo
    render json: @todo
  else
    render json: { error: 'Todo not found' }, status: :not_found
  end
  end


  def destroy
    @todo = Todo.find(params[:id])
    @todo.destroy
    head :no_content
  end
end
