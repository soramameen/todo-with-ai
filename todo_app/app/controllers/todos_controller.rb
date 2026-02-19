class TodosController < ApplicationController
  def index
    @todos = Todo.all
  end

  def show
    @todo = Todo.find(params[:id])
  end

  def new
    @todo = Todo.new
  end

  def create
    puts "-------------------------"
    todo = Todo.new(todo_params)
    puts "-------@todo------------"
    p todo
    todo.save
    redirect_to todo
  end

  private
    def todo_params
      params.expect(todo: [:title, :description])
    end
end
