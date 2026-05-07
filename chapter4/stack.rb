#stack behavior module
module StackLike

    # create stack array if not already created
    def stack
        @stack ||= []
    end

    #push item into stack
    def add_to_stack(item)
        stack.push(item)
    end

    #remove last item
    def take_from_stack
        stack.pop
    end
end

#Browser history class
class BrowserHistory
    #include stack behavior
    include StackLike
end

history = BrowserHistory.new

history.add_to_stack("Google")
history.add_to_stack("YouTube")
history.add_to_stack("GitHub")

#removing last opened tab
puts history.take_from_stack

