# 1 - Boolean Assertions

# 2 - Equality Assertions
# assert_equal('xyz', value.downcase)

# 3 - Nil Assertions
# assert_equal(nil, value)
# better to use
# assert_nil value

# 4 - Empty Object Assertions
# assert_empty list

# 5 - Included Object Assertions
# assert_includes(list, 'xyz')

# 6 - Exception Assertions
# assert_raises(NoExperienceError) {|_| employee.hire}

# 7 - Type Assertions
# assert_instance_of(Numeric, value)

# 8 - Kind Assertions
# assert_kind_of(Numeric, value)

# 9 - Same Object Asssertions
# assert_same(list, list.process)

# 10 - Refutations
#refute_includes(list, 'xyz')