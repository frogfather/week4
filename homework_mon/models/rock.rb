class Rockgame
attr_reader :combat

def initialize(weapon)
@weapon = weapon
@combat = nil
end

def play
  random = rand(1..4)
    case random 
      when 1 
      @combat ="rock"
      when 2 
      @combat = "paper"
      when 3 
      @combat = "scissors"
      when 4 
      @combat = "bomb"
    end
  #1 = rock, 2 = paper, 3 = scissors, 4 = bomb

#compare weapon and combat
result = "win"
return  "draw" if @weapon == @combat
return "win" if @weapon == "bomb"
binding.pry
return  "lose" if @combat == "bomb"

if @weapon == "rock"
  result = "lose" unless @combat == "scissors"

elsif @weapon == "paper"
  result = "lose" unless @combat == "rock"


elsif @weapon == "scissors"
  result = "lose" unless @combat == "paper"
else result = "lose"
return result
end

end



end