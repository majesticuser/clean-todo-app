module DeleteTodo

  class Interactor

    def initialize(todo_repository)
      @todo_repository = todo_repository
    end

    def execute(item)
      @todo_repository.delete(item)
    end

  end

end
