require_relative '../classes/group.rb'

describe 'Group' do
    
    before(:each) do 
        @test_group = Group.new("Test Group")
    end 

    it "should be an instance of a Group" do 
        expect(@test_group).to be_a Group 
    end 

    it "should have a name property" do 
        expect(@test_group.name).to eq("Test Group")
    end 

    it "should have an array of names" do 
        expect(@test_group.names_array). to be_an_instance_of(Array)
    end
    
    describe ".names_name" do 
        it "should contain the name Alice" do 
            expect(@test_group.names_array).to include("Alice")
        end 
    end
    
    describe ".randomise_order" do
        it "should be defined" do 
            expect(defined? @test_group.randomise_order).to eq("method")
        end 

        it "should return an array" do 
            expect(@test_group.randomise_order).to be_an_instance_of(Array)
        end
        
        it "should include all the names from @names_array" do 
            expect(@test_group.randomise_order).to include(*@test_group.names_array)
        end 
    end
    
    describe ".add_name" do 
        it "should be defined" do 
            expect(defined? @test_group.add_name).to eq("method")
        end
        
        it "should increase @names_array by one" do 
            length = @test_group.names_array.length
            @test_group.add_name("Alex")
            expect(@test_group.names_array.length).to eq(length + 1)
        end
        
        it "should append the input name to the end of @names_array" do 
            @test_group.add_name("Callum")
            expect(@test_group.names_array[-1]).to eq("Callum")
        end 

    end 

    describe ".output_randomised_group" do
        
        it "should be defined" do 
            expect(defined? @test_group.output_randomised_group).to eq("method")
        end

        it "should output a name from @names_array to stdout" do 
            expect{@test_group.output_randomised_group}.to output(/Alice/).to_stdout
        end 

    end 
end 