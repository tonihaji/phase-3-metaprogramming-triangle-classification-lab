class Triangle
  attr_reader :a, :b, :c
  
  def initialize(a, b, c)
    @a, @b, @c = a, b, c
    raise TriangleError if invalid?
  end

  def kind
    if a == b && b == c
      :equilateral
    elsif a == b || b == c || a == c
      :isosceles
    else
      :scalene
    end
  end

  private

  def invalid?
    a <= 0 || b <= 0 || c <= 0 || a + b <= c || a + c <= b || b + c <= a
  end

  class TriangleError < StandardError; end
end
