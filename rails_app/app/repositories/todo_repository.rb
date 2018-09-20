class TodoRepository

  def contains?(todo)
    Todo.exists?(title: todo)
  end

  def save(todo)
    Todo.create(title: todo)
  end

  def all
    Todo.all
  end

end
