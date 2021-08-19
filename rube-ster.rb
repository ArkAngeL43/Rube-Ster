require 'colorize' 
require 'tty-spinner'

puts " please wait! "
system('sleep 4')
system('clear')
############load the main script
spinner = TTY::Spinner.new
spinner = TTY::Spinner.new("[:spinner] Loading Rube-rabbit...", format: :pulse_2)

spinner.auto_spin # Automatic animation with default interval

sleep(5) # Perform task

spinner.stop("Done!") # Stop animation
system("clear")
system("python3 banner-1.py")
puts "  -----------------------------------"
puts " | [00] Port scan a Host             |"
puts " | [1]  Port Scan a Website          |"
puts " | [2]  Port Scan your local net(MAC)|"
puts " | [3]  Arp Scan the current net     |"
puts " | [4]  Run the setup (needed)       |"
puts " | [5]  READ-ME.MD (colorized)       |"
puts " | [6]  Goodbye and leave/exit       |"
puts "  -----------------------------------"

puts " choose one :> "
input = gets.chomp.to_i
case input
when 1
    system("clear")
    system("ruby scrape.rb")
when 2
    system("python3 mac-arp.py")
when 3
    system("python3 arp.py")
when 4
    system(' chmod +x ./ install.sh && ./install.sh ') # install module  in case installs fail 
    system('clear')
    spinners = TTY::Spinner::Multi.new("[:spinner] top")

    sp1 = spinners.register "[:spinner] installing [*] "
    # or sp1 = ::TTY::Spinner.new("[:spinner] one")
    # spinners.register sp1
    sp2 = spinners.register "[:spinner] installing [*] "
    sp3 = spinners.register "[:spinner] installing [*] "
    sp4 = spinners.register "[:spinner] installing [*] "

    sp1.auto_spin
    sp2.auto_spin
    sp3.auto_spin
    sp4.auto_spin

    sleep(2) # Perform work

    sp1.success 
    sp2.success 
    sp3.success 
    sp4.success
    puts ' Running Script again!'.blue
    system(' ruby main.rb ')
when 5
    system("python3 readme.py ")
when 00
    system("clear")
    puts "-------------threading (1000 is going to be used)------------"
    puts "+                                                            +"
    puts "-----------------HOST and or IPA V4-6------------------------"
    puts "Host/IPA ==> "
    ip = gets 
    system("clear")
    system(" cd port-scan && cd src && cargo run -- -j 1000 #{ip}")
when 6
    puts " Cleaning up...."
    system("sleep 3")
    system("clear")
    spinner = TTY::Spinner.new
    spinner = TTY::Spinner.new("[:spinner] Leaving Rube-rabbit...", format: :pulse_2)
    spinner.auto_spin
    sleep(5)
    spinner.stop("Done!")
    system(' clear ')
    puts " goodbye , see you next time [!] "
    puts " thanks for stopping by ! :D Rube-Rabbit thanks you "
    sleep(3)
    system("clear")
    system("exit")
end


