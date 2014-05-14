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
  {title: "K-State Birthday", event_date: "2014-08-05 00:00:00", location: "Ballroom", description: "I would be surprised if that was the actual date. I didn't check.", free_food: true},
  {title: "Computer Programming Contest", event_date: "2015-05-29 00:00:00", location: "Nichols Hall", description: "We do lots of programming. Lots and lots of it.", free_food: true},
  {title: "Write \\Til You Drop", event_date: "2014-04-24 00:00:00", location: "Seaton Hall", description: "We do lots of writing. Lots and lots of it.", free_food: false},
  {title: "The Eat-A-Thon", event_date: "2014-05-02 00:00:00", location: "Kramer Dining Center", description: "We eat until we drop...dead.", free_food: true},
  {title: "Dance Dance Dance", event_date: "2015-09-01 00:00:00", location: "KSU Union", description: "Self-explanatory. Bring your puffy shirt.", free_food: false}
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
