require 'add_todo/interactor'
require 'delete_todo/interactor'
require 'complete_todo/interactor'

class TodosController < ApplicationController

  def index
    @todos = repository.all
  end

  def create
    AddTodo::Interactor.new(repository).execute(params[:title])
    redirect_to todos_path
  end

  def destroy
    DeleteTodo::Interactor.new(repository).execute(params[:title])
    redirect_to todos_path
  end

  def complete
    CompleteTodo::Interactor.new(repository).execute(params[:title])
    redirect_to todos_path
  end

  private

  def repository
    TodoRepository.new
  end

end
