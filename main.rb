# Exception handling

# the block of exception handling is within begin...end statements
# retry
#   --> This statement will force program to go through all the rescue block again.
#       If not cought then may end in infinite loops.
# ensure
#   --> This block always executed no matter exception occured or not.
# else
#   --> This block executes if no exception is raised.

# DEMO_1
class DemoException
    def my_run
        #starting for exception handling
        begin
            raise "Error occoured!"
            p "After raised exception"
        rescue 
            p "rescue block" 
        else
            p "The else block"
        ensure
            p "ensure block"
        #retry

        end
    end
end

d = DemoException.new
d.my_run
# o/p -> rescue block  ensure block

# DEMO 2
# keep the exception flow from specialized to generalized. 
# The first matched exception gets rescued.

class MyErr < StandardError ; end

class DemoError
    def my_foo
        begin
            raise MyErr

            rescue TypeError
                p "MyErr:TypeError"
            rescue StandardError
                p "MyErr:StandardError"
            rescue => e
                p "MyErr resue: #{e.inspect}"
        end
    end
end

de = DemoError.new
de.my_foo
