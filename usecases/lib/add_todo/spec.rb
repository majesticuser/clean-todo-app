require 'add_todo/interactor'
require 'test_helpers/todo_repository_fake'

module AddTodo

  describe 'Add todo' do

    let(:todo_repository) { TodoRepositoryFake.new([]) }
    let(:interactor) { AddTodo::Interactor.new(todo_repository) }

    it 'adds item to todo list' do
      interactor.execute('item 1')
      
      expect(todo_repository.count()).to eq(1)
    end

    it 'does not add the item if it is already on the todo list' do
      interactor.execute('item 1')
      interactor.execute('item 1')
      
      expect(todo_repository.count()).to eq(1)
    end

    it 'does not add blank todos' do
      interactor.execute('  ')
      expect(todo_repository.count()).to eq(0)
    end

    it 'does not allow todos longer than 100 chars' do
      interactor.execute('c' * 101)
      expect(todo_repository.count()).to eq(0)
    end
    
    it 'allows todos shorter than 101 chars' do
      interactor.execute('c' * 100)
      expect(todo_repository.count()).to eq(1)
    end

  end

end
