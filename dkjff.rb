class Cars
  def initialize(color, tire_brand, model, year)
    @color = color
    @tire_brand = tire_brand
    @model = model
    @year = year
    puts "I love my #{model}, its a #{year} and it has #{tire_brand}. It is a also #{color}."
  end


  def sound
    puts "vroom! vroom!"
  end
end

amazing_allison = Cars.new("pink", "Firestone", "bmw","1940")
amazing_allison.sound