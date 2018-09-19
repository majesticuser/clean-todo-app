class TodoItem

  def initialize(title)
    @title = title
    @completed = false
  end

  def completed?
    @completed
  end

  def complete
    @completed = true
  end

  def to_s
    @title
  end

end
