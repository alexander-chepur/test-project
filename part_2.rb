# Stubs
class WrongNumberOfPlayersError < StandardError ; end
class NoSuchStrategyError < StandardError ; end

# (a)
def rps_game_winner(game)
  raise WrongNumberOfPlayersError unless game.length == 2
  
  w = Hash["R" => "S", "S" => "P", "P" => "R"]
  game.each {|p| raise NoSuchStrategyError unless w.has_key? p[1] }
  if w[game[1][1]] == game[0][1] then return game[1] else return game[0] end
end

# Tests
#l = [ [ "Armando", "P" ], [ "Dave", "P" ] ]
#print rps_game_winner(l)

# (b)

#def rps_tournament_winner(tournament)
#  tournament.each {|round|
#    round.each {|match| match.replace rps_game_winner(match)}
#    round.replace rps_game_winner(round)
#  }
#  rps_game_winner(tournament)
#end

def rps_tournament_winner(tournament)
  if tournament[0][0].is_a? String
    rps_game_winner tournament
  else
    rps_game_winner([rps_tournament_winner(tournament[0]), rps_tournament_winner(tournament[1])])
  end
end

# Tests
#print "single game \n"
#l = [ [ "Armando", "P" ], [ "Dave", "S" ] ]
#print rps_tournament_winner(l)
#print "\n---\n"
#
#print "8 game \n"
#l = 
#[
#  [
#    [ ["Armando", "P"], ["Dave", "S"] ],
#    [ ["Richard", "R"],  ["Michael", "S"] ],
#  ],
#  [ 
#    [ ["Allen", "S"], ["Omer", "P"] ],
#    [ ["David E.", "R"], ["Richard X.", "P"] ]
#  ]
#]
#print rps_tournament_winner(l)
#print "\n---\n"
#
#print "16 game \n"
#l =
#[ 
#  [
#    [
#      [ ["Armando", "P"], ["Dave", "S"] ],
#      [ ["Richard Q.", "R"],  ["Michael", "S"] ],
#    ],
#    [ 
#      [ ["Allen", "S"], ["Omer", "P"] ],
#      [ ["David E.", "R"], ["Richard X.", "P"] ]
#    ]
#  ],
#  [
#    [
#      [ ["Armando", "P"], ["Dave", "S"] ],
#      [ ["Richard", "R"],  ["Michael", "S"] ],
#    ],
#    [ 
#      [ ["Allen", "S"], ["Omer", "P"] ],
#      [ ["David E.", "R"], ["Richard X.", "P"] ]
#    ]
#  ]
#]
#print rps_tournament_winner(l)
#print "\n---\n"