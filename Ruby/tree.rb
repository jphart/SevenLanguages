class Tree

	attr_accessor :children, :node_name
		
	def initialize(input)
		@children = []
		
		if input.size == 1
			@node_name = input.keys.to_s
			children = input[node_name]			
		else
			children = input
		end		
			
		children.each do |key, value|			
				temp = Tree.new({key => value})
				temp.node_name = key
				@children.push(temp)
		end
	end

	
	def visit_all(&block)
		visit &block
		children.each { |c| c.visit_all &block }
	end
	
	def visit(&block)
		block.call self
	end
end
