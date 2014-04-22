<<<<<<< HEAD
require 'test_helper'

class ClubTest < ActiveSupport::TestCase

#Name tests
  test "club name exists" do
    club = Club.new ({ description: "test", url: "test", meeting: "testtime" })
	assert_not club.save, "club was saved without name"
  end

  test "Club has a valid name" do
	test_string = ""
	for i in 1..50
		test_string += "a"
	end
	assert test_string.length == 50, "Test string is not 50 characters"
	
	club = Club.new ({ name: test_string + "a", description: "test", url: "test", meeting: "testtime" }) 
	assert_not club.save, "saved name longer than 50 characters"
  end

  test "club name length must be greater than 0" do
	club = Club.new ({ name: "", description: "test", url: "test", meeting: "testtime" })
	assert_not club.save, "saved empty name"
  end

  test "club name length must contain more than blank space" do
    club = Club.new ({ name: " ", description: "test", url: "test", meeting: "testtime" })
    assert_not club.save, "saved name with only blank space"
  end
  
  test "club name should be unique" do
    Club.create ({ name: "UniqueName", description: "test", url: "test", meeting: "testtime" })
	nonuniqueClub = Club.new ({ name: "UniqueName", description: "test", url: "test", meeting: "testtime" })
	assert_not nonuniqueClub.save, "saved club with non-unique name"
  end

#Description tests
  test "club description exists" do
    club = Club.new ({ name: "test", url: "test", meeting: "testtime" })
	assert_not club.save, "club was saved without description"
  end

  test "club description length is at most 1000 characters" do
	test_string = ""
	for i in 1..1000
			test_string += "a"
	end
	assert test_string.length == 1000, "Test string is not 1000 characters"

	club = Club.new ({ name: "da name", description: test_string + "a", url: "test", meeting: "testtime" })
	assert_not club.save, "saved description longer than 1000 characters"
  end

  test "club description length must be greater than 0" do
	club = Club.new ({ name: "test", description: "", url: "test", meeting: "testtime" })
	assert_not club.save, "saved empty description"
  end

  test "club Description length must contain more than blank space" do
	club = Club.new ({ name: "test", description: " ", url: "test", meeting: "testtime" })
	assert_not club.save, "saved description with only blank space"
  end


#URL tests (URLs can be omitted)
  test "Club has a valid url" do
	test_string = ""
	for i in 1..75
			test_string += "a"
	end
	assert test_string.length == 75, "Test string is not 75 characters"

	club = Club.new ({ name: test_string + "a", description: "test", url: "test", meeting: "testtime" })
	assert_not club.save, "saved club with name longer than 75 characters"
  end

  test "club url length must be greater than 0" do
	club = Club.new ({ name: "test", description: "test", url: "", meeting: "testtime" })
	assert_not club.save, "saved club with no club name"
  end

  test "club url length must contain more than blank space" do
	club = Club.new ({ name: "test", description: "test", url: " ", meeting: "testtime"})
	assert_not club.save, "saved url with only white space"
  end

#Meeting tests
  test "club meeting exists" do
    club = Club.new ({ name: "test", description: "test", url: "test" })
	assert_not club.save, "club was saved without meeting"
  end

  test "club meeting length is at most 50 characters" do
	test_string = ""
	for i in 1..50
			test_string += "a"
	end
	assert test_string.length == 50, "Test string is not 50 characters"

	club = Club.new ({ name: "da name", description: "test", url: "test", meeting: test_string + "a" })
	assert_not club.save, "saved meeting longer than 50 characters"
  end

  test "club meeting length must be greater than 0" do
	club = Club.new ({ name: "test", description: "test", url: "test", meeting: "" })
	assert_not club.save, "saved empty meeting"
  end

  test "club meeting length must contain more than blank space" do
	club = Club.new ({ name: "test", description: "test", url: "test", meeting: " " })
	assert_not club.save, "saved meeting with only blank space"
  end


end
=======
require 'test_helper'

class ClubTest < ActiveSupport::TestCase

