require 'test_helper'

class EventTest < ActiveSupport::TestCase

# event_date Tests
  test "event must have a event_date" do
    event = Event.new ({ title: "Da Title", location: "location1", description: "it's an event" })
	assert_not event.save, "Does not contain a event_date"
  end  

# Location tests  
  test "event must have a location" do
    event = Event.new ({ title: "da title", event_date: (DateTime.civil_from_format :local, 2012), description: "it's an event" })
	assert_not event.save, "Does not contain a location"
  end
  
  test "event has a valid location" do
	test_string = ""
	for i in 1..50
		test_string += "a"
	end
	assert test_string.length == 50, "Test string is not 50 characters"
	
	event = Event.new ({ title: "da title", event_date: (DateTime.civil_from_format :local, 2012), location: test_string + "a", description: "it's an event" })
	assert_not event.save, "saved location longer than 50 characters"
	
	event = Event.new ({ title: "da title", event_date: (DateTime.civil_from_format :local, 2012), location: "", description: "it's an event" })
	assert_not event.save, "saved empty location"
	
	event = Event.new ({ title: "da title", event_date: (DateTime.civil_from_format :local, 2012), location: " ", description: "it's an event" })
    assert_not event.save, "saved location with only blank space"
  end
  
# Description Tests
  test "event must have a description" do
    event = Event.new ({ title: "da title", event_date: (DateTime.civil_from_format :local, 2012), location: "testlocation" })
	assert_not event.save, "Does not contain a description"
  end
  
  test "event has a valid description" do
	test_string = ""
	for i in 1..200
		test_string += "a"
	end
	assert test_string.length == 200, "Test string is not 200 characters"
	
	event = Event.new ({ title: "da title", event_date: (DateTime.civil_from_format :local, 2012), location: "testlocation", description: test_string + "a" })
	assert_not event.save, "saved description longer than 200 characters"
	
	event = Event.new ({ title: "da title", event_date: (DateTime.civil_from_format :local, 2012), location: "testlocation", description: "" })
	assert_not event.save, "saved empty description"
	
	event = Event.new ({ title: "da title", event_date: (DateTime.civil_from_format :local, 2012), location: "testlocation", description: " " })
    assert_not event.save, "saved description with only blank space"
  end
  
# Title Tests
  test "event must have a title" do
    event = Event.new ({ event_date: (DateTime.civil_from_format :local, 2012), location: "testlocation", description: "it's an event" })
    assert_not event.save, "Does not contain a title"
  end
  
  test "event has a valid title" do
	test_string = ""
	for i in 1..50
		test_string += "a"
	end
	assert test_string.length == 50, "Test string is not 50 characters"
	
	event = Event.new ({ title: test_string + "a", event_date: (DateTime.civil_from_format :local, 2012), location: "testlocation", description: "it's an event" })
	assert_not event.save, "saved title longer than 50 characters"
	
	event = Event.new ({ title: "", event_date: (DateTime.civil_from_format :local, 2012), location: "testlocation", description: "it's an event" })
	assert_not event.save, "saved empty title"
	
	event = Event.new ({ title: " ", event_date: (DateTime.civil_from_format :local, 2012), location: "testlocation", description: "it's an event" })
    assert_not event.save, "saved title with only blank space"
  end


# Scope Tests
  test "events retrieved correctly from given keywords for title" do
	assert Event.title_keywords("key").length == 3, "Given title_keyword 'key' isn't retrieved correctly"
    assert Event.title_keywords("random").length == 1, "Given title_keyword 'random' isn't retrieved correctly"
	assert Event.title_keywords("key1").length == 1, "Given title_keyword 'key1' isn't retrieved correctly"
  end
  
  test "events retrieved correctly from given date" do
    assert Event.chosen_date(DateTime.new(2014, 2, 1)).length == 2, "Given chosen_date '02-01-2014' isn't retrieved correctly"
	assert Event.chosen_date(DateTime.new(2014, 3, 5)).length == 1, "Given chosen_date '03-05-2014' isn't retrieved correctly"
	assert Event.chosen_date(DateTime.new(2013, 2, 25)).length == 1, "Given chosen_date '02-25-2013' isn't retrieved correctly"
  end
  
  test "event retrieved correctly with free_food" do
    assert Event.free_food_select(1).length == 2, "Events with free_food not retrieved correctly"
  end
end