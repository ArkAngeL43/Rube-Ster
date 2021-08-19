require 'tty-spinner'

spinners = TTY::Spinner::Multi.new("[:spinner] top")

sp1 = spinners.register "[:spinner] one"
# or sp1 = ::TTY::Spinner.new("[:spinner] one")
# spinners.register sp1
sp2 = spinners.register "[:spinner] two"

sp1.auto_spin
sp2.auto_spin

sleep(2) # Perform work

sp1.success
sp2.success