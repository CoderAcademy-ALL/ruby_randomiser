class Group
    
    attr_accessor :name
    attr_reader :names_array
    
    def initialize(name)
        @name = name
        @names_array = ["Alice", "Bob", "Charlie", "Danny", "Ellen", "Fiona", "Helmut"]
    end

    def randomise_order
        @names_array.shuffle
    end
    
    def add_name(input) 
        @names_array.push(input)
    end
    
    def output_randomised_group 
        randomise_order.each_with_index do |name, index|
            puts "#{index + 1}.  #{name}"
        end

    end 

end