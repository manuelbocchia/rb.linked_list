
class Node
    attr_accessor :value, :next_node
    
    def initialize(val = nil)
        @value = val
        self.next_node
    end

    def value(val = nil)
        @value
    end

    def next_node(pointer = nil)
        @next_node = pointer
    end
end

class LinkedList < Node

    attr_reader :linked_items

    def initialize
        @linked_items = []
    end

    def append(value)
        item = Node.new(value)
        @linked_items[-1].next_node(item) unless linked_items.length == 0
        @linked_items << item
    end

    def prepend(value)
        item = Node.new(value)
        item.next_node(@linked_items[0])
        @linked_items.unshift(item)
    end

    def size
        @linked_items.length
    end

    def head
        @linked_items[0]
    end

    def tail
        @linked_items[-1]
    end

    def at(index)
        @linked_items[index]
    end

    def pop
        @linked_items.pop
    end

    def contains?(value)
        if @linked_items.any? {|item| item.value.include?(value)} 
            true 
        else 
            false
        end
    end

    def find(value)
        if self.contains?(value) 
            @linked_items.find {|item| item.value = value}
        else
            false
        end
    end

    def to_s
        string_arr = @linked_items.map {|object| "( #{object.value} )"}
        string_arr << "nil"
        string_arr.join(" -> ")
    end

    def insert_at

    end

    def remove_at
     
    end
end


items = LinkedList.new

items.append("hello")
items.prepend("yes")
puts items.linked_items
puts items.to_s

items.append("hellow")
items.append("hellot")
items.append("hellor")
items.append("hellox")
puts items.at(3)

puts items.contains?("yes")

puts items.find("yes")

puts items.to_s

    #append(value) adds a new node containing value to the end of the list
    #prepend(value) adds a new node containing value to the start of the list
    #size returns the total number of nodes in the list
    #head returns the first node in the list
    #tail returns the last node in the list
    #at(index) returns the node at the given index
    #pop removes the last element from the list
    #contains?(value) returns true if the passed in value is in the list and otherwise returns false.
    #find(value) returns the index of the node containing value, or nil if not found.
    #to_s represent your LinkedList objects as strings, so you can print them out and preview them in the console. The format should be: ( value ) -> ( value ) -> ( value ) -> nil

    #insert_at(value, index) that inserts a new node with the provided value at the given index
    #remove_at(index) that removes the node at the given index.
