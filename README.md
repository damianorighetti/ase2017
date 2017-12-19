# Advanced Sofware Engineering 2017

This repository contains the material for the "Advanced Software
Engineering" course at UNITN, 2017-2018 edition.

Syllabus: [Support-Material/Syllabus.docx](Support-Material/Syllabus.docx)

Written Exam: [Rules and Structure](WrittenExam/index.md)

Assignment Results: https://docs.google.com/spreadsheets/d/1a9vYSfPYeRYym8uW6sg7ay2xeuSe826_-FKiXuJIu_Q/edit?usp=sharing

Schedule:

  - Monday 14:00-15:40 Room B104
  - Wednesday 14:00-15:40 Room B108
  
Special schedule for December

  - Monday 4th: 14:00-16:00
  - Wednesday 6th: ~~11:00-13:00~~, 14:00-16:00
  - Monday 11th: 14:00-18:00
  - Monday 18th: 14:00-16:00 (just for Q&A)
  
**There is no room available for Wednesday morning and the proposed lesson has 
to be cancelled.  We will meet Wednesday afternoon.**
  
## Lesson 1. Introduction

  <2017-09-13 Wed 14:00 - 16:00>

  Administrative matters (exam, getting in touch, etc), entry
  questionnaire, and a motivating example, which describes why
  developing software is complex.

  Slides:

  - [Introduction](Slides/01-Introduction-2017.odp)
  - [Motivating Example](Slides/02-MotivatingExample.odp)

## Lesson 2. Configuration Management

  <2017-09-18 Mon 14:00-16:00>

  Configuration Management helps us ensuring the coherency of a system
  over time

  - [Slides](Slides/03-ConfigurationManagement.odp)

## Lesson 3. Configuration Management

  <2017-09-20 Wed 14:00-16:00>

  More on Configuration Management and on Git.  The branching
  development model and the merging (nightmare, if you don't do things
  right).

  - [Slides](Slides/04-Git.odp)

## Lesson 4. Ruby Tutorial

  <2017-09-20 Wed 16:00-18:00>

  - [Ruby basics (part 1)](Tutorials/01_ruby_basics_1.md)

## Lesson 5. More Ruby

  <2017-09-25 Mon 14:00-16:00>

  - [Ruby basics (part 2)](Tutorials/01_ruby_basics_2.md)
  - [Calendar and Assignments](Teams/assignment.org)

## Lesson 6 & 7. Object Oriented Programming

  <2017-09-27 Wed 14:00-16:00>
  <2017-09-27 Wed 16:00-18:00>

  - [Slides](Slides/05-StructuredProgramming.odp)
  - [Example (client portfolio)](Examples/client_portfolio)

## Lesson 8. Traditional Planning Techniques

  <2017-10-16 Mon 14:00-16:00>

  In the beginning it was Gantt...

  - [Slides](Slides/06-TraditionalPlanning.odp)

## Lesson 9. Agile and Scrum

  <2017-10-18 Wed 11:00-13:00>

  ... then the Agile movement said, "Let there be less bureaucracy"

  - [Slides](Slides/07-AgileAndScrum.odp)

## Lesson 10. Agile and Scrum

  <2017-10-23 Mon 14:00-16:00>

  - [Slides on Agile](Slides/07-AgileAndScrum.odp)
  - [Slides on User Stories](Slides/08-UserStories.odp)

## Lesson 11. Ruby on Rails (part 1)

  <2017-10-25 Wed 11:00-13:00>

  Resources:
  - Rails tutorial book: https://www.railstutorial.org/book
  - Rails for Zombies: http://railsforzombies.org/

## Lesson 12. Ruby on Rails (part 2)

  <2017-11-06 Mon 14:00-16:00>

  Questionnaire link (optional): https://goo.gl/forms/4fezusYlImBm819W2

## Lesson 13. Ruby on Rails (part 3)

  <2017-11-08 Wed 14:00-16:00>

  - [Book example app](Examples/book_example_app)
  - [Rails Tutorial from AppFactory RoR DW](https://ict4g.github.io/appfactory-ror-dw/guides/incident-reporter_pt1.html)

## Lesson 14. Introduction to Software Testing

  <2017-11-13 Mon 14:00-16:00>

  - [Slides](Slides/09-Testing.pdf)
  - [Example](Examples/testing)

  Other Resources

  - [RSpec docs](https://relishapp.com/rspec)

## Lesson 15. TDD & BDD

  <2017-11-15 Wed 14:00-16:00>

  TDD Example (Calculator kata):
  - [Instructions](Tutorials/02_ruby-tdd.md)
  - [Example done in class](Examples/testing/calculator)

  Testing in Rails:
  - [Instructions](Tutorials/02_testing-rails.md) to install and setup RSpec + Cucumber in your Rails app
  - [Example scenarios](Examples/book_example_app/features/create_a_book.feature)
  - [Step definitions](Examples/book_example_app/features/stestep_definitions)
  - Check out the whole book example app (`features`, `spec/factories` directories and `Gemfile`)
  - To run the tests: `rake cucumber`

## Lesson 16. Putting all together

<2017-11-20 Mon 14:00-16:00>
    
From start to end: simulating the development process using
traditional techniques.  From requirements to a plan, from the plan
to the costs (and price).
    
Why people like TDD.

## Lesson 17. A recap on Cucumber and TDD

<2017-11-22 Wed 14:00-16:00>

Recap on Cucumber and TDD.

## Lesson 18. Putting all together (part II)

<2017-11-27 Mon 14:00-16:00>

From start to end, if you are using SCRUM: simulating the development
process using SCRUM.  From a user request to a series of incrementally
better products.  Project structure and budgeting when requirements
are known in advance.  Project structure and budgeting when
requirements are not fully known.  Why Agile is better at managing
maintenance tasks.

## Lesson 19. Quality Management

<2017-11-29 Wed 14:00-16:00>

Ooppss ... the HDMI curse hits again ... and quality management it is!

Slides: [Quality Management](http://spmbook.com/downloads/slides/pdf/C04.03-QualityManagement.key.pdf).

## Lesson 20. Evolutionary Applications development with Rails
<2017-12-04 Mon 14:00-16:00>

Double entry accounting example: version 1 and evolution. How Rails manages migrations (recap) and some special
cases in ActiveRecord relations (two foreign_keys to the same data structure).


## Lesson 21. Evolutionary Applications development with Rails (part II)
<2017-12-06 Wed 14:00-16:00>

Double entry accounting example: from version 1 to version 2 (see repo in the Examples section) and why version
2 is not the best implementation of a double-entry accounting system.

## Lesson 22. Testing, Coverage, and Assignment Retrospective
<2017-12-11 Mon 14:00-18:00>

* Scenarios: recap. Some examples on the book management system. 
* Coverage with simplecov
* Course Retrospective

## Lesson 23. Regrets and Despair. Joy and Celebrations.
<2017-12-18 Mon 14:00-16:00>

Assignment discussion and possible improvements.


