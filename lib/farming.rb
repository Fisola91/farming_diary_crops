require_relative "corn"
require_relative "rice"

puts "\n\n Day One: Corn"
corn = Corn.new
corn.water!
puts "The corn crop produced #{corn.grains} grains"
corn_status = corn.ripe? ? "ripe" : "not ripe"
puts "The corn is #{corn_status}"


puts "\n\n Day Two: Rice"
rice = Rice.new
rice.water!
rice.transplant!
puts "The rice crop produced #{rice.grains} grains"
rice_status = rice.ripe? ? "ripe" : "not ripe"
puts "The corn is #{rice_status}"
