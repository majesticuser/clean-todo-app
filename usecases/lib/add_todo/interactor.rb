module AddTodo

  class Interactor

    def initialize(todo_repository)
      @todo_repository = todo_repository
    end

    def execute(item)
      unless @todo_repository.contains?(item)
        @todo_repository.save(item)
      end
    end

  end

end
