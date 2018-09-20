require 'todo_item'

module AddTodo

  class Interactor

    def initialize(todo_repository)
      @todo_repository = todo_repository
    end

    def execute(title)
      normalized_title = title.strip
      if normalized_title.empty? ||
         normalized_title.length > 100
        return
      end
      item = TodoItem.new(normalized_title)
      unless @todo_repository.contains?(item)
        @todo_repository.save(item)
      end
    end

  end

end
