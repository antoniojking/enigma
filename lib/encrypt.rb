# require 'date'
# require './lib/offset'
# require './lib/key'
# require './lib/algorithim'
require './lib/enigma'


handle = File.open(ARGV[0], "r")
incoming_text = handle.read
handle.close

message = incoming_text.downcase
enigma = Enigma.new
encrypted = enigma.encrypt(message, '82648', '240818')

writer = File.open(ARGV[1], "w")
writer.write(encrypted)
writer.close

puts "Created '#{ARGV[1]}' with the key 82648 and date 240818"
