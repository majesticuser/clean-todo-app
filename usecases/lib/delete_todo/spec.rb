require 'delete_todo/interactor'
require 'test_helpers/todo_repository_fake'

module DeleteTodo

  describe 'Delete todo' do

    let(:todo_repository) { TodoRepositoryFake.new([]) }
    let(:interactor) { DeleteTodo::Interactor.new(todo_repository) }

    it 'deletes item from todo list' do
      todo_repository.save(TodoItem.new('item 1'))

      interactor.execute('item 1')
      
      expect(todo_repository.count()).to eq(0)
    end

    it 'is not possible if todo is already completed' do
      item = TodoItem.new('item 1')
      item.complete
      todo_repository.save(item)

      interactor.execute('item 1')
      
      expect(todo_repository.count()).to eq(1)
    end

  end

end
