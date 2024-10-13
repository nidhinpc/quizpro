import 'package:quizpro/view/biologyQuiz/biology_quiz.dart';
import 'package:quizpro/view/chemistryQuiz/chemistry_quiz.dart';
import 'package:quizpro/view/mathQuiz/math_quiz.dart';
import 'package:quizpro/view/movieQuiz/movie_quiz.dart';
import 'package:quizpro/view/socialQuiz/social_quiz.dart';
import 'package:quizpro/view/sportsQuiz/sports_quiz.dart';

class Dummydb {
  static List sectionList = [
    {"SectionName": "Sports", "Navigation": SportsQuiz()},
    {"SectionName": "Maths", "Navigation": MathQuiz()},
    {"SectionName": "Biology", "Navigation": BiologyQuiz()},
    {"SectionName": "Movie", "Navigation": MovieQuiz()},
    {"SectionName": "Chemistry", "Navigation": ChemistryQuiz()},
    {"SectionName": "Social", "Navigation": SocialQuiz()},
  ];
  static List<Map<String, dynamic>> sportsQuestionList = [
    {
      "question": "Which country won the FIFA World Cup in 2018?",
      "options": ["Brazil", "France", "Germany", "Argentina"],
      "answerIndex": 1
    },
    {
      "question": "In which sport would you perform a slam dunk?",
      "options": ["Tennis", "Basketball", "Football", "Baseball"],
      "answerIndex": 1
    },
    {
      "question": "Which country hosts the Tour de France cycling race?",
      "options": ["Spain", "Italy", "France", "Germany"],
      "answerIndex": 2
    },
    {
      "question": "How many players are on a soccer team on the field?",
      "options": ["9", "10", "11", "12"],
      "answerIndex": 2
    },
    {
      "question": "Which tennis player has won the most Grand Slam titles?",
      "options": [
        "Roger Federer",
        "Rafael Nadal",
        "Novak Djokovic",
        "Pete Sampras"
      ],
      "answerIndex": 2
    },
    {
      "question": "How many rings are on the Olympic flag?",
      "options": ["4", "5", "6", "7"],
      "answerIndex": 1
    },
    {
      "question": "What sport is known as 'America's pastime'?",
      "options": ["Basketball", "Baseball", "Football", "Hockey"],
      "answerIndex": 1
    },
    {
      "question": "Which country won the first-ever FIFA World Cup in 1930?",
      "options": ["Brazil", "Uruguay", "Italy", "Argentina"],
      "answerIndex": 1
    },
    {
      "question":
          "What is the maximum score in a single frame of ten-pin bowling?",
      "options": ["100", "150", "200", "300"],
      "answerIndex": 3
    },
    {
      "question":
          "In golf, what is the term for one stroke under par on a hole?",
      "options": ["Birdie", "Eagle", "Bogey", "Par"],
      "answerIndex": 0
    },
    {
      "question":
          "Which country won the most gold medals at the 2020 Tokyo Olympics?",
      "options": ["China", "United States", "Japan", "Russia"],
      "answerIndex": 1
    }
  ];
  static List<Map<String, dynamic>> mathsQuestionList = [
    {
      "question": "What is the square root of 144?",
      "options": ["10", "11", "12", "13"],
      "answerIndex": 2
    },
    {
      "question": "What is 15% of 200?",
      "options": ["20", "25", "30", "35"],
      "answerIndex": 2
    },
    {
      "question": "Solve: 9 + 6 ÷ 3",
      "options": ["3", "11", "9", "15"],
      "answerIndex": 1
    },
    {
      "question": "What is 7 squared?",
      "options": ["42", "48", "49", "56"],
      "answerIndex": 2
    },
    {
      "question": "What is the value of Pi up to 2 decimal places?",
      "options": ["3.14", "3.15", "3.16", "3.13"],
      "answerIndex": 0
    },
    {
      "question":
          "What is the perimeter of a square with a side length of 5 cm?",
      "options": ["20 cm", "15 cm", "25 cm", "10 cm"],
      "answerIndex": 0
    },
    {
      "question": "Solve for x: 5x = 25",
      "options": ["3", "5", "7", "9"],
      "answerIndex": 1
    },
    {
      "question": "What is 8 multiplied by 9?",
      "options": ["56", "72", "64", "81"],
      "answerIndex": 1
    },
    {
      "question":
          "What is the area of a rectangle with length 10 cm and width 5 cm?",
      "options": ["40 cm²", "60 cm²", "50 cm²", "30 cm²"],
      "answerIndex": 2
    },
    {
      "question":
          "If a triangle has angles 60°, 60°, and 60°, what type of triangle is it?",
      "options": ["Scalene", "Isosceles", "Equilateral", "Right-angled"],
      "answerIndex": 2
    },
    {
      "question": "What is the result of 2³?",
      "options": ["6", "8", "9", "12"],
      "answerIndex": 1
    },
  ];
  static List<Map<String, dynamic>> socialQuestionList = [
    {
      "question": "Who was the first President of the United States?",
      "options": [
        "George Washington",
        "Abraham Lincoln",
        "John Adams",
        "Thomas Jefferson"
      ],
      "answerIndex": 0
    },
    {
      "question": "Which country is the largest by land area?",
      "options": ["China", "Canada", "Russia", "United States"],
      "answerIndex": 2
    },
    {
      "question": "In which year did World War I begin?",
      "options": ["1914", "1918", "1939", "1945"],
      "answerIndex": 0
    },
    {
      "question": "What is the capital of Japan?",
      "options": ["Tokyo", "Kyoto", "Osaka", "Hiroshima"],
      "answerIndex": 0
    },
    {
      "question": "Who wrote the Declaration of Independence?",
      "options": [
        "Benjamin Franklin",
        "Thomas Jefferson",
        "John Adams",
        "Alexander Hamilton"
      ],
      "answerIndex": 1
    },
    {
      "question": "Which continent is known as the 'cradle of civilization'?",
      "options": ["Asia", "Africa", "Europe", "South America"],
      "answerIndex": 1
    },
    {
      "question": "Which country hosted the 2020 Summer Olympics?",
      "options": ["China", "Brazil", "Japan", "South Korea"],
      "answerIndex": 2
    },
    {
      "question": "What is the largest desert in the world?",
      "options": ["Sahara", "Arabian", "Gobi", "Antarctic"],
      "answerIndex": 3
    },
    {
      "question": "Who was known as the Iron Lady?",
      "options": [
        "Margaret Thatcher",
        "Angela Merkel",
        "Indira Gandhi",
        "Hillary Clinton"
      ],
      "answerIndex": 0
    },
    {
      "question": "What is the longest river in the world?",
      "options": ["Amazon", "Nile", "Yangtze", "Mississippi"],
      "answerIndex": 1
    },
    {
      "question": "In which year did the Berlin Wall fall?",
      "options": ["1987", "1989", "1991", "1993"],
      "answerIndex": 1
    }
  ];

