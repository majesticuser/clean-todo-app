require 'todo_item'

module ListTodos

  class Interactor

    def initialize(todo_repository)
      @todo_repository = todo_repository
    end

    def execute
      @todo_repository.all
    end

  end

end
