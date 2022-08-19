#class variables and class methods
#

    
# Building Class Methods and Using Class Variables
 # @@album_count = 0 
  #class variable -is accessible to the entire class

#class variable is typicall used to store  information regarding the class as a whole
#class methods - enact behaviors that belong to the whole class,not just to individual instances of that class.
# A class method is a method that is called on the class itself, not on the instances of that class.

#Defining a Class Method
#self keyword refer to the entire class itself, ni=ot to an instance of the class
# def self.class_method_name
#     some code
#   end

              
#  def release_date=(date)  # -method
 #  @release_date = date  #- instance variable -is responsible for holding information regarding an instance
# end
  
    # def release_date
    #   @release_date
    # end
    
    require 'pry'
  
    class Album
        GENRES = ["Hip-Hop", "Pop", "Jazz"]  #CONSTANT CLASS VARIABLE
        @@album_count = 0
        
        def initialize(genre)
            if GENRES.include?(genre)
            @@album_count += 1

            end

        end

    def self.count
        @@album_count
    end
  end

  #album is the instance variable that represnt the first release date of first album n class <b>Album</b>
  album = Album.new
  album = Album.new
  album = Album.new
#   album.release_date = 2002
#  album.release_date
  binding.pry

  #Class Constants
#have alot in common with class variable
#STORES DATA THAT CANNOT CHANGE WHILE OTHER CLASS VARIABLES STORE DATA THAT CHANGE

# Are defined in the body of the class
# Can be accessed from within a class method
# Can be accessed from within an instance method
#it is defined with a capital letter
#---> i.e ROlES = ["admin","moderator","contributor"]
# Scope-wise, class constants can also be accessed from outside of the class using this syntax:
#Album::GENRES
# => ["Hip-Hop", "Pop", "Jazz"]