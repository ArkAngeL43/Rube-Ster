require 'colorize'
require 'tty-spinner'

a = gets 

finished = []
ips = []
range = 1..245

range.each do |i| 
  ip_address = "127.0.0.#{i}"
  Thread.new do
    puts " ----------------------------------- ".red
    puts " Rube-Ster is scanning local network ".red
    puts " ------------------------------------".red
    spinner = TTY::Spinner.new
    spinner = TTY::Spinner.new("[:spinner] Rube-rabitt is scanning...", format: :pulse_2)
    spinner.auto_spin 
    sleep(5) 
    spinner.stop("Done!") #.split(/\n+/)[2].split(/,\s*/)
    `ping -q -c1 -W1 -b #{ip_address}`[1].to_i > 0 and ips << ip_address
    finished << i
  end
end

until finished.count == range.count
  print "\r%#{(finished.count/range.count.to_f * 100).round}"
  sleep 0.1
end
puts " Rubster has finished scan "

puts "-------IP addr's------"
print "\r          \r"
puts ips.sort do |a, b|
  a.split(?.)[-1].to_i <=> b.split(?.)[-1].to_i
end