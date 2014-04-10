require 'test_helper'

class FacultyTest < ActiveSupport::TestCase
# Name Tests
  test "faculty must have a name" do
    faculty = Faculty.new ({ title: "test", office: "test", email: "email@email.com", phone_number: "3334445555" })
	assert_not faculty.save, "Does not contain a name"
  end
  
  test "faculty has a valid name" do
	test_string = ""
	for i in 1..50
		test_string += "a"
	end
	assert test_string.length == 50, "Test string is not 50 characters"
	
	faculty = Faculty.new ({ name: test_string + "a", title: "test", office: "test", email: "email@email.com", phone_number: "3334445555" })
	assert_not faculty.save, "saved name longer than 50 characters"
	
	faculty = Faculty.new ({ name: "", title: "test", office: "test", email: "email@email.com", phone_number: "3334445555" })
	assert_not faculty.save, "saved empty name"
	
	faculty = Faculty.new ({ name: " ", title: "test", office: "test", email: "email@email.com", phone_number: "3334445555" })
    assert_not faculty.save, "saved name with only blank space"
  end
  
# Title Tests
  test "faculty must have a title" do
    faculty = Faculty.new ({ name: "test", office: "test", email: "email@email.com", phone_number: "3334445555" })
	assert_not faculty.save, "Does not contain a title"
  end
  
  test "faculty has a valid title" do
	test_string = ""
	for i in 1..50
		test_string += "a"
	end
	assert test_string.length == 50, "Test string is not 50 characters"
	
	faculty = Faculty.new ({ name: "test", title: test_string + "a", office: "test", email: "email@email.com", phone_number: "3334445555" })
	assert_not faculty.save, "saved title longer than 50 characters"
	
	faculty = Faculty.new ({ name: "test", title: "", office: "test", email: "email@email.com", phone_number: "3334445555" })
	assert_not faculty.save, "saved empty title"
	
	faculty = Faculty.new ({ name: "test", title: " ", office: "test", email: "email@email.com", phone_number: "3334445555" })
    assert_not faculty.save, "saved title with only blank space"
  end
  
# Office Tests
  test "faculty must have an office" do
    faculty = Faculty.new ({ name: "test", title: "test", email: "email@email.com", phone_number: "3334445555" })
	assert_not faculty.save, "Does not contain a office"
  end
  
  test "faculty has a valid office" do
	test_string = ""
	for i in 1..50
		test_string += "a"
	end
	assert test_string.length == 50, "Test string is not 50 characters"
	
	faculty = Faculty.new ({ name: "test", title: "test", office: test_string + "a", email: "email@email.com", phone_number: "3334445555" })
	assert_not faculty.save, "saved office longer than 50 characters"
	
	faculty = Faculty.new ({ name: "test", title: "test", office: "", email: "email@email.com", phone_number: "3334445555" })
	assert_not faculty.save, "saved empty office"
	
	faculty = Faculty.new ({ name: "test", title: "test", office: " ", email: "email@email.com", phone_number: "3334445555" })
    assert_not faculty.save, "saved office with only blank space"
  end
  
# Faculty Tests
  test "faculty must have an email" do
    faculty = Faculty.new ({ name: "test", title: "test", office: "test", phone_number: "3334445555" })
	assert_not faculty.save, "Does not contain a name"
  end
  
  test "faculty has a valid email" do
	test_string = ""
	for i in 1..100
		test_string += "a"
	end
	assert test_string.length == 100, "Test string is not 100 characters"
	
	faculty = Faculty.new ({ name: "test", title: "test", office: "test", email: test_string + "a", phone_number: "3334445555" })
	assert_not faculty.save, "saved email longer than 100 characters"
	
	faculty = Faculty.new ({ name: "test", title: "test", office: "test", email: "", phone_number: "3334445555" })
	assert_not faculty.save, "saved empty email"
	
	faculty = Faculty.new ({ name: "test", title: "test", office: "test", email: " ", phone_number: "3334445555" })
    assert_not faculty.save, "saved email with only blank space"
  end
  
  test "email does not contain any spaces" do
    faculty = Faculty.new ({ name: "test", title: "test", office: "test", email: "email @ email.com", phone_number: "3334445555" })
	assert_not faculty.save, "saved email containing spaces"
  end
  
# Phone_number Tests
  test "faculty must have a phone_number" do
    faculty = Faculty.new ({ name: "test", title: "test", office: "test", phone_number: "3334445555" })
	assert_not faculty.save, "Does not contain a phone_number"
  end
  
  test "faculty has a valid phone_number" do
	faculty = Faculty.new ({ name: "test", title: "test", office: "test", email: "test", phone_number: "1111122222333334" })
	assert_not faculty.save, "saved phone_number longer than 15 characters"
	
	faculty = Faculty.new ({ name: "test", title: "test", office: "test", email: "test", phone_number: "111222333" })
	assert_not faculty.save, "saved phone_number shorter than 10 characters"
	
	faculty = Faculty.new ({ name: "test", title: "test", office: "test", email: "test", phone_number: "3a334445555" })
    assert_not faculty.save, "saved phone_number with non-numbers"
  end
  
end
