require 'todo_item'

class TodoRepository

  def contains?(todo_item)
    Todo.exists?(title: todo_item.title)
  end

  def save(todo_item)
    todo = Todo.find_or_initialize_by(title: todo_item.title)
    todo.completed = todo_item.completed?
    todo.save!
  end

  def delete(todo_item)
    Todo.find_by!(title: todo_item.title).destroy
  end

  def find(todo_item)
    todo = Todo.find_by!(title: todo_item.title)
    map_to_domain_model(todo)
  end

  def all
    Todo.all.map do |todo|
      map_to_domain_model(todo)
    end
  end

  private

  def map_to_domain_model(todo)
    item = TodoItem.new(todo.title)
    if todo.completed?
      item.complete
    end
    item
  end


end
