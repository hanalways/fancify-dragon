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
    puts "
     ____ __
     { --.\  |          
      '-._\\ | (\___   ...so thirsty!
          `\\|{/ ^ _) 
      .'^^^^^^^  /` ||____ 
      //\   ) ,  /   |  MTN | 
,  _.'/  `\<-- \<     |  DEW |
`^^^`     ^^   ^^   -------".colorize(:green)
    process_time
  end

  def eat
    @hungriness_level = 10
    puts ColorizedString["#{@name} ate like 6 bags of marshmallows (yo...)!"].white.on_light_magenta
    puts "
    ____ __
    { --.\  |          
     '-._\\ | (\___   ...so toasty!!
         `\\|{/ ^ _)  %%%%~~~
     .'^^^^^^^  /`  ~%%%~~~~  
     //\   ) ,  /  ( / / / / / / /)
,  _.'/  `\<-- \<   | marshmallows |
`^^^`     ^^   ^^ (..............)      ".colorize(:light_magenta)

    process_time
  end

  def sleep
    @is_asleep = true
    puts ColorizedString["#{@name} curled up and fell asleep"].white.on_blue
    puts "
      .'^^^^^^^^^^^^^.   
      //\  /  /   __/)|  so tired z Z z...  
,  _.'/ w   w   (_^ /  
`^^^`   `- ^^   ^^ ".colorize(:blue)

    process_time
    process_time
    process_time
  end

  def play
    puts ColorizedString["#{@name} takes out their yo-yo and walks a dog AND THEN JUMPS IN THE AIR AND FLIES"].white.on_green
    puts "
 ____    ____
{ --.\  {   /        
 '-._ \\   / (\___   
      `\\ / {/ ^ _)  
     .'^^^^^^^  /`  ~ so fly!  
     //\   ) ,  /
,  _.'/ `\<    ~` 
`^^^`".colorize(:green)
    process_time
  end

  def exercise
    unless @thirst_level < 2 && @hungriness_level < 2
      puts ColorizedString["#{@name} goes for a brisk jog."].white.on_red
      puts "
____    ____               ____    ____
{ --.\  {   /  ~so fast~   {  --.\  {   /       
 '-._ \\   / (\___           '-._ \\   / (\___   
       `\\ / {/ ^ _)             `\\ / {/ ^ _)
    .'^^^^^^^  /`            .'^^^^^^^  /`    
      //\   ) \ /            /|    //\  )  \ \

,  _.'/ `\<  >/           \ `._./ `\ '.  \ > 
`^^^`".colorize(:red)
      @hungriness_level -= 2
      @thirst_level -= 2
      process_time
    end

    if @thirst_level < 2
      puts "#{@name} is too thirsty to exercise. Give him some Mountain Dew!"
    end
    if @hungriness_level < 2
      puts "#{@name} is too hangry to exercise. Feed him some marshmallows!"
    end
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

    if @thirst_level >= 7 && @thirst_level < 11
      puts "Give that dragon some Mountain Dew!"
    elsif @thirst_level >= 5 && @thirst_level < 7
      puts ColorizedString["Uh oh. That dragon is \"thirsty thirsty \" ... you need to give him something to drink now!"].black.on_yellow
    elsif @thirst_level > 2 && @thirst_level < 5
      puts ColorizedString["He is so thirsty he is dying!"].white.on_red.blink
    end

    if @hungriness_level > 0
      @hungriness_level -= 1
    else
      if @is_asleep
        @is_asleep = false
        puts "#{@name} woke up!"
      end
      puts ColorizedString["#{@name} is hangry! They EAT YOU!"].white.on_red.blink
      exit
    end
  end
end

def main
  jirihamy = BabyDragon.new("Jirihamy")

  loop do
    puts "What would you like Jirihamy to do?
    1. Eat
    2. Drink
    3. Sleep
    4. Play
    5. Exercise
    6. Fly away (EXIT)"
    input = gets.chomp

    case input
    when "1"
      puts jirihamy.eat
    when "2"
      puts jirihamy.drink
    when "3"
      puts jirihamy.sleep
    when "4"
      puts jirihamy.play
    when "5"
      puts jirihamy.exercise
    when "6"
      puts "
      ____    ____
     { --.\  {   /        
      '-._ \\   / (\___   
           `\\ / {/ ^ _)  
          .'^^^^^^^  /`  ~ bye - bye ~ !  
          //\   ) ,  /
     ,  _.'/ `\<    ~` 
     `^^^`"
      exit
    end
  end
end

main
