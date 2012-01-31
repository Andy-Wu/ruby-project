class Railroad
  
  attr_reader :from, :to, :distance

  def initialize(from, to , distance)
    @from = from
    @to = to
    @distance = distance
  end

  def to_s
    "The railroad is from #{@from} to #{@to}, The distance between them is #{@distance}."
  end
end
