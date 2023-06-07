# app/controllers/api/todos_controller.rb
class Api::TodosController < ApplicationController
  def index
    @todos = Todo.all
    render json: @todos
  end
end
