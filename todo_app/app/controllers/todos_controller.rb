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
    todo = Todo.new(todo_params)
    todo.save
    redirect_to "/todos/#{todo.id}"
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

  def destroy
    p '---------------destroy-------------'
    todo = Todo.find(params[:id])
    p '-------------1---------------'
    todo.destroy
    p '--------------2-----------'
    redirect_to todos_path
    p '------------3------------'
  end

  private

  def todo_params
    params.expect(todo: %i[title description])
  end
end
