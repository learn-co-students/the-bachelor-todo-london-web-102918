def get_first_name_of_season_winner(data, season)
  winner = ''
  data.each do |season_num, season_info|
    if season_num == season
      season_info.each do |contestant_data|
        winner = data[season_num][0]["name"]
      end
    end
  end
  winner.split.first
end

def get_contestant_name(data, occupation)
  name_of_contestant = ''
  data.each do |season_num, season_info|
    season_info.each do |contestant_data|
      if occupation == contestant_data["occupation"]
        name_of_contestant = contestant_data["name"]
      end
    end
  end
  name_of_contestant
end

def count_contestants_by_hometown(data, hometown)
  hometown_matches = 0
  data.each do |season_num, season_info|
    season_info.each do |contestant_data|
      if contestant_data["hometown"] == hometown
        hometown_matches +=1
      end
    end
  end
  hometown_matches
end

def get_occupation(data, hometown)
  occupation = ''
  data.each do |season_num, season_info|
    season_info.each do |contestant_data|
      if hometown == contestant_data["hometown"]
        occupation = contestant_data["occupation"]
        break
      end
    end
  end
  occupation
end

def get_average_age_for_season(data, season)
  average_age = 0
  total_age = 0
  contestants = 0
  data.each do |season_num, season_info|
    if season_num == season
      season_info.each do |contestant_data|
        age = contestant_data["age"].to_f
        total_age += age
        contestants += 1
      end
      average_age = (total_age/contestants).round
    end
  end
  average_age
end
