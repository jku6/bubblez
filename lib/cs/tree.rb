class Tree
	attr_accessor :root, :parsed


	def initialize
		@root = nil
	end

	def insert(word)
		if @root.nil?
			@root = Node.new(word) 
		else
      insert_node(@root, word)
    end
  end

    def insert_node(node, value)
      if (value <= node.data) && (node.prv.nil?)
        node.prv = Node.new(value)
      elsif (value > node.data) && (node.nxt.nil?)
        node.nxt = Node.new(value)
      elsif (value <= node.data) && (node.prv)
        insert_node(node.prv, value)
      elsif (value > node.data) && (node.nxt)
        insert_node(node.nxt, value)
    	end
    end

    def sort
      @parsed = []
      start_sort(@root)
      
    end


    def start_sort(node)
      
      start_sort(node.prv) if node.prv
      @parsed << node.data
      start_sort(node.nxt) if node.nxt
    end
end
