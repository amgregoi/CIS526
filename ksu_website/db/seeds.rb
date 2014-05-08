
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(email: "admin@cis.ksu", password: "admin", admin: true)
User.create(email: "user@cis.ksu", password: "user")

Course.create(title: "Web Interface Design", description:"Example description for web and interface design, cis526", department:"cis", course_number: "526", credits:"3" )
Course.create(title: "Computer Architecture", description:"Example description for computer architecture, cis450", department:"cis" , course_number: "450", credits:"3" )
Course.create(title: "Operating Systems", description:"Example description for operating systems, cis520", department:"cis" , course_number: "520", credits:"3" )
Course.create(title: "Database Systems", description:"Example description for database systems, cis560", department:"cis" , course_number: "560", credits:"3" )
Course.create(title: "Cyber Security", description:"Example description for cyber security, cis551", department:"cis" , course_number: "551", credits:"3" )
Course.create(title: "Programming Languages", description:"Example description for programming languages, cis505", department:"cis" , course_number: "505", credits:"3" )

Employment.create(title: "", employer: "", job_type: "", description: "")

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Club.create(name: 'Association of Computing Machinery', url: 'http://acm.cis.ksu.edu', description: 'computer stuff for the ACM', meeting: 'Tuesday 6:00 PM', club_id: "one")
Club.create(name: 'Game Programming', url: 'http://acm.cis.ksu.edu', description: 'computer stuff for the NOT ACM', meeting: 'Tuesday 6:00 PM', club_id: "two")
Club.create(name: 'Human Ecology Ambassadors', url: 'ecology.ksu.edu', description: 'We are the ambassadors of Ecology at KSU', meeting: 'Wednesday 7:30 PM', club_id: "three")
Club.create(name: 'Human Nutrition Graduate Student Organization', url: 'nutrition.ksu.edu', description: 'We are the graduates of Nutrition at KSU', meeting: 'Saturday 5:30 PM', club_id: "four")
Club.create(name: 'I Design', url: 'idesign.ksu.edu', description: 'I, not we, design stuff at KSU', meeting: 'Friday 2:30 PM', club_id: "five")
Club.create(name: 'Institute of Industrial Engineers', url: 'ecology.ksu.edu', description: 'We are the industrial engineers at KSU', meeting: 'Wednesday 1:30 PM', club_id: "six")
Club.create(name: 'International Interior Design Association', url: 'interiordesign.ksu.edu', description: 'We are the designers of Ecology at KSU', meeting: 'Monday 6:30 PM', club_id: "seven")
Club.create(name: 'Kinesiology Student Association-KSA', url: 'kinesiology.ksu.edu', description: 'We are the kinesiologists at KSU', meeting: 'Thursday 8:00 PM', club_id: "eight")
Club.create(name: 'MIS Club (Management Information Systems)', url: 'mis.ksu.edu', description: 'We are the info managers at KSU', meeting: 'Monday 6:30 PM', club_id: "nine")
Club.create(name: 'National Society of Black Engineers', url: 'https://www.k-state.edu/nsbe/', description: 'Mission Statement: To increase the number of culturally responsible Black Engineers who excel academically, succeed professionally, and positively impact the community.', meeting: 'Wednesday 7:30 PM', club_id: "ten")
Club.create(name: 'On the Spot Improv Club, K-State\'s', url: 'onthespot.ksu.edu', description: 'We are the improvers at KSU', meeting: 'Monday 6:30 PM', club_id: "eleven")
Club.create(name: 'Powercat Masters Toastmasters Club', url: 'http://www.engg.ksu.edu/PMT/', description: 'We are the powercat masters toastmasters(?) at KSU', meeting: 'Wednesday 7:30 PM', club_id: "twelve")
Club.create(name: 'Pre-Dental Club', url: 'pre-dental.ksu.edu', description: 'We are the almost-dentists at KSU', meeting: 'Tusday 9:30 PM', club_id: "thirteen")

Event.create(title: 'K-State Birthday', event_date: DateTime.new(2014, 8, 5), location: 'Ballroom', description: 'I would be surprised if that was the actual date. I didn\'t check.', free_food: true)
Event.create(title: 'Computer Programming Contest', event_date: DateTime.new(2015, 5, 29), location: 'Nichols Hall', description: 'We do lots of programming. Lots and lots of it.', free_food: true)
Event.create(title: 'Write \Til You Drop', event_date: DateTime.new(2014, 4, 24), location: 'Seaton Hall', description: 'We do lots of writing. Lots and lots of it.', free_food: false)
Event.create(title: 'The Eat-A-Thon', event_date: DateTime.new(2014, 5, 2), location: 'Kramer Dining Center', description: 'We eat until we drop...dead.', free_food: true)
Event.create(title: 'Dance Dance Dance', event_date: DateTime.new(2015, 9, 1), location: 'KSU Union', description: 'Self-explanatory. Bring your puffy shirt.', free_food: false)

