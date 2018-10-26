def get_first_name_of_season_winner(data, season)
  data[season].each do |attribute|
    if attribute["status"].downcase == "winner"
      return attribute["name"].split[0]
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |season, person|
    person.each do |attribute|
      if attribute["occupation"] == occupation
        return attribute["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  counter = 0
    data.each do |season, person|
      person.each do |attribute|
        if attribute["hometown"] == hometown
          counter += 1
        end
      end
    end
  counter
end

def get_occupation(data, hometown)
  data.each do |season, person|
    person.find do |attribute|
      if attribute["hometown"] == hometown
        return attribute["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  age = 0
  people = 0
  data[season].each do |attribute|
    age += (attribute["age"]).to_i
    people += 1
  end
  (age/people.to_f).round(0)
end
