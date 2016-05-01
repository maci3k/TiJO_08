Feature: Zad2
  Scenario: Warner Bridges
    When I browse to the "/"
    When I enter "War" into "input.search" field
    Then the css element "td:nth-of-type(4)" should contain the text "warner.bridges@undefined.biz"

   Scenario: First row
     When I browse to the "/"
     When I enter "c" into "input.search" field
     Then I should see "+1 (942) 551-2179" in "phone" column in row "1" of "student.table" table

   Scenario: 30 year old
     When I browse to the "/"
     When I enter "30" into "input.age" field
     Then I should see "30" in "age" column in row "1" of "student.table" table
     Then the css element "td:nth-of-type(1)" should contain the text "Knapp"

    Scenario: Advanced searching
      When I browse to the "/"
      When I enter "Good" into "input.first" field
      When I enter "Burnett" into "input.last" field
      When I enter "27" into "input.age" field
      When I enter "good.burnett@undefined.tv" into "input.email" field
      When I enter "+1 (820) 450-3124" into "input.phone" field
      Then I should see "Good" in "firstName" column in row "1" of "student.table" table
      Then the css element "td:nth-of-type(2)" should contain the text "Burnett"
      Then the css element "td:nth-of-type(3)" should contain the text "27"
      Then I should see "good.burnett@undefined.tv" in "email" column in row "1" of "student.table" table
      Then I should see "+1 (820) 450-3124" in "phone" column in row "1" of "student.table" table

     Scenario: Multiple rows
       When I browse to the "/"
       When I enter "2" into "input.age" field
       Then I should see "bauer.spencer@undefined.us" in "email" column in row "1" of "student.table" table
       Then I should see "Gutierrez" in "firstName" column in row "4" of "student.table" table
       Then I should see "Rose" in "lastName" column in row "6" of "student.table" table