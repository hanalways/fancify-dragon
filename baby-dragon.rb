require "colorize"
require "colorized_string"

class BabyDragon
  def initialize(name)
    @name = name

    @hungriness_level = 10
    @is_asleep = false
    @thirst_level = 10
  end

  def drink
    @thirst_level = 10
    puts ColorizedString["WOW! #{@name} just drank 3 liters of Mountain Dew!"].green.on_white.blink
    puts "mountain"
    puts "
     ____ __
     { --.\  |          
      '-._\\ | (\___   ...so thirsty!
          `\\|{/ ^ _) 
      .'^^^^^^^  /` ||____ 
      //\   ) ,  /   |  MTN | 
,  _.'/  `\<-- \<     |  DEW |
`^^^`     ^^   ^^   -------"
    process_time
  end

  def eat
    @hungriness_level = 10
    puts "#{@name} ate like 6 bags of marshmallows (yo...)"
    puts "
    ____ __
    { --.\  |          
     '-._\\ | (\___   ...so toasty!!
         `\\|{/ ^ _)  %%%%~~~
     .'^^^^^^^  /`  ~%%%~~~~  
     //\   ) ,  /  ( / / / / / / /)
,  _.'/  `\<-- \<   | marshmallows |
`^^^`     ^^   ^^ (..............)      "

    process_time
  end

  def sleep
    @is_asleep = true
    puts "#{@name} curled up and fell asleep"
    puts "
      .'^^^^^^^^^^^^^.   
      //\  /  /   __/)|  so tired z Z z...  
,  _.'/ w   w   (_^ /  
`^^^`   `- ^^   ^^ "

    process_time
    process_time
    process_time
  end

  def play
    puts "#{@name} takes out their yo-yo and walks a dog AND THEN JUMPS IN THE AIR AND FLIES"
    puts "
 ____    ____
{ --.\  {   /        
 '-._ \\   / (\___   
      `\\ / {/ ^ _)  
     .'^^^^^^^  /`  ~ so fly!  
     //\   ) ,  /
,  _.'/ `\<    ~` 
`^^^`"
    process_time
  end

  def process_time
    puts "The passage of time moves on..."
    if @thirst_level > 0
      @thirst_level -= 1
    else
      if @is_asleep
        @is_asleep = false
        puts "#{@name} woke up!"
      end
      puts "#{@name} ate you to drink your blood!"
    end

    puts "#{@thirst_level}"

    if @thirst_level >= 7 && @thirst_level < 11
      puts "Give that dragon some Mountain Dew!"
    elsif @thirst_level >= 5 && @thirst_level < 7
      puts "Uh oh. That dragon is \"thirsty thirsty \" ... you need to give him something to drink now!"
    elsif @thirst_level > 2 && @thirst_level < 5
      puts "He is so thirsty he is dying!"
    end

    if @hungriness_level > 0
      @hungriness_level -= 1
    else
      if @is_asleep
        @is_asleep = false
        puts "#{@name} woke up!"
      end
      puts "#{@name} is hangry and thirsty! They EAT YOU!"
      exit
    end
  end
end

dees_dragon = BabyDragon.new("Robert")
