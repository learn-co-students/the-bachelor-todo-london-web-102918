require 'pry'

def get_first_name_of_season_winner(data, season)
  winner_first_name = ""
  data.each do |season_num, season_data|
    if season_num == season
      season_data.each do |hash_key|
        if hash_key["status"] == "Winner"
          winner_first_name = hash_key["name"].split.first
          #binding.pry
        end
      end
    end
  end
  winner_first_name
end

def get_contestant_name(data, occupation)
  name_from_occupation = ""
  data.each do |season_num, season_data|
    season_data.each do |hash_key|
      if hash_key["occupation"] == occupation
        name_from_occupation = hash_key["name"]
      end
    end
  end
  name_from_occupation
end

def count_contestants_by_hometown(data, hometown)
  count = 0
  data.each do |season_num, season_data|
    season_data.each do |hash_key|
      if hash_key["hometown"] == hometown
        count += 1
      end
    end
  end
  count
end

def get_occupation(data, hometown)
  occupation_from_hometown = ""
  data.each do |season_num, season_data|
    season_data.each do |hash_key|
      if hash_key["hometown"] == hometown
        occupation_from_hometown = hash_key["occupation"]
      break
      end
    end
  end
  occupation_from_hometown
end

=begin
      {
         "name":"Lauren Marchetti",
         "age":"27",
         "hometown":"Cranston, Rhode Island",
         "occupation":"Journalist",
         "status":"Eliminated in episode 1"
      },
      {
         "name":"Paige Vigil",
         "age":"25",
         "hometown":"Cranston, Rhode Island",
         "occupation":"Jumbotron Operator",
         "status":"Eliminated in episode 1"
      }
=end

def get_average_age_for_season(data, season)
  average_age = 0
  total_age = 0
  nb_of_contestants = 0
  
  data.each do |season_num, season_data|
      if season_num == season
      season_data.each do |hash_key|
        age = hash_key["age"].to_f
        total_age += age
        nb_of_contestants += 1
      end
      average_age = (total_age/nb_of_contestants).round
    end
  end
  average_age
end
