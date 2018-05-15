module HomeHelper

  def first_element index
    arr = [1]
    1000.times.each do |t|
      arr.push(t) if arr.last + 3 == t
    end
    arr.include?(index)
  end
end
