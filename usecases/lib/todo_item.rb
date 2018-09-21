class TodoItem

  def initialize(title)
    @title = title
    @completed = false
  end

  def title
    @title
  end

  def completed?
    @completed
  end

  def complete
    @completed = true
  end

  def deletable?
    !@completed
  end

  def completable?
    !@completed
  end

  def ==(todo_item)
    self.title == todo_item.title
  end

  def to_s
    @title
  end

end
