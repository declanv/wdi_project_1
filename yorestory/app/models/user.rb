class User < ActiveRecord::Base

 # mixes in BCrypt modules, etc to existing model
  include BCrypt

  # validation for unique email
  # validates(:email, { :uniqueness => true})
  validates :name, uniqueness: true

  has_many :timelines

  # setter
  def password= password_input
    # passes the password_input through BCrypt::Password and hashes it
    new_password_hash = Password.create(password_input)
    # new password hash written to database
    self.hashed_password = new_password_hash
    self.hashed_password
  end

  # getter
  def password
    Password.new(self.hashed_password)
  end

  # checks a password
  def check_password(password_input)
    # does the password going in, match the DB pass?
    password_input == self.password
  end

  #
  def self.authenticated?(name_input, password_input)
    # binding.pry
    user = User.find_by_name(name_input)
    if user && user.password == password_input
      puts "Authenticated!"
      return user
    else
      puts "Did not authenticate!"
      return nil
    end
    puts "Did not find email"
    return nil
  end

end
