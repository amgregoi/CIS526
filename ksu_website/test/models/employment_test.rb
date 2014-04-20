require 'test_helper'

class EmploymentTest < ActiveSupport::TestCase
  setup do
    #@employment1 = employments(:one)
	#@employment2 = employments(:two)
	#@employment3 = employments(:three)
	#@employment4 = employments(:four)
  end


# Title Tests
  test "employment must have a title" do
    employment = Employment.new ({ employer: "test", job_type: "Full-Time", description: "test" })
    assert_not employment.save, "Does not contain a title"
  end
  
  test "employment has a valid title" do
	test_string = ""
	for i in 1..100
		test_string += "a"
	end
	assert test_string.length == 100, "Test string is not 100 characters"
	
	employment = Employment.new ({ title: test_string + "a", employer: "test", job_type: "Full-Time", description: "test" })
	assert_not employment.save, "saved title longer than 100 characters"
	
	employment = Employment.new ({ title: "", employer: "test", job_type: "Full-Time", description: "test" })
	assert_not employment.save, "saved empty title"
	
	employment = Employment.new ({ title: " ", employer: "test", job_type: "Full-Time", description: "test" })
    assert_not employment.save, "saved title with only blank space"
  end
  
# Employer Tests
  test "employment must have a employer" do
    employment = Employment.new ({ title: "test", job_type: "Full-Time", description: "test" })
    assert_not employment.save, "Does not contain a employer"
  end
  
  test "employment has a valid employer" do
	test_string = ""
	for i in 1..100
		test_string += "a"
	end
	assert test_string.length == 100, "Test string is not 100 characters"
	
	employment = Employment.new ({ title: "test", employer: test_string + "a", job_type: "Full-Time", description: "test" })
	assert_not employment.save, "saved employer longer than 100 characters"
	
	employment = Employment.new ({ title: "test", employer: "", job_type: "Full-Time", description: "test" })
	assert_not employment.save, "saved empty employer"
	
	employment = Employment.new ({ title: "test", employer: " ", job_type: "Full-Time", description: "test" })
    assert_not employment.save, "saved employer with only blank space"
  end
  
# Description Tests
  test "employment must have a description" do
    employment = Employment.new ({ title: "test", employer: "test", job_type: "Full-Time" })
    assert_not employment.save, "Does not contain a description"
  end
  
  test "employment has a valid description" do
	test_string = ""
	for i in 1..2000
		test_string += "a"
	end
	assert test_string.length == 2000, "Test string is not 2000 characters"
	
	employment = Employment.new ({ title: "test", employer: "test", job_type: "Full-Time", description: test_string + "a" })
	assert_not employment.save, "saved description longer than 2000 characters"
	
	employment = Employment.new ({ title: "test", employer: "test", job_type: "Full-Time", description: "" })
	assert_not employment.save, "saved empty description"
	
	employment = Employment.new ({ title: "test", employer: "test", job_type: "Full-Time", description: " " })
    assert_not employment.save, "saved description with only blank space"
  end
  
# Job_type Tests
  test "employment only allows certain job types to be saved" do
    employment = Employment.new ({ job_type: "Faculty", title: "test", employer: "test", description: "test" })
    assert employment.save, "didn't save Faculty job type"
  
    employment = Employment.new ({ job_type: "Full-Time", title: "test", employer: "test", description: "test" })
    assert employment.save, "didn't save Full_Time job type"
	
	employment = Employment.new ({ job_type: "Part-Time", title: "test", employer: "test", description: "test" })
    assert employment.save, "didn't save Part-Time job type"
	
	employment = Employment.new ({ job_type: "Internship", title: "test", employer: "test", description: "test" })
    assert employment.save, "didn't save Internship job type"
	
	employment = Employment.new ({ job_type: "Scholarship", title: "test", employer: "test", description: "test" })
    assert employment.save, "didn't save Scholarship job type"
	
	employment = Employment.new ({ job_type: "invalid job type", title: "test", employer: "test", description: "test" })
    assert_not employment.save, "saved invalid job type"
  end
  
  
# Scope tests
  test "employment retrieved correctly from given keywords for title" do
	assert Employment.title_keywords("key").length == 3, "Given title_keyword 'key' isn't retrieved correctly"
    assert Employment.title_keywords("random").length == 1, "Given title_keyword 'random' isn't retrieved correctly"
	assert Employment.title_keywords("key1").length == 1, "Given title_keyword 'key1' isn't retrieved correctly"
  end
  
  test "employment retrieved correctly from given keywords for employer" do
	assert Employment.employer_keywords("key").length == 3, "Given employer_keywords 'key' isn't retrieved correctly"
    assert Employment.employer_keywords("random").length == 1, "Given employer_keywords 'random' isn't retrieved correctly"
	assert Employment.employer_keywords("key1").length == 1, "Given employer_keywords 'key1' isn't retrieved correctly"
  end
  
  test "employment retrieved correctly from given job_type" do
	assert Employment.job_type_select("Full-Time").length == 2, "Given job_type 'Full-Time' isn't retrieved correctly"
    assert Employment.job_type_select("Internship").length == 1, "Given job_type 'Internship' isn't retrieved correctly"
	assert Employment.job_type_select("Part_Time").length == 0, "Given job_type 'Part_Time' isn't retrieved correctly"
  end
  
  
end