  static List<Map<String, dynamic>> biologyQuestionList = [
    {
      "question": "What is the powerhouse of the cell?",
      "options": ["Nucleus", "Mitochondria", "Ribosome", "Chloroplast"],
      "answerIndex": 1
    },
    {
      "question": "Which part of the plant conducts photosynthesis?",
      "options": ["Root", "Stem", "Leaf", "Flower"],
      "answerIndex": 2
    },
    {
      "question": "What is the primary function of red blood cells?",
      "options": [
        "Fight infections",
        "Transport oxygen",
        "Form clots",
        "Remove waste"
      ],
      "answerIndex": 1
    },
    {
      "question": "What is the largest organ in the human body?",
      "options": ["Heart", "Liver", "Skin", "Brain"],
      "answerIndex": 2
    },
    {
      "question":
          "Which vitamin is produced when a person is exposed to sunlight?",
      "options": ["Vitamin A", "Vitamin B", "Vitamin C", "Vitamin D"],
      "answerIndex": 3
    },
    {
      "question":
          "What type of blood vessel carries blood away from the heart?",
      "options": ["Vein", "Artery", "Capillary", "Nerve"],
      "answerIndex": 1
    },
    {
      "question": "What is the process by which plants make their food called?",
      "options": [
        "Respiration",
        "Digestion",
        "Photosynthesis",
        "Transpiration"
      ],
      "answerIndex": 2
    },
    {
      "question": "What is the basic unit of life?",
      "options": ["Tissue", "Cell", "Organ", "Organism"],
      "answerIndex": 1
    },
    {
      "question": "Which gas is most important for photosynthesis?",
      "options": ["Oxygen", "Nitrogen", "Carbon Dioxide", "Hydrogen"],
      "answerIndex": 2
    },
    {
      "question":
          "Which part of the brain is responsible for balance and coordination?",
      "options": ["Cerebrum", "Cerebellum", "Medulla", "Pons"],
      "answerIndex": 1
    },
    {
      "question": "What is the most abundant protein in the human body?",
      "options": ["Hemoglobin", "Insulin", "Collagen", "Keratin"],
      "answerIndex": 2
    }
  ];

