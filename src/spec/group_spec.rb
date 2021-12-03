require_relative '../classes/group.rb'

describe 'Group' do 
    it "should be an instance of a Group" do 
        test_group = Group.new 
        expect(test_group).to be_a Group 
    end 
end 