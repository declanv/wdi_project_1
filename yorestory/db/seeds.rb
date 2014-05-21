# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


#Make years:
# Milestone.delete_all
# Timeline.delete_all
# Year.delete_all

(1900..1910).each do |n|
#API Key: #{WOLFRAM_ALPHA_CLIENT_ID}
   url = "http://api.wolframalpha.com/v2/query?input=events%20#{n}&appid=XXXX"
    response = HTTParty.get(url)
    event_url = response["queryresult"]["pod"][1]["subpod"]

     # ^ This will return an array of hashes. Once I've got the array, I can probably strip out the plaintext from each of the hashes inside...that way I don't have to make a new api call for each hash's content.

    #^ Ask Neel if the above will make API calls each time I search within the hash, or if once I've got it...I've got it, and can search throughout.

    event_1 = event_url[0]["plaintext"]
    event_2 = event_url[1]["plaintext"]
    event_3 = event_url[2]["plaintext"]
    event_4 = event_url[3]["plaintext"]
    event_5 = event_url[4]["plaintext"]




    Year.create({
      title: "#{n}",
      headline: "War",
      weather: "Rain",
      event_1: event_1,
      event_2: event_2,
      event_3: event_3,
      event_4: event_4,
      event_5: event_5,
      year_name: "#{n}"
      })

    Milestone.create({
    year_name: n,
    title: "birth"

    })


end





