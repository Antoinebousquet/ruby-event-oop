require "pry"

class Event
	attr_accessor :start_date, :event_duration, :title, :mails_invits

	def initialize(date_event, duration_event, event_title, emails_invit)
		@start_date = Time.parse(date_event)
		puts @start_date
		@event_duration = duration_event
		puts @event_duration
		@title = event_title
		puts @title
		@mails_invits = emails_invit
		puts @mails_invits
	end

	def postpone_24h
		@start_date = @start_date + 24*60*60
		puts "Finalement l'event démarrera le #{@start_date}"
	end

	def end_date
		@start_date = @start_date + event_duration
		puts "L'event se terminera à #{@start_date}"
	end

	def is_past?
		if Time.now > @start_date
			true
		else
			false
		end
	end

	def is_future?
		!is_past?
	end

	def is_soon?
		if Time.now + 30*60 > @start_date && is_future? == true
			true
		else
			false
		end
	end

	def to_s
		puts "Titre : #{title}"
		puts "Date de début : #{start_date}"
		puts "Durée : #{event_duration} minutes"
		puts "Invités : #{mails_invits}"

	end

end