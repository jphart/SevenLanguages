module ActsAsCsv

	def self.included(base)
		base.extend ClassMethods
	end
	
	module ClassMethods
		def acts_as_csv
			include InstanceMethods
		end
	end
	
	module InstanceMethods
		
		attr_accessor :headers, :csv_contents
		
		def read
			@csv_contents = []
			filename = self.class.to_s.downcase + '.txt'
			file = File.new(filename)
			@headers = file.gets.chomp.split(', ')
			

			file.each do |row|
				
				fields = row.chomp.split(', ')

				@csv_contents << CsvRow.new(@headers, fields) 
				

			end
		end
		
		def initialize
			read
		end
		
		include Enumerable
  		def each &block
    			@csv_contents.each{|row| block.call(row)}
  		end
		
	end
end


class RubyCsv

	include ActsAsCsv
	acts_as_csv
end

class CsvRow
  attr :fields, :headers

  def method_missing id, *args
	idString = id.to_s	
	foundIndex = @headers.index(idString)
	@fields[foundIndex]
  end

  def initialize(headers, fields)
  	@headers = headers
    	@fields = fields
  end
  
  def to_s
  	return @fields.join(',') 
  end
end


