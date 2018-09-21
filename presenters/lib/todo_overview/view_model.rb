module TodoOverview

  class ViewModel

    class TodoItem
      attr_accessor :title, :striked, :deletable, :completable
      alias_method :striked?, :striked
      alias_method :deletable?, :deletable
      alias_method :completable?, :completable
    end

    attr_accessor :todos, :add_button_text

  end

end
