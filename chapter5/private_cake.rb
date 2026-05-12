#Baker and other baking domain classes
class Cake
  def initialize(batter)
    @batter = batter
    @baked = true
  end
end

class Egg
end

class Flour
end

class Baker
  def baker_cake
    @batter = []
    pour_flour
    add_egg
    stir_batter
    puts "cake ready"
    return Cake.new(@batter)
  end

  def add_egg
    @batter.push(Egg.new)
    puts "Egg ADDED"
  end

  def stir_batter
    puts "stir batter"
  end

  def pour_flour
    @batter.push(Flour.new)
    puts "pour_flour"
  end

  private :pour_flour, :add_egg, :stir_batter
end

b = Baker.new
b.baker_cake



# b.add_egg  #private method 'add_egg' called for an instance of Baker (NoMethodError)


