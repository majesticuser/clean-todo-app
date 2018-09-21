require 'add_todo/interactor'
require 'delete_todo/interactor'
require 'complete_todo/interactor'
require 'list_todos/interactor'
require 'todo_overview/presenter'

class TodosController < ApplicationController

  def index
    todos = ListTodos::Interactor.new(repository).execute
    @view_model = TodoOverview::Presenter.new(todos).build_view_model
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
