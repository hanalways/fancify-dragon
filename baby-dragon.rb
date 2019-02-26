class BabyDragon

  def initialize(name)
    @name = name

    @hungriness_level = 10
    @is_asleep = false
  end

  def eat
    @hungriness_level = 10
    puts "#{@name} ate like 6 bags of marshmallows (yo...)"

    process_time
  end

  def sleep
    @is_asleep = true
    puts "#{@name} curled up and fell asleep"

    process_time
    process_time
    process_time
  end

  def play
    puts "#{@name} takes out their yo-yo and walks a dog AND THEN JUMPS IN THE AIR AND FLIES"

    process_time
  end

  def process_time
    puts "The passage of time moves on..."
    if @hungriness_level > 0
      @hungriness_level -= 1
    else
      if @is_asleep
        @is_asleep = false
        puts "#{@name} woke up!"
      end
      puts "#{@name} is hangry! They EAT YOU!"
      exit
    end
  end

end

dees_dragon = BabyDragon.new("Robert")

dees_dragon.eat

dees_dragon.sleep

100.times do |i|
  puts "This is the #{i}th time playing:"
  dees_dragon.play
end
