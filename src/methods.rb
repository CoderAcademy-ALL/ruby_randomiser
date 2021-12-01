def pick_random(arr)
    return arr.sample
end 

def randomise_group(group)
    # copied_group = group.clone
    # new_group = []
    # while copied_group.length > 0
    #     random_index = rand(copied_group.length - 1)
    #     new_group << copied_group[random_index]
    #     copied_group.delete_at(random_index)
    # end

    # return new_group
     
    #does the same thing
    group.shuffle

end 

def output_group(group)
    group.each_with_index do |person, index| 
        puts "#{index + 1}. #{person}" 
    end 
end