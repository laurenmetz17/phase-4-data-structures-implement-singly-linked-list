require_relative './node'

class LinkedList

    attr_accessor :head

    def initialize
        head = nil
    end
    
    def prepend(node)
        if @head == nil
            @head = node
        else 
            node.next_node = @head
            @head = node 
        end
    end

    def append(node) 
        if @head == nil
            @head = node
        else 
            last_node = head
            while last_node.next_node
                last_node = last_node.next_node
            end
            last_node.next_node = node
        end
    end

    def delete_head
        if @head
            if @head.next_node
                @head = @head.next_node 
            else 
                @head = nil
            end
        end
    end

    def delete_tail
        if @head 
            last_node = @head
            if last_node.next_node
                while last_node.next_node.next_node
                    last_node = last_node.next_node
                end
                last_node.next_node = nil
            else 
                @head = nil
            end
        end
    end

    def add_after(index, node)
        count = 0 
        last_node = @head
        while count < index
            if last_node.next_node
                last_node = last_node.next_node
                count =+ 1
            else
                last_node.next_node = node
                count = index
            end
        end
        last_node.next_node = node
    end

    def search(value)
        last_node = @head
        while last_node.data != value 
            last_node = last_node.next_node
        end
        return last_node
    end








    

end
