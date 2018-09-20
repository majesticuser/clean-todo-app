require 'add_todo/interactor'

class TodosController < ApplicationController

  def index
    @todos = TodoRepository.new.all
  end

  def create
    AddTodo::Interactor.new(TodoRepository.new).execute(params[:title])
    redirect_to todos_path
  end

end
