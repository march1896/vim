# color prompt doesn't work in TUI mode
# set prompt \001\033[1;36m\002(gdb) \001\033[0m\002

# So that one can read structures efficiently
set print pretty on

# history across invocations
set history save on
set history filename ~/.gdb_history

# define a hexdump command.
# Note we use printf and sed here to output \r characters needed in -tui mode.
# This is easier than messing with `shell stty onlcr` as that could
# impact the terminal after exiting a non -tui gdb session.
define hd
dump binary memory /tmp/dump.bin $arg0 $arg0+$arg1
shell printf '\r\n'; od -Ax -tx1z -v /tmp/dump.bin | sed 's/$/\r/'
end

# boost pretty printers
# Option 1: # https://github.com/mbalabin/Boost-Pretty-Printer
python
import sys
sys.path.insert(1, '/home/jint/gits/Boost-Pretty-Printer')
import boost
boost.register_printers(boost_version=(1,57,0))
end

# Option 2: https://github.com/lekv/boost-gdb-printers
#python
#import sys
#import gdb
#print("Setting up Boost pretty printers")
#sys.path.insert(0, '/usr/local/share/boost-gdb-printers')
#import boost.v1_57 as boost
#boost.register_pretty_printers(gdb)
#end
