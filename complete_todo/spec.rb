require 'complete_todo/interactor'
require 'test_helpers/todo_repository_fake'
require 'todo_item'

module CompleteTodo

  describe 'Complete todo' do

    let(:todo_repository) { TodoRepositoryFake.new([TodoItem.new('item 1')]) }
    let(:interactor) { CompleteTodo::Interactor.new(todo_repository) }

    it 'completes item of todo list' do
      item = todo_repository.find('item 1')
      expect(item.completed?).to eq(false)

      interactor.execute('item 1')
      
      item = todo_repository.find('item 1')
      expect(item.completed?).to eq(true)
    end

  end

end
