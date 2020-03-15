#question 1
# c_outer = [42]
# d_outer = c_outer[0]

# puts c_outer.object_id
# puts d_outer.object_id

# a outer is 42 with an id of A_OUTER_OBJECT_ID before the block
# b outer is "forty two" with an id of B_OUTER_OBJECT_ID before the block
# c outer is 42 wuth an id of C_OUTER_OBJECT_ID before the block
# d outer is 42 with an id of D_OUTER_OBJECT_ID before the block
# blank line

# the outer_inner_id is set the the prviously defines outer.object.id
# a outer id was A_OUTER_OBJECT_ID before the block and is A_OUTER_OBJECT_ID inside the block

# blank line
# object ids do not change, the value is reassigned
# a_outer inside after reassignment is 22 with an id of A_NEW_OBJECT_ID and
# b_outer inside after reassignment is "thirty three" with an id of B_NEW_OBJECT_ID
# c_outer inside after reassignment is 44 with an id of C_NEW_OBJECT_ID
# d_outer inside after reassignment is 44 with an id of D_NEW_OBJECT_ID
# blank line

# a_inner = 22
# b_inner = "thirty three"
# c_inner = 44
# d_inner = 44

# a_inner is 22 with an id of A_NEW_NEW_OBJECT_ID inside the block (compared to A_NEW_OBJECT_ID) for outer
# b_inner is "thirty three" with an id of B_NEW_NEW_OBJECT_ID inside the block (compared to B_NEW_OBJECT_ID) for outer
# c_inner is 44 with an id of C_NEW_NEW_OBJECT_ID inside the block (compared to C_NEW_OBJECT_ID) for outer
# d_inner is 44 with an id of D_NEW_NEW_OBJECT_ID inside the block (compared to D_NEW_OBJECT_ID) for outer
# blank line
# end

# changes id after the block
# a_outer is 42 with an id of A_OUTER_OBJECT_ID BEFORE and A_OUTER_DIFFERENT_OBJECT_ID AFTER the block


# question 2

# "a_outer is 42 with an id of: 85 before the block."
# "b_outer is forty two with an id of: 100 before the block."
# "c_outer is [42] with an id of: 40 before the block."
# "d_outer is 42 with an id of: 85 before the block."

# "a_outer is 42 with an id of: 85 BEFORE and: 85 AFTER the method call."
# "b_outer is forty two with an id of: 100 BEFORE and: 100 AFTER the method call."
# "c_outer is [42] with an id of: 40 BEFORE and: 40 AFTER the method call."
# "d_outer is 42 with an id of: 85 BEFORE and: 85 AFTER the method call."

# inner isn't in the scope of fun_with_ids

# "a_outer id was 85 before the method and is: 85 inside the method."
# "b_outer id was 100 before the method and is: 100 inside the method."
# "c_outer id was 40 before the method and is: 40 inside the method."
# "d_outer id was 85 before the method and is: 85 inside the method."

# "a_outer inside after reassignment is 22 with an id of: 85 before and: 855 after."
# "a_inner is 22 with an id of: 8555 inside the method (compared to 855 for outer)."

# question 3

# "My string looks like this now: pumpkins" - += doesn't change the string
# "My array looks like this now: ['pumpkins', 'rutabage'] - << adds the item into the exisitng array

# question 4
# "My string looks like this now: pumpkinsrutabaga"
# "My array looks like this now: ['pumpkins']

# question 5
# def tricky_method(a_string_param, an_array_param)
#   a_string_param += "rutabaga"
#   an_array_param << "rutabaga"
  
#   return a_string_param, an_array_param
# end

# my_array = ["pumpkins"]
# my_string = "pumpkins"
# my_string, my_array = tricky_method(my_string, my_array)

# puts "My string looks like this now: #{my_string}"
# puts "My array looks like this now #{my_array}"

# question 6

def color_valid(color)
  color == "blue" || color == "green"
end
