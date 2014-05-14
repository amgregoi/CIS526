Club.create!([
  {name: "Association of Computing Machinery", description: "computer stuff for the ACM", url: "http://acm.cis.ksu.edu", meeting: "Tuesday 6:00 PM", club_id: "one"},
  {name: "Game Programming", description: "computer stuff for the NOT ACM", url: "http://acm.cis.ksu.edu", meeting: "Tuesday 6:00 PM", club_id: "two"},
  {name: "Human Ecology Ambassadors", description: "We are the ambassadors of Ecology at KSU", url: "ecology.ksu.edu", meeting: "Wednesday 7:30 PM", club_id: "three"},
  {name: "Human Nutrition Graduate Student Organization", description: "We are the graduates of Nutrition at KSU", url: "nutrition.ksu.edu", meeting: "Saturday 5:30 PM", club_id: "four"},
  {name: "I Design", description: "I, not we, design stuff at KSU", url: "idesign.ksu.edu", meeting: "Friday 2:30 PM", club_id: "five"},
  {name: "Institute of Industrial Engineers", description: "We are the industrial engineers at KSU", url: "ecology.ksu.edu", meeting: "Wednesday 1:30 PM", club_id: "six"},
  {name: "International Interior Design Association", description: "We are the designers of Ecology at KSU", url: "interiordesign.ksu.edu", meeting: "Monday 6:30 PM", club_id: "seven"},
  {name: "Kinesiology Student Association-KSA", description: "We are the kinesiologists at KSU", url: "kinesiology.ksu.edu", meeting: "Thursday 8:00 PM", club_id: "eight"},
  {name: "MIS Club (Management Information Systems)", description: "We are the info managers at KSU", url: "mis.ksu.edu", meeting: "Monday 6:30 PM", club_id: "nine"},
  {name: "National Society of Black Engineers", description: "Mission Statement: To increase the number of culturally responsible Black Engineers who excel academically, succeed professionally, and positively impact the community.", url: "https://www.k-state.edu/nsbe/", meeting: "Wednesday 7:30 PM", club_id: "ten"},
  {name: "On the Spot Improv Club, K-State's", description: "We are the improvers at KSU", url: "onthespot.ksu.edu", meeting: "Monday 6:30 PM", club_id: "eleven"},
  {name: "Powercat Masters Toastmasters Club", description: "We are the powercat masters toastmasters(?) at KSU", url: "http://www.engg.ksu.edu/PMT/", meeting: "Wednesday 7:30 PM", club_id: "twelve"},
  {name: "Pre-Dental Club", description: "We are the almost-dentists at KSU", url: "pre-dental.ksu.edu", meeting: "Tusday 9:30 PM", club_id: "thirteen"}
])
Course.create!([
  {title: "Introduction To Database Application", description: "Design, create, modify, and maintain relational databases. Create relationships. Add and modify data. Search and query database. Design and create screen forms and reports.", department: "CIS", course_number: 103, credits: 1},
  {title: "Introduction to Computer Programming", description: "Introduction to programming. Principles and applications of programming fundamentals: state, control structures, methods, and arrays. Programming projects.", department: "CIS", course_number: 111, credits: 3},
  {title: "C/C++ Language Laboratory", description: "Fundamentals of programming in C and C++; applications.", department: "CIS", course_number: 308, credits: 1},
  {title: "Software Architecture And Design", description: "Principles and patterns for design and structure of software, development of object-oriented models, examples of software architecture.", department: "CIS", course_number: 501, credits: 3}
])
Employment.create!([
  {title: "IT Summer Internship", employer: "Lincoln Financial Group", job_type: "Internship", description: "An internship program emphasizing leadership development for college students looking to pursue a career in Information Technology. Our program offers a technology, business, and management-oriented experience that includes training, strategy and leadership."},
  {title: "Analyst", employer: "Daymon Worldwide", job_type: "Full-Time", description: "Build models to forecast future demand for retail stores. Explore data and create actionable insights for retail stores. Help create web-based business intelligence dashboards. Research and implement new ways to analyze store data"},
  {title: "Tutor", employer: "Cardinal Scholars", job_type: "Part-Time", description: "Cardinal Scholars is an in-home and online tutoring company that matches exceptional tutors affiliated with top universities with elementary, middle, and high school students in need of additional academic support. "},
  {title: "Professor", employer: "Kansas State University", job_type: "Faculty", description: "Be a professor! It's that easy!"},
  {title: "Summer Scholarship", employer: "Kansas State University", job_type: "Scholarship", description: "Be a learner and a winner! It's that easy!"}
])
Event.create!([
  #January
  {title: "GE Aviation visit", event_date: "2015-1-05 00:00:00", location: "Nichols Atrium", description: "Free food, talk with a company about careers", free_food: true},
  {title: "Netsmart visit", event_date: "2015-1-10 00:00:00", location: "Nichols Atrium", description: "Free food, talk with a company about careers", free_food: true},
  {title: "ACM meeting", event_date: "2015-1-27 00:00:00", location: "Nichols 126", description: "First meeting of the semester", free_food: true},
  {title: "Movie night", event_date: "2015-1-28 00:00:00", location: "Nichols 126", description: "Wreck It Ralph will be playing", free_food: false},
  {title: "Pc Lan party", event_date: "2015-1-30 00:00:00", location: "Nichols 19", description: "Games, free drinks, and more games", free_food: false},
  #February 
  {title: "High School Programming Contest", event_date: "2015-2-07 00:00:00", location: "Student Union Ballroom", description: "Free food, volunteer work and extra credit", free_food: true},
  {title: "ACM meeting", event_date: "2015-2-10 00:00:00", location: "Nichols 126", description: "second meeting of the semester", free_food: true},
  {title: "Garmin visit", event_date: "2015-2-15 00:00:00", location: "Nichols Atrium", description: "Talk with Garmin and enjoy free pizza", free_food: true},
  {title: "Console Lan Party", event_date: "2015-2-28 00:00:00", location: "Nichols 126", description: "Super Smash Brothers Tournament", free_food: false},
  {title: "Movie Night", event_date: "2015-2-30 00:00:00", location: "Nichols 126", description: "Batman Begins will be playing", free_food: false},
  #March
  {title: "Dance", event_date: "2015-3-08 00:00:00", location: "Student Union Ballroom", description: "Get your swag on (yes, swag)", free_food: false},
  {title: "ACM meeting", event_date: "2015-3-10 00:00:00", location: "Nichols 126", description: "Regular Meeting", free_food: true},
  {title: "Garmin visit", event_date: "2015-3-15 00:00:00", location: "Nichols Atrium", description: "Talk with Garmin and enjoy free pizza", free_food: true},
  {title: "Console Lan Party", event_date: "2015-3-28 00:00:00", location: "Nichols 126", description: "Super Smash Brothers Tournament", free_food: false},
  {title: "Movie Night", event_date: "2015-3-30 00:00:00", location: "Nichols 126", description: "The Dark Knight will be playing", free_food: false},
  #April
  {title: "Write Til You Drop", event_date: "2014-04-24 00:00:00", location: "Seaton Hall", description: "We do lots of writing. Lots and lots of it.", free_food: false},
  {title: "ACM meeting", event_date: "2015-4-10 00:00:00", location: "Nichols 126", description: "second meeting of the semester", free_food: true},
  {title: "Movie Night", event_date: "2015-4-12 00:00:00", location: "Nichols 126", description: "The Dark Knight Rises will be playing", free_food: false},
  {title: "Microsoft visit", event_date: "2015-4-15 00:00:00", location: "Nichols Atrium", description: "Talk with Microsoft and enjoy free pizza", free_food: true},
  {title: "Google visit", event_date: "2015-4-20 00:00:00", location: "Nichols Atrium", description: "Talk with Google and enjoy free pizza", free_food: true},
  #May
  {title: "The Eat-A-Thon", event_date: "2014-05-02 00:00:00", location: "Kramer Dining Center", description: "We eat until we drop...dead.", free_food: true},
  {title: "Computer Programming Contest", event_date: "2015-05-13 00:00:00", location: "Nichols Hall", description: "We do lots of programming. Lots and lots of it.", free_food: true},
  {title: "Pc Lan party", event_date: "2015-5-15 00:00:00", location: "Nichols 19", description: "Games, free drinks, and more games", free_food: false},
  {title: "Movie Night", event_date: "2015-5-21 00:00:00", location: "Nichols 126", description: "The Dark Knight will be playing", free_food: false},
  {title: "Amazon visit", event_date: "2015-2-22 00:00:00", location: "Nichols Atrium", description: "Talk with Amazon and enjoy free pizza", free_food: true},
  #June
  {title: "High School Programming Contest", event_date: "2015-6-07 00:00:00", location: "Student Union Ballroom", description: "Free food, volunteer work and extra credit", free_food: true},
  {title: "ACM meeting", event_date: "2015-6-10 00:00:00", location: "Nichols 126", description: "Regular Meeting", free_food: true},
  {title: "Garmin visit", event_date: "2015-6-15 00:00:00", location: "Nichols Atrium", description: "Talk with Garmin and enjoy free pizza", free_food: true},
  {title: "Console Lan Party", event_date: "2015-6-28 00:00:00", location: "Nichols 126", description: "World of Warcraft Tournament", free_food: false},
  {title: "Movie Night", event_date: "2015-6-30 00:00:00", location: "Nichols 126", description: "Inception will be playing", free_food: false},
  #July 
  {title: "High School Programming Contest", event_date: "2015-7-07 00:00:00", location: "Student Union Ballroom", description: "Free food, volunteer work and extra credit", free_food: true},
  {title: "ACM meeting", event_date: "2015-7-10 00:00:00", location: "Nichols 126", description: "Regular Meeting", free_food: true},
  {title: "Garmin visit", event_date: "2015-7-15 00:00:00", location: "Nichols Atrium", description: "Talk with Garmin and enjoy free pizza", free_food: true},
  {title: "Console Lan Party", event_date: "2015-7-28 00:00:00", location: "Nichols 126", description: "Civ 5 Tournament", free_food: false},
  {title: "Movie Night", event_date: "2015-7-30 00:00:00", location: "Nichols 126", description: "The Prestige will be playing", free_food: false},
  #August
  {title: "K-State Birthday", event_date: "2014-08-05 00:00:00", location: "Ballroom", description: "I would be surprised if that was the actual date. I didn't check.", free_food: true},
  {title: "Movie Night", event_date: "2015-8-10 00:00:00", location: "Nichols 126", description: "Pitch Perfect will be playing", free_food: false},
  {title: "Console Lan Party", event_date: "2015-8-16 00:00:00", location: "Nichols 126", description: "Super Smash Brothers Tournament", free_food: false},
  {title: "Computer Programming Contest", event_date: "2015-8-29 00:00:00", location: "Nichols Hall", description: "We do lots of programming. Lots and lots of it.", free_food: true},
  {title: "Cerner visit", event_date: "2015-8-30 00:00:00", location: "Nichols Atrium", description: "Talk with Cerner and enjoy free pizza", free_food: true},
  #September
  {title: "Dance Dance Dance", event_date: "2015-09-01 00:00:00", location: "KSU Union", description: "Self-explanatory. Bring your puffy shirt.", free_food: false},
  {title: "Movie Night", event_date: "2015-9-11 00:00:00", location: "Nichols 126", description: "Elysium will be playing", free_food: false},
  {title: "Console Lan Party", event_date: "2015-9-12 00:00:00", location: "Nichols 126", description: "Starcraft 2 Tournament", free_food: false},
  {title: "Computer Programming Contest", event_date: "2015-9-20 00:00:00", location: "Nichols Hall", description: "We do lots of programming. Lots and lots of it.", free_food: true},
  {title: "Garmin visit", event_date: "2015-9-27 00:00:00", location: "Nichols Atrium", description: "Talk with Garmin and enjoy free pizza", free_food: true},
  #October 
  {title: "High School Programming Contest", event_date: "2015-10-07 00:00:00", location: "Student Union Ballroom", description: "Free food, volunteer work and extra credit", free_food: true},
  {title: "ACM meeting", event_date: "2015-10-10 00:00:00", location: "Nichols 126", description: "Regular Meeting", free_food: true},
  {title: "Garmin visit", event_date: "2015-10-15 00:00:00", location: "Nichols Atrium", description: "Talk with Garmin and enjoy free pizza. Garmin really likes us", free_food: true},
  {title: "Console Lan Party", event_date: "2015-10-28 00:00:00", location: "Nichols 126", description: "Halo", free_food: false},
  {title: "Movie Night", event_date: "2015-10-30 00:00:00", location: "Nichols 126", description: "Fight Club will be playing", free_food: false},
  #November
  {title: "High School Programming Contest", event_date: "2015-11-07 00:00:00", location: "Student Union Ballroom", description: "Free food, volunteer work and extra credit", free_food: true},
  {title: "ACM meeting", event_date: "2015-11-10 00:00:00", location: "Nichols 126", description: "Regular Meeting", free_food: true},
  {title: "Apple visit", event_date: "2015-11-15 00:00:00", location: "Nichols Atrium", description: "Talk with Apple and enjoy free pizza", free_food: true},
  {title: "Console Lan Party", event_date: "2015-11-28 00:00:00", location: "Nichols 126", description: "Super Smash Brothers Tournament", free_food: false},
  {title: "Movie Night", event_date: "2015-11-30 00:00:00", location: "Nichols 126", description: "The Hunger Games will be playing", free_food: false},
  #December
  {title: "High School Programming Contest", event_date: "2015-12-07 00:00:00", location: "Student Union Ballroom", description: "Free food, volunteer work and extra credit", free_food: true},
  {title: "ACM meeting", event_date: "2015-12-10 00:00:00", location: "Nichols 126", description: "Regular Meeting", free_food: true},
  {title: "Sprint visit", event_date: "2015-12-15 00:00:00", location: "Nichols Atrium", description: "Talk with Sprint and enjoy free pizza", free_food: true},
  {title: "Console Lan Party", event_date: "2015-12-28 00:00:00", location: "Nichols 126", description: "Splinter Cell Tournament", free_food: false},
  {title: "Movie Night", event_date: "2015-12-30 00:00:00", location: "Nichols 126", description: "Rick Roll will be playing on repeat", free_food: false},
])
Faculty.create!([
  {name: "Torben Amtoft", title: "Associate Professor", office: "N219C", phone_number: "7855327917", email: "tamtoft@cis.ksu.edu", image_uid: "2014/05/12/333jqce103_torben_amtoft.jpg"},
  {name: "Daniel A. Andresen", title: "Associate Professor", office: "N219B", phone_number: "7855327914", email: "dan@cis.ksu.edu", image_uid: "2014/05/12/7d81ultmhv_dan_andresen.jpg"},
  {name: "Nathan H Bean", title: "GK-12 Program Coordinator, Instructor, Advisor", office: "N216", phone_number: "7855327942", email: "nhb7817@cis.ksu.edu", image_uid: "2014/05/12/9eiq8qpgb8_nathan_bean.jpg"},
  {name: "Russell A Feldhausen", title: "Instructor", office: "N212", phone_number: "7855327929", email: "russfeld@ksu.edu", image_uid: "2014/05/12/614w4ec6po_russell_feldhausen.jpg"},
  {name: "Rod Howell", title: "Associate Professor", office: "N227D", phone_number: "7855327735", email: "rhowell@ksu.edu", image_uid: "2014/05/12/7xndnmr56a_rod_howell.jpg"},
  {name: "Dave Schmidt", title: "Professor", office: "N219A", phone_number: "7855327912", email: "schmidt@cis.ksu.edu", image_uid: "2014/05/12/3opbpn1th0_dave_schmidt.jpg"}
])
User.create!([
  {email: "admin@cis.ksu", password: "admin", admin: true},
  {email: "user@cis.ksu", password: "user"}
])
