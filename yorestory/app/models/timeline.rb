class Timeline < ActiveRecord::Base

belongs_to :user

has_many :years, through: :milestones

has_many :milestones, :foreign_key => 'year_name', :primary_key => 'year_name'


# def set_milestones(begin_date, end_date)

# Milestone.create({
#   year_id:
#   year_name:
#   title:
#   })


end
# include HTTParty

#     # def set_milestones(begin_date, end_date)

#     # before_create :year_event
#   def get_events!(:begin_date)

#    url = "http://api.wolframalpha.com/v2/query?input=events%20#{:begin_date}&appid=XXXX"
#     response = HTTParty.get(url)
#     event_url = response["queryresult"]["pod"][1]["subpod"]

#      # ^ This will return an array of hashes. Once I've got the array, I can probably strip out the plaintext from each of the hashes inside...that way I don't have to make a new api call for each hash's content.

#     #^ Ask Neel if the above will make API calls each time I search within the hash, or if once I've got it...I've got it, and can search throughout.

#     event_1 = event_url[0]["plaintext"]
#     event_2 = event_url[1]["plaintext"]
#     event_3 = event_url[2]["plaintext"]
#     event_4 = event_url[3]["plaintext"]
#     event_5 = event_url[4]["plaintext"]

#     if timeline

#     Year.create({
#       title: year_input
#       event_1: event_1
#       event_2: event_2
#       event_3: event_3
#       event_4: event_4
#       event_5: event_5
#       })

#   end

#     #^ This is an attempt to create an instance of a year based on the birthyear input, and save it to the database.


#     year_input.gsub!(/#{year_input}/, event_url)
#   end

#   private
#     def year_event
#       self.input_1 = get_photo!(self.input_1)
#       self.input_3 = get_photo!(self.input_3)
#       self.input_5 = get_photo!(self.input_5)
#     end
# end


  # def add_milestone(begin_date, end_date, year_title)
  #   #
  #   year = Year.find_by_title(year_title)

  #   # if milestone is found...
  #   if year
  #     # get this instance of recipe's own portions
  #     self.milestones << Milestone.create({
  #       title: title,
  #       year: year_title
  #       })
  #   else
  #     # shows this in server log
  #     puts "Failed to create milestone! No year with title #{year_title}"
  #     nil
  #   end
  # end

# range = end_date - begin_date

#   birth = begin_date += 1
#   1st = birth + 1
#   2nd = birth + 2
#   3rd = birth + 3
#   4th = birth + 4
#   5th = birth + 5
#   6th = birth + 6
#   7th = birth + 7
#   8th = birth + 8
#   9th = birth + 9
#   10th = birth + 10
#   11th = birth + 11
#   12th = birth + 12
#   13th = birth + 13
#   14th = birth + 14
#   15th = birth + 15
#   16th = birth + 16
#   17th = birth + 17
#   18th = birth + 18
#   19th = birth + 19
#   20th = birth + 20
#   21st = birth + 21
#   22nd = birth + 22
#   23rd = birth + 23
#   24th = birth + 24
#   25th = birth + 25
#   26th = birth + 26
#   27th = birth + 27
#   28th = birth + 28
#   29th = birth + 29
#   30th = birth + 30
#   31st = birth + 31
#   32nd = birth + 32
#   33rd = birth + 33
#   34th = birth + 34
#   35th = birth + 35
#   36th = birth + 36
#   37th = birth + 37
#   38th = birth + 38
#   39th = birth + 39
#   40th = birth + 40
#   50th = birth + 50
#   60th = birth + 60
#   70th = birth + 70
#   80th = birth + 80
#   90th = birth + 90
#   100th = birth + 100
#   last = end_date

# case

# when range <= 90
# marker_1 = birth
# marker_2 =2nd
# marker_3 = 5th
# marker_4 = 10th
# marker_5 = 13th
# marker_6 = 16th
# marker_7 = 18th
# marker_8 = 21st
# marker_9 = 30th
# marker_10 = 40th
# marker_11 = 50th
# marker_12 = 60th
# marker_13 = 70th
# marker_14 = 80th
# marker_15 = 90th
# marker_16 = last

# when range <= 80
# marker_1 = birth
# marker_2 = 1st
# marker_3 = 2nd
# marker_3 = 5th
# marker_4 = 10th
# marker_5 = 13th
# marker_6 = 16th
# marker_7 = 18th
# marker_8 = 21st
# marker_9 = 25th
# marker_10 = 30th
# marker_11 = 40th
# marker_12 = 50th
# marker_13 = 60th
# marker_14 = 70th
# marker_15 = 80th
# marker_16 = 90th
# etc...

# end


# marker_4
# marker_5
# marker_6
# marker_7
# marker_8
# marker_9
# marker_10
# marker_11
# marker_12
# marker_13
# marker_14
# marker_15
# marker_16
