class TodoRepositoryFake

  def initialize(todos)
    @todos = todos
  end

  def save(todo)
    @todos << todo
  end

  def delete(todo)
    @todos.delete(todo)
  end

  def find(todo)
    @todos.find {|todo| todo.equal?(todo)}
  end

  def contains?(todo)
    @todos.include?(todo)
  end

  def count
    @todos.size
  end

end
