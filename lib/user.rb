require "pry"

class User
	attr_accessor :email, :age
	@@all_users = []

	def initialize(email_to_save="par défaut", age_user="to define")
		@email = email_to_save
		@age = age_user
		@@all_users << self
	end

	def self.all
		puts @@all_users
		return @@all_users
	end

	def self.find_by_email(e_mail)
		@@all_users.each do |each_user|
			if each_user.email == e_mail
				puts "Voici l'age du User trouvé : #{each_user.age}"
			else
				puts "Not found"
			end
		end
	end

end

binding.pry