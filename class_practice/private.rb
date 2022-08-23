require 'pry'

class Coffee

    attr_reader :name
    attr_accessor :price, :ingredients

    @@all = []

    def initialize(name,price = 2.50)
      @name = name
      @price = price
      @ingredients = []

      @@all << self

    end

    def self.all 
        @@all
    end

    def add_ingredient(ingredient)
       
        self.ingredients << ingredient
    end
    def total
        binding.pry
        sum = (self.ingredients.length * 0.5)
    end

      private

     def add_tax
        self.price += self.price * 0.03
     end
end

coffee1 = Coffee.new("berry")
coffee2 = Coffee.new("straw")
binding.pry