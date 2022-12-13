require 'pry'

class Triangle
  # write code here
  def initialize(side1, side2, side3)
    @sides = [side1, side2, side3]
  end

  def kind

    if @sides.length != 3 || @sides.any?(&:negative?) || @sides.include?(0) ||@sides.sort[0] + @sides.sort[1] <= @sides.sort[2]
      raise TriangleError
    else
      if @sides.uniq.length == 1
        puts "#{@sides} equilateral"
        :equilateral
      elsif @sides.uniq.length == 2
        puts "#{@sides} isoceles"
        :isosceles
      else
        puts "#{@sides} scalene"
        :scalene
      end
    end
  end

  class TriangleError < StandardError
    def message
      "error message"
    end
  end

end