Course.create(title: 'Introduction to Computing Systems, Information Search, and Security', description: 'Introduction to basic computer and Internet security including basic computer security and privacy issues, computer networks, malware protection; effective use of the Internet as a resource including website evaluation and effective search tools and techniques.', department: 'CIS', course_number: 101, credits: 1)
Course.create(title: 'Introduction To Database Application', description: 'Design, create, modify, and maintain relational databases. Create relationships. Add and modify data. Search and query database. Design and create screen forms and reports.', department: 'CIS', course_number: 103, credits: 1)
Course.create(title: 'Introduction to Computer Programming', description: 'Introduction to programming. Principles and applications of programming fundamentals: state, control structures, methods, and arrays. Programming projects.', department: 'CIS', course_number: 111, credits: 3)
Course.create(title: 'Programming Fundamentals', description: 'Principles of algorithm design and their application to procedural programming: state, control structures, methods. Patterns of conditional and iterative control structure.  Program testing. Introduction to arrays, classes, and objects.  Programming projects.', department: 'CIS', course_number: 200, credits: 4)
Course.create(title: 'Algorithms & Data Structures', description: 'A study of common data and program structures together with associated algorithms. Topics include interfaces, design patterns, arrays, stacks, queues, lists, trees, hash tables, recursion, binary search, and tree traversals. Experience with both use and implementation of these structures and algorithms using a modern programming language. Discussion of tradeoffs involving performance and software maintainability.', department: 'CIS', course_number: 300, credits: 3)
Course.create(title: 'Logical Foundations Of Programming', description: 'Logical formalisms used to model and reason about computer systems. Propositional and predicate logic, syntax, semantics, and proof theory; soundness and completeness issues. Mathematical induction. Program verification: invariants and program logics.', department: 'CIS', course_number: 301, credits: 3)
Course.create(title: 'C/C++ Language Laboratory', description: 'Fundamentals of programming in C and C++; applications.', department: 'CIS', course_number: 308, credits: 1)
Course.create(title: 'Computer Architecture And Operations', description: 'Introduction to modern computer architectures: register transfer abstraction, addressing modes, basic operations (data transfer, arithmetic/logic, and control operations). Basic Operating System concepts and operations. Understanding relationships of higher-level language constructs to corresponding assembly instruction sequences generated by compilers. Introduction to interrupts and low-level I/O operations.', department: 'CIS', course_number: 450, credits: 3)
Course.create(title: 'Software Architecture And Design', description: 'Principles and patterns for design and structure of software, development of object-oriented models, examples of software architecture.', department: 'CIS', course_number: 501, credits: 3)

Employment.create(title: 'IT Summer Internship', employer: 'Lincoln Financial Group', job_type: 'Internship', description: 'An internship program emphasizing leadership development for college students looking to pursue a career in Information Technology. Our program offers a technology, business, and management-oriented experience that includes training, strategy and leadership.')
Employment.create(title: 'Analyst', employer: 'Daymon Worldwide', job_type: 'Full-Time', description: 'Build models to forecast future demand for retail stores. Explore data and create actionable insights for retail stores. Help create web-based business intelligence dashboards. Research and implement new ways to analyze store data')
#Employment.create(title: 'Application Developer', employer: 'Kansas State University Office of Mediated Education (OME)', job_type: 'Full-Time', description: 'The Kansas State University Office of Mediated Education (OME), Manhattan Kansas, is seeking applications for an Application Developer who will be responsible for facilitating the roll out of new IT service offerings in Service-Now, K-State’s IT Service Desk application.  This position will require knowledge of HTML, CSS, and JavaScript, as well as their respective environments. This position will also be responsible for the ongoing maintenance and support of several .Net applications developed in C#.  OME serves the campus as a central information technology unit under the direction of the Chief Information Officer/Vice Provost for Information Technology Services, and provides services to support the University\'s mission in the areas of teaching and learning, research, and technology transfer.')
#Employment.create(title: 'Student Programmer', employer: 'K-State Department of Agricultural Economics', job_type: 'Part-Time', description: 'We need someone that can handle building a database system on our website (http://www.metss-ghana.k-state.edu/ - set up a program for us to retrieve information from each person using the data i.e. their name, email, institution they are with, and their purpose for using the data – users will access and enter data from different countries). We want this information to go into a database that is user friendly.  This is a part time position, after this project there may be more projects but that is to be determined.')
Employment.create(title: 'Tutor', employer: 'Cardinal Scholars', job_type: 'Part-Time', description: 'Cardinal Scholars is an in-home and online tutoring company that matches exceptional tutors affiliated with top universities with elementary, middle, and high school students in need of additional academic support. ')
Employment.create(title: 'Professor', employer: 'Kansas State University', job_type: 'Faculty', description: 'Be a professor! It\'s that easy!')
Employment.create(title: 'Summer Scholarship', employer: 'Kansas State University', job_type: 'Scholarship', description: 'Be a learner and a winner! It\'s that easy!')

Faculty.create(name: 'Torben Amtoft', title: 'Associate Professor', office: 'N219C', phone_number: '7855327917', email: 'tamtoft@cis.ksu.edu')
Faculty.create(name: 'Daniel A. Andresen', title: 'Associate Professor', office: 'N219B', phone_number: '7855327914', email: 'dan@cis.ksu.edu')
Faculty.create(name: 'Nathan H Bean', title: 'GK-12 Program Coordinator, Instructor, Advisor', office: 'N216', phone_number: '7855327942', email: 'nhb7817@cis.ksu.edu')
Faculty.create(name: 'Russell A Feldhausen', title: 'Instructor', office: 'N212', phone_number: '7855327929', email: 'russfeld@ksu.edu')
Faculty.create(name: 'Rod Howell', title: 'Associate Professor', office: 'N227D', phone_number: '7855327735', email: 'rhowell@ksu.edu')
Faculty.create(name: 'Dave Schmidt', title: 'Professor', office: 'N219A', phone_number: '7855327912', email: 'schmidt@cis.ksu.edu')

