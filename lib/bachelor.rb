require 'pry'

def get_first_name_of_season_winner(data, season)
  # code here
  da_winner = data[season].select do |contestant|
    contestant["status"] == "Winner"
  end
  da_winner[0]["name"].split(" ")[0]
end

def get_season(data)

end


def get_contestant_name(data, occupation)
  # code here
  all_conts = data.map{|season, arr_cont| arr_cont}.flatten
  who = all_conts.select{|cont| cont["occupation"] == occupation}[0]["name"]
end

def count_contestants_by_hometown(data, hometown)
  # code here
  all_conts = data.map{|season, arr_cont| arr_cont}.flatten
  all_conts.count do |cont|
    cont["hometown"] == hometown
  end
end

def get_occupation(data, hometown)
  # code here
  all_conts = data.map{|season, arr_cont| arr_cont}.flatten
  who = all_conts.find{|cont| cont["hometown"] == hometown}["occupation"]
end

def get_average_age_for_season(data, season)
  # code here
  ages = data[season].collect{ |cont| cont["age"]}
  avg_age = ages.collect{ |age| age.to_f}.sum / ages.size
  avg_age.round
  # binding.pry
end
