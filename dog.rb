require 'pry'

class Dog
   attr_accessor :breed

   @@dogs = []

  def initialize(breed)
    @breed = breed

    @@dogs << self
  end

  def self.dogs
    @@dogs
  end

  def self.print_all_dogs
    self.dogs.each { |dog| puts dog.breed} 
  
 end

end


 dog = Dog.new("maria")
 dog1 = Dog.new("maeli")



binding.pry