require 'todo_item'

module CompleteTodo

  class Interactor

    def initialize(todo_repository)
      @todo_repository = todo_repository
    end

    def execute(title)
      todo_item = @todo_repository.find(TodoItem.new(title))
      todo_item.complete
      @todo_repository.save(todo_item)
    end

  end

end
