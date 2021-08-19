require 'tty-spinner'

spinner = TTY::Spinner.new
spinner = TTY::Spinner.new("[:spinner] [*]Loading Rube-Saved-PCAP[*]...", format: :pulse_2)
spinner.auto_spin 
sleep(5) 
spinner.stop("Done!")