require 'todo_overview/view_model'

module TodoOverview

  class Presenter

    def initialize(todos)
      @todos = todos
    end

    def build_view_model
      TodoOverview::ViewModel.new.tap do |view_model|
        view_model.add_button_text = 'Add Todo'
        view_model.todos = @todos.map do |todo|
          TodoOverview::ViewModel::TodoItem.new.tap do |t|
            t.title = todo.title
            t.striked = todo.completed?
            t.deletable = todo.deletable?
            t.completable = todo.completable?
          end
        end
      end
    end

  end

end