  static List<Map<String, dynamic>> chemistryQuestionList = [
    {
      "question": "What is the chemical symbol for water?",
      "options": ["O2", "H2O", "CO2", "HO"],
      "answerIndex": 1
    },
    {
      "question": "What is the atomic number of carbon?",
      "options": ["6", "12", "8", "14"],
      "answerIndex": 0
    },
    {
      "question":
          "Which element is necessary for the process of photosynthesis?",
      "options": ["Oxygen", "Carbon dioxide", "Nitrogen", "Chlorophyll"],
      "answerIndex": 3
    },
    {
      "question": "Which gas is most abundant in Earth's atmosphere?",
      "options": ["Oxygen", "Nitrogen", "Carbon dioxide", "Helium"],
      "answerIndex": 1
    },
    {
      "question": "What is the pH of pure water?",
      "options": ["5", "7", "8", "9"],
      "answerIndex": 1
    },
    {
      "question": "Which element is known as the 'king of chemicals'?",
      "options": [
        "Sulfuric acid",
        "Hydrochloric acid",
        "Nitric acid",
        "Ammonia"
      ],
      "answerIndex": 0
    },
    {
      "question": "Which part of the atom contains protons and neutrons?",
      "options": ["Nucleus", "Electron cloud", "Orbitals", "Valence shell"],
      "answerIndex": 0
    },
    {
      "question": "What is the chemical formula for table salt?",
      "options": ["NaCl", "KCl", "NaOH", "CaCl2"],
      "answerIndex": 0
    },
    {
      "question": "Which of the following is a noble gas?",
      "options": ["Oxygen", "Hydrogen", "Argon", "Nitrogen"],
      "answerIndex": 2
    },
    {
      "question": "What is the hardest naturally occurring substance on Earth?",
      "options": ["Graphite", "Quartz", "Diamond", "Gold"],
      "answerIndex": 2
    },
    {
      "question": "Who is known as the father of modern chemistry?",
      "options": [
        "Isaac Newton",
        "Marie Curie",
        "Albert Einstein",
        "Antoine Lavoisier"
      ],
      "answerIndex": 3
    },
  ];
  static List<Map<String, dynamic>> movieQuestionList = [
    {
      "question": "Who is known as the 'King of Bollywood'?",
      "options": [
        "Aamir Khan",
        "Salman Khan",
        "Shah Rukh Khan",
        "Akshay Kumar"
      ],
      "answerIndex": 2
    },
    {
      "question":
          "Which movie won the Best Picture award at the 2020 Filmfare Awards?",
      "options": [
        "Gully Boy",
        "Kabir Singh",
        "Uri: The Surgical Strike",
        "Chhichhore"
      ],
      "answerIndex": 0
    },
    {
      "question": "Who directed the movie '3 Idiots'?",
      "options": [
        "Rajkumar Hirani",
        "Karan Johar",
        "Sanjay Leela Bhansali",
        "Rohit Shetty"
      ],
      "answerIndex": 0
    },
    {
      "question":
          "Which Indian actress starred in the Hollywood movie 'Quantico'?",
      "options": [
        "Deepika Padukone",
        "Priyanka Chopra",
        "Kangana Ranaut",
        "Anushka Sharma"
      ],
      "answerIndex": 1
    },
    {
      "question":
          "What is the highest-grossing Indian film of all time (as of 2023)?",
      "options": ["Baahubali 2", "Dangal", "RRR", "Pathaan"],
      "answerIndex": 0
    },
    {
      "question":
          "Which actor played the role of 'Bajirao' in 'Bajirao Mastani'?",
      "options": [
        "Ranbir Kapoor",
        "Ranveer Singh",
        "Hrithik Roshan",
        "Shahid Kapoor"
      ],
      "answerIndex": 1
    },
    {
      "question": "Which movie features the popular song 'Tum Hi Ho'?",
      "options": ["Aashiqui 2", "Barfi", "Yeh Jawaani Hai Deewani", "Raees"],
      "answerIndex": 0
    },
    {
      "question": "Who directed the epic movie 'Lagaan'?",
      "options": [
        "Ashutosh Gowariker",
        "Rajkumar Hirani",
        "Farhan Akhtar",
        "Zoya Akhtar"
      ],
      "answerIndex": 0
    },
    {
      "question": "Which movie marked the Bollywood debut of Deepika Padukone?",
      "options": ["Om Shanti Om", "Chennai Express", "Piku", "Love Aaj Kal"],
      "answerIndex": 0
    },
    {
      "question":
          "Which actor played the role of 'Munna Bhai' in 'Munna Bhai M.B.B.S.'?",
      "options": ["Sanjay Dutt", "Salman Khan", "Aamir Khan", "Shah Rukh Khan"],
      "answerIndex": 0
    },
    {
      "question":
          "Which Bollywood movie is based on the life of wrestler Mahavir Singh Phogat?",
      "options": ["Sultan", "Dangal", "Bhaag Milkha Bhaag", "Mary Kom"],
      "answerIndex": 1
    },
  ];
}
