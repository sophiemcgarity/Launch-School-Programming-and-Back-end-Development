require 'simplecov'
SimpleCov.start

require 'minitest/autorun'
require "minitest/reporters"
Minitest::Reporters.use!

require_relative 'todo_list'

class TodoListTest < MiniTest::Test

  def setup
    @todo1 = Todo.new("Buy milk")
    @todo2 = Todo.new("Clean room")
    @todo3 = Todo.new("Go to gym")
    @todos = [@todo1, @todo2, @todo3]

    @list = TodoList.new("Today's Todos")
    @list.add(@todo1)
    @list.add(@todo2)
    @list.add(@todo3)
  end

  def test_to_a
    assert_equal(@todos, @list.to_a)
  end
  
  def test_size
    assert_equal(3, @list.size)
  end
  
  def test_first
    assert_equal(@todo1, @list.first)
  end
  
  def test_last
    assert_equal(@todo3, @list.last)
  end
  
  def test_shift
    shifted = @list.shift
    assert_equal(@todo1, shifted)
    assert_equal([@todo2, @todo3], @list.to_a)
  end
  
  def test_pop
    popped = @list.pop
    assert_equal(@todo3, popped)
    assert_equal([@todo1, @todo2], @list.to_a)
  end
  
  def test_done?
    assert_equal(false, @list.done?)
  end
  
  def test_object_type
    assert_raises(TypeError) { @list.add('Item') }
    assert_raises(TypeError) { @list.add(1) }
  end
  
  def test_shovel_add_method
    new_todo = Todo.new('Go running')
    @list << new_todo
    @todos << new_todo
      
    assert_equal(@todos, @list.to_a)
  end
  
  def test_add_shovel_alias
    new_todo = Todo.new('Go running')
    @list.add(new_todo)
    @todos << new_todo
      
    assert_equal(@todos, @list.to_a)
  end
  
  def test_item_at
    assert_raises(IndexError) { @list.item_at(4) }
    assert_equal(@todo1, @list.item_at(0))
    assert_equal(@todo2, @list.item_at(1))
  end
  
  def test_mark_done_at
    assert_raises(IndexError) { @list.mark_done_at(5) }
    @list.mark_done_at(1)
    assert_equal(false, @todo1.done?)
    assert_equal(true, @todo2.done?)
    assert_equal(false, @todo3.done?)
  end
  
  def test_mark_undone_at
    assert_raises(IndexError) { @list.mark_undone_at(5) }
    @list.done!
    @list.mark_undone_at(0)
    assert_equal(false, @todo1.done?)
    assert_equal(true, @todo2.done?)
    assert_equal(true, @todo3.done?)
  end
  
  def test_done!
    @list.done!
    assert_equal(true, @todo1.done?)
    assert_equal(true, @todo2.done?)
    assert_equal(true, @todo3.done?)
    assert_equal(true, @list.done?)
  end
  
  def test_remove_at
    assert_raises(IndexError) { @list.remove_at(4)}
    @list.remove_at(0)
    assert_equal([@todo2, @todo3], @list.to_a)
  end
  
  def test_to_s
    output = <<~OUTPUT.chomp
    ---- Today's Todos ----
    [ ] Buy milk
    [ ] Clean room
    [ ] Go to gym
    OUTPUT
  
    assert_equal(output, @list.to_s)
  end
  
  def test_to_s_with_marked_todo
    output = <<~OUTPUT.chomp
    ---- Today's Todos ----
    [ ] Buy milk
    [X] Clean room
    [ ] Go to gym
    OUTPUT
    
    @list.mark_done_at(1)
    assert_equal(output, @list.to_s)
  end
  
  def test_to_s_all_todos_complete
    output = <<~OUTPUT.chomp
    ---- Today's Todos ----
    [X] Buy milk
    [X] Clean room
    [X] Go to gym
    OUTPUT
    
    @list.done!
    assert_equal(output, @list.to_s)
  end
  
  def test_each
    output = []
    @list.each { |todo| output << todo }
    assert_equal(output, @todos)
  end
  
  def test_each_return
    assert_equal(@list, @list.each { |_| nil })
  end
  
  def test_select
    @todo1.done!
    list = TodoList.new(@list.title)
    list.add(@todo1)
    
    assert_equal(list.title, @list.title)
    assert_equal(list.to_s, @list.select{ |todo| todo.done?}.to_s )
  end
  
  def test_find_by_title
    assert_equal("Buy milk", @list.find_by_title("Buy milk").title)
  end
  
  def test_all_done
    @todo1.done!
    assert_equal(1, @list.all_done.size)
  end
  
  def test_all_not_done
    assert_equal(3, @list.all_not_done.size)
  end
  
  def test_mark_done
    assert_equal(@todo1.done!, @list.mark_done("Buy milk"))
  end
  
  def test_mark_all_done
    @list.mark_all_done
    assert_equal(true, @todo1.done)
    assert_equal(true, @todo2.done)
    assert_equal(true, @todo3.done)
  end
  
  def test_mark_all_undone
    @list.mark_all_undone
    assert_equal(false, @todo1.done)
    assert_equal(false, @todo2.done)
    assert_equal(false, @todo3.done)
  end
end