#Name tests
  test "club name exists" do
    club = Club.new ({ description: "test", url: "test", meeting: "testtime" })
	assert_not club.save, "club was saved without name"
  end

  test "Club has a valid name" do
	test_string = ""
	for i in 1..50
	  test_string += "a"
	end
	assert test_string.length == 50, "Test string is not 50 characters"
	
	club = Club.new ({ name: test_string + "a", description: "test", url: "test", meeting: "testtime" }) 
	assert_not club.save, "saved name longer than 50 characters"
  end

  test "club name length must be greater than 0" do
	club = Club.new ({ name: "", description: "test", url: "test", meeting: "testtime" })
	assert_not club.save, "saved empty name"
  end

  test "club name length must contain more than blank space" do
    club = Club.new ({ name: " ", description: "test", url: "test", meeting: "testtime" })
    assert_not club.save, "saved name with only blank space"
  end
  
  test "club name should be unique" do
    Club.create ({ name: "UniqueName", description: "test", url: "test", meeting: "testtime" })
	nonuniqueClub = Club.new ({ name: "UniqueName", description: "test", url: "test", meeting: "testtime" })
	assert_not nonuniqueClub.save, "saved club with non-unique name"
  end

#Description tests
  test "club description exists" do
    club = Club.new ({ name: "test", url: "test", meeting: "testtime" })
	assert_not club.save, "club was saved without description"
  end

  test "club description length is at most 1000 characters" do
	test_string = ""
	for i in 1..1000
	  test_string += "a"
	end
	assert test_string.length == 1000, "Test string is not 1000 characters"

	club = Club.new ({ name: "da name", description: test_string + "a", url: "test", meeting: "testtime" })
	assert_not club.save, "saved description longer than 1000 characters"
  end

  test "club description length must be greater than 0" do
	club = Club.new ({ name: "test", description: "", url: "test", meeting: "testtime" })
	assert_not club.save, "saved empty description"
  end

  test "club Description length must contain more than blank space" do
	club = Club.new ({ name: "test", description: " ", url: "test", meeting: "testtime" })
	assert_not club.save, "saved description with only blank space"
  end


#URL tests (URLs can be omitted)
  test "Club has a valid url" do
	test_string = ""
	for i in 1..75
	  test_string += "a"
	end
	assert test_string.length == 75, "Test string is not 75 characters"

	club = Club.new ({ name: test_string + "a", description: "test", url: "test", meeting: "testtime" })
	assert_not club.save, "saved club with name longer than 75 characters"
  end

  test "club url length must be greater than 0" do
	club = Club.new ({ name: "test", description: "test", url: "", meeting: "testtime" })
	assert_not club.save, "saved club with no club name"
  end

  test "club url length must contain more than blank space" do
	club = Club.new ({ name: "test", description: "test", url: " ", meeting: "testtime"})
	assert_not club.save, "saved url with only white space"
  end

#Meeting tests
  test "club meeting exists" do
    club = Club.new ({ name: "test", description: "test", url: "test" })
	assert_not club.save, "club was saved without meeting"
  end

  test "club meeting length is at most 50 characters" do
	test_string = ""
	for i in 1..50
	  test_string += "a"
	end
	assert test_string.length == 50, "Test string is not 50 characters"

	club = Club.new ({ name: "da name", description: "test", url: "test", meeting: test_string + "a" })
	assert_not club.save, "saved meeting longer than 50 characters"
  end

  test "club meeting length must be greater than 0" do
	club = Club.new ({ name: "test", description: "test", url: "test", meeting: "" })
	assert_not club.save, "saved empty meeting"
  end

  test "club meeting length must contain more than blank space" do
	club = Club.new ({ name: "test", description: "test", url: "test", meeting: " " })
	assert_not club.save, "saved meeting with only blank space"
  end


# Scope Tests
  test "club retrieved correctly from given keywords for name" do
	assert Club.name_keywords("baseball").length == 1, "Given name_keyword 'baseball' isn't retrieved correctly"
    assert Club.name_keywords("ball").length == 2, "Given name_keyword 'ball' isn't retrieved correctly"
	assert Club.name_keywords("Game Programming").length == 1, "Given name_keywords 'Game Programming' isn't retrieved correctly"
  end
end
>>>>>>> db91569a3da8fccb3d065166097d62b3130c362a
