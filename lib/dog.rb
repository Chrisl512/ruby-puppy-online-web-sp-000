require "pry"

class Dog
  attr_accessor :name

  @@all = []

  def initialize(name)
    @@all << self
    @name = name
  end

  def self.all
    @@all.each do |dog_each|
      binding.pry
      puts dog_each.name

    end
  end

  def self.clear_all
    @@all.clear
  end

end
