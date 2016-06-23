//: ## Writing Structs with Properties Exercises
//: In these exercises, you work with structs and their properties.
/*:
### Exercise 1

Create a struct called Author that contains the following properties:

- firstName (String, constant)
- lastName (String, constant)
- living (Bool, variable)

*/
struct Author {
    let firstName: String
    let lastName: String
    var living: Bool
}

/*:
### Exercise 2

Create a struct called Book that contains the following properties:

- title (String, constant)
- author (Author, constant)
- pages (Int, constant)
- numberOfStars (Double, variable)
- description (String, variable)
- genre (String, variable)

*/
struct Book {
    let title: String
    let author: Author
    let pages: Int
    var numberOfStars: Double
    var description: String
    var genre: String
}

/*:
### Exercise 3

Create instances of authors and books based on the following statements:

- Wilson Rawls was born on September 24, 1913 and passed away on December 16, 1984. He wrote the children's book "Where the Red Fern Grows". This book is about a young boy and his hunting dogs. It is 245 pages and has a 4/5 rating by Common Sense Media.
- John Ronald Reuel (J. R. R.) Tolkien was born on January 3, 1892 and passed away on September 2, 1973. He wrote the fantasy book "The Hobbit". "The Hobbit" follows the treasure-seeking quest of hobbit Bilbo Baggins and it is about 300 pages long. It has a 4.5/5 rating by Barnes & Noble.
- Mary Shelley was born on August 30, 1797 and passed away on February 1, 1851. She wrote the Gothic novel "Frankenstein". "Frankenstein" is about a young science student named Victor Frankenstein who creates a sentient creature in an unorthodox scientific experiment. It is 280 pages long and has a 4.7/5 rating from Google user reviews.

*/
var wilsonRawls = Author(firstName: "Wilson", lastName: "Rawls", living: false)
var johnTolkien = Author(firstName: "Tolkien", lastName: "John", living: false)
var maryShelley = Author(firstName: "Shelley", lastName: "Mary", living: false)

var whereTheRedFernGrows = Book(title: "Where the Red Fern Grows", author: wilsonRawls, pages: 245, numberOfStars: 4.0, description: "Young boy and his hunting dogs", genre: "Children")
var theHobbit = Book(title: "The Hobbit", author: johnTolkien, pages: 300, numberOfStars: 4.5, description: "Bilbo Baggins goes on a treasure-seeking quest", genre: "Fantasy")
var frankenstein = Book(title: "Frankenstein", author: maryShelley, pages: 280, numberOfStars: 4.7, description: "Victor Frankenstein creates a sentient creature in unorthodox scientific experiment", genre: "Gothic")

