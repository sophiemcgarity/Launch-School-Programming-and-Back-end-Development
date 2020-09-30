class TodoList
  attr_accessor :title, :todos

  def initialize(title)
    @title = title
    @todos = []
  end

  def <<(item)
    add_todo(item)
  end
  alias_method :add, :<<

  def done?
    trues = []
    todos.select do |item|
      trues << item if item.done?
    end

    true if trues.size == todos.size
  end

  def size
    todos.size
  end

  def first
    todos.first
  end

  def last
    todos.last
  end

  def to_a
    todos.to_a
  end

  def item_at(index)
    todos.fetch(index)
  end

  def mark_done_at(index)
   item_at(index).done!
  end

  def mark_undone_at(index)
    item_at(index).undone!
  end

  def done!
    todos.each { |item| item.done! }
  end

  def shift
    todos.shift
  end

  def pop
    todos.pop
  end

  def remove_at(index)
    index <= todos.size ? todos.delete_at(index) : (raise IndexError)
  end

  def to_s
    puts "---- #{title} ----"
    todos.each { |todo| puts todo }
  end

  private

  def add_todo(item)
    todos << item ? item.class.to_s == 'Todo' : (raise TypeError.new("Can only add Todo objects"))
  end
end

class Todo
  DONE_MARKER = 'X'
  UNDONE_MARKER = ' '

  attr_accessor :title, :description, :done

  def initialize(title, description='')
    @title = title
    @description = description
    @done = false
  end

  def done!
    self.done = true
  end

  def done?
    done
  end

  def undone!
    self.done = false
  end

  def to_s
    "[#{done? ? DONE_MARKER : UNDONE_MARKER}] #{title}"
  end

  def ==(otherTodo)
    title == otherTodo.title &&
      description == otherTodo.description &&
      done == otherTodo.done
  end
end

todo1 = Todo.new("Buy milk")
todo2 = Todo.new("Clean room")
todo3 = Todo.new("Go to gym")
list = TodoList.new("Today's Todos")

list.add(todo1)                 # adds todo1 to end of list, returns list
list.add(todo2)                 # adds todo2 to end of list, returns list
list << (todo3)

list.to_s
