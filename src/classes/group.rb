class Group
    
    attr_accessor :name
    attr_reader :names_array
    
    def initialize(name, file_path)
        @name = name
        @file_path = file_path
        @names_array = self.path_to_array
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

    def pick_random_name 
        @names_array.sample
    end

    def save
        File.open(@file_path, "w+") do |f| 
                f.puts(@names_array)
        end 
    end 

    private 

    def path_to_array
        begin
            array = File.readlines(@file_path).map(&:strip)
        rescue
            puts "Invalid path! Creating file for you"
            pp @file_path
            File.open(@file_path, "w") do |file| 
                file.write("")
            end
            array = []
        end 
        return array
    end 
    

end