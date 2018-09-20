module CompleteTodo

  class Interactor

    def initialize(todo_repository)
      @todo_repository = todo_repository
    end

    def execute(item)
      todo_item = @todo_repository.find(item)
      todo_item.complete
      @todo_repository.save(todo_item)
    end

  end

end
