# lignes très pratiques qui appellent les gems du Gemfile. On verra plus tard comment s'en servir ;) - ça évite juste les "require" partout
require 'bundler'
Bundler.require

# lignes qui appellent les fichiers lib/user.rb et lib/event.rb
# comme ça, tu peux faire User.new dans ce fichier d'application. Top.
require_relative 'lib/user'
require_relative 'lib/event'


# Maintenant c'est open bar pour tester ton application. Tous les fichiers importants sont chargés
# Tu peux faire User.new, Event.new, binding.pry, User.all, etc.

adrien = User.new("hello", 45)
alexis = User.new("hi", 41)
antoine = User.new("hijack")
alison = User.new

my_event = Event.new("2019-10-14 15:40", 30, "standup quotidien", ["truc@machin.com", "bidule@chose.fr"])

my_event.is_past?
my_event.is_future?
my_event.is_soon?

binding.pry