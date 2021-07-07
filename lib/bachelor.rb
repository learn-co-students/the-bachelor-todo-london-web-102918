def get_first_name_of_season_winner(data, season)
  name_str =''
    data.each do |season_key,season_data|
      if season_key == season
        season_data.each do |hash_elem|
          if hash_elem["status"] == "Winner"
             name_str = hash_elem["name"].split[0]
          end
        end
      end
    end
    return name_str
end

def get_contestant_name(data, occupation)
  name_str = ''
  data.each do |season_key,season_data|
    season_data.each do |hash_elem|
      if hash_elem["occupation"] == occupation
        name_str = hash_elem["name"]
      end
    end
  end
  return name_str
end

def count_contestants_by_hometown(data, hometown)
  name_str = ''
  count = 0
  data.each do |season_key, season_data|
    season_data.each do |hash_elem|
      if hash_elem["hometown"] == hometown
        count += 1
      end
    end
  end
  return count
end

def get_occupation(data, hometown)
  name_str = ''
  data.each do |season_key,season_data|
    season_data.each do |hash_elem|
      if hash_elem["hometown"] == hometown
            name_str = hash_elem["occupation"]
      end
    end
  end
  return name_str
end

def get_average_age_for_season(data, season)
  no = []
  suma = no.sum
  average = no.sum / (no.length - 1)
  data.each do |season_key, season_data|
      if season_key["season"] == "season"
            season_data.each do |hash_elem|
             no.push(hash_elem["age"].to_i)
      end
    end
  end
  return average
end

