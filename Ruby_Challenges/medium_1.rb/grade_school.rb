# Grade school
class School
  def initialize
    @school = Hash.new {|hash, key| hash[key] = []}
  end

  def add(name, grade)
    @school[grade] << name
  end

  def to_h
    list = @school.sort.to_h
    ordered_names = list.each do |key, value|
      value.sort!
    end
    ordered_names
  end

  def grade(num)
    @school[num].sort
  end
end
