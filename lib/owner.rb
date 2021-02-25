class Owner
  attr_reader :name,
              :occupation,
              :cars

  def initialize(name, occupation)
    @name = name
    @occupation = occupation
    @cars = []
  end

  def buy(car_info)
      make = car_info.split[2]
      model = car_info.split[3]
      color = car_info.split[1]
      year = car_info.split[0]
      new_car = {:description => color + " " + " " + make + " " + model,
      :year => year}
      @cars << Car.new(new_car)
    end
end
