# Circular Buffer
class CircularBuffer
  class BufferEmptyException < Exception; end
  class BufferFullException < Exception; end

  attr_reader :buffer

  def initialize(buffer_size)
    @buffer_size = buffer_size
    @buffer = [nil] * @buffer_size
    @read = 0
    @write = 0
  end

  def write(value)
    raise BufferFullException if buffer_full?
    value = "1" if value == nil
    @buffer[@write] = value
    @write = increment(@write)
  end

  def write!(value)
    return if value == nil
    read if buffer_full?
    write(value)
  end

  def read
    raise BufferEmptyException if buffer_empty?
    read_value = @buffer[@read]
    @buffer[@read] = nil
    @read = increment(@read)
    read_value
  end

  def increment(index)
    return 0 if index >= (@buffer_size - 1)
    index + 1
  end

  def clear
    initialize(@buffer_size)
  end

  def buffer_full?
    @buffer.count(nil) == 0
  end

  def buffer_empty?
    @buffer.count(nil) == @buffer_size
  end
end
