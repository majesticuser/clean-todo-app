require 'todo_item'

module DeleteTodo

  class Interactor

    def initialize(todo_repository)
      @todo_repository = todo_repository
    end

    def execute(title)
      item = @todo_repository.find(TodoItem.new(title))
      if item.completed?
        return
      end
      @todo_repository.delete(TodoItem.new(title))
    end

  end

end
