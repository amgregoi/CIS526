require 'test_helper'

class CourseTest < ActiveSupport::TestCase
# Title Tests
  test "course must have a title" do
    course = Course.new ({ department: "test", description: "test", credits: 1, course_number: 100 })
	assert_not course.save, "Does not contain a title"
  end
  
  test "course has a valid title" do
	test_string = ""
	for i in 1..50
		test_string += "a"
	end
	assert test_string.length == 50, "Test string is not 50 characters"
	
	course = Course.new ({ title: test_string + "a", department: "test", description: "test", credits: 1, course_number: 100 })
	assert_not course.save, "saved title longer than 50 characters"
	
	course = Course.new ({ title: "", department: "test", description: "test", credits: 1, course_number: 100 })
	assert_not course.save, "saved empty title"
	
	course = Course.new ({ title: " ", department: "test", description: "test", credits: 1, course_number: 100 })
    assert_not course.save, "saved title with only blank space"
  end

# Department Tests
  test "course must have a department" do
    course = Course.new ({ title: "test", description: "test", credits: 1, course_number: 100 })
	assert_not course.save, "Does not contain a department"
  end
  
  test "course has a valid department" do
	test_string = ""
	for i in 1..10
		test_string += "a"
	end
	assert test_string.length == 10, "Test string is not 10 characters"
	
	course = Course.new ({ title: "test", department: test_string + "a", description: "test", credits: 1, course_number: 100 })
	assert_not course.save, "saved department longer than 10 characters"
	
	course = Course.new ({ title: "test", department: "", description: "test", credits: 1, course_number: 100 })
	assert_not course.save, "saved empty department"
	
	course = Course.new ({ title: "test", department: " ", description: "test", credits: 1, course_number: 100 })
    assert_not course.save, "saved department with only blank space"
  end
  
  # Description Tests
  test "course must have a description" do
    course = Course.new ({ department: "test", description: "test", credits: 1, course_number: 100 })
	assert_not course.save, "Does not contain a description"
  end
  
  test "course has a valid description" do
	test_string = ""
	for i in 1..200
		test_string += "a"
	end
	assert test_string.length == 200, "Test string is not 200 characters"
	
	course = Course.new ({ title: "test", department: "test", description: test_string + "a", credits: 1, course_number: 100 })
	assert_not course.save, "saved description longer than 200 characters"
	
	course = Course.new ({ title: "test", department: "test", description: "", credits: 1, course_number: 100 })
	assert_not course.save, "saved empty description"
	
	course = Course.new ({ title: "test", department: "test", description: " ", credits: 1, course_number: 100 })
    assert_not course.save, "saved description with only blank space"
  end
  
# Credits Tests
  test "course must have a credits" do
    course = Course.new ({ title: "test", department: "test", description: "test", course_number: 100 })
	assert_not course.save, "Does not contain a credits"
  end
  
# course_number Tests
  test "course must have a course_number" do
    course = Course.new ({ title: "test", department: "test", description: "test", credits: 1 })
	assert_not course.save, "Does not contain a course_number"
  end
  
  test "course must have a unique course_number" do
    course = Course.new ({ title: "test", department: "test", description: "test", credits: 1, course_number: 100 })
	assert course.save, "Course didn't save properly"
	
	course = Course.new ({ title: "test2", department: "test2", description: "test2", credits: 2, course_number: 100 })
	assert_not course.save, "course_number is not unique"
  end
end
