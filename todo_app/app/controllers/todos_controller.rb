# frozen_string_literal: true

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
    puts '-------------------------'
    todo = Todo.new(todo_params)
    puts '-------@todo------------'
    p todo
    todo.save
    redirect_to "/todos/#{@todo.id}"
  end

  def edit
    @todo = Todo.find(params[:id])
  end

  def update
    @todo = Todo.find(params[:id])
    @todo.title = todo_params[:title]
    @todo.description = todo_params[:description]
    @todo.save
    redirect_to "/todos/#{@todo.id}"
  end

  private

  def todo_params
    params.expect(todo: %i[title description])
  end
end
