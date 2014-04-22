# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Club.create(name: 'ACM', url: 'http://acm.cis.ksu.edu', description: 'computer stuff for the ACM', meeting: 'Tuesday 6:00 PM')
Club.create(name: 'NOT ACM', url: 'http://acm.cis.ksu.edu', description: 'computer stuff for the NOT ACM', meeting: 'Tuesday 6:00 PM')


Course.create(title: "Web Interface Design", description:"Example description for web and interface design, cis526", department:"cis", course_number: "526", credits:"3" );
Course.create(title: "Computer Architecture", description:"Example description for computer architecture, cis450", department:"cis" , course_number: "450", credits:"3" );
Course.create(title: "Operating Systems", description:"Example description for operating systems, cis520", department:"cis" , course_number: "520", credits:"3" );
Course.create(title: "Database Systems", description:"Example description for database systems, cis560", department:"cis" , course_number: "560", credits:"3" );
Course.create(title: "Cyber Security", description:"Example description for cyber security, cis551", department:"cis" , course_number: "551", credits:"3" );
Course.create(title: "Programming Languages", description:"Example description for programming languages, cis505", department:"cis" , course_number: "505", credits:"3" );

Employment.create(title: "", employer: "", job_type: "", description: "");
