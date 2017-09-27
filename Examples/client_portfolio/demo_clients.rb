#! /usr/bin/env ruby

require './client'
require './friend'

client1 = Client.new('Luke', 'Skywalker')
client1.add_contract(Date.today, '/path/to/pdf', 99)
client2 = Client.new('Han', 'Solo')
client2.add_contract(Date.today - 800, '/path/to/pdf', 89)
client3 = Client.new('Yoda', nil)
client3.add_contract(Date.today - 230, '/path/to/pdf', 19)
client4 = Friend.new('Jabba', 'the Hutt')
client4.discount_rate = 0.5
client4.add_contract(Date.today - 5, '/path/to/pdf', 99.9)
client5 = Client.new('Old Ben', 'Kenobi')
client5.add_contract(Date.today - 9999, '/path/to/pdf', 9.9)

DEMO_CLIENTS = [client1, client2, client3, client4, client5].freeze

clients_with_expired_contract = DEMO_CLIENTS.select do |client|
  client.last_contract.older_than_one_year?
end

puts "CLIENTI CON CONTRATTO SCADUTO"
puts "======="

clients_with_expired_contract.each do |client|
  puts "#{client} ha il contratto scaduto da #{client.last_contract.age.to_i - 365} giorni (firmato il #{client.last_contract.signed_on})"
end

puts ''
puts "TARIFFE ORARIE"
puts "=============="

DEMO_CLIENTS.each do |client|
  puts "[#{client.class}] #{client}: #{client.hourly_rate.round(2)} EUR/ora"
end
