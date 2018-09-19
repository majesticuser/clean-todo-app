require 'delete_todo/interactor'
require 'test_helpers/todo_repository_fake'

module DeleteTodo

  describe 'Delete todo' do

    let(:todo_repository) { TodoRepositoryFake.new(['item 1']) }
    let(:interactor) { DeleteTodo::Interactor.new(todo_repository) }

    it 'deletes item from todo list' do
      interactor.execute('item 1')
      
      expect(todo_repository.count()).to eq(0)
    end

  end

end
