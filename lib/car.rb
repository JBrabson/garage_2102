class Car
  attr_reader :make,
              :model,
              :color,
              :year,
              :age

  def initialize(details)
    @make = details[:description].split[1]
    @model = details[:description].split[2]
    @color = details[:description].split[0]
    @year = details[:year]
    @age = Time.now.year - (details[:year]).to_i
  end

end
