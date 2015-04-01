//let constants
let tutorialTeam = 60
let editorialTeam = 17

//var variables
var totalTeam = tutorialTeam + editorialTeam
totalTeam += 1

//Well, declaring things with let whenever possible is best practice, because that will allow the compiler to perform optimizations that it wouldn’t be able to do otherwise. So remember: prefer let!

// ###Explicit vs. Inferred Typing ###

let tutorialTeamSecond: Int = 60

// ### Basic Types and Control Flow in Swift ###
let priceInferred = 19.99
let priceExplicit: Double = 19.99

//true or false not YES or NO
let onSaleInferred = true
let onSaleExplicit: Bool = false


// NOT @
let nameInferred = "Whoopie Cushion"
let nameExplicit: String = "Whoopie Cushion"


//The parentheses around the condition are optiona
if onSaleInferred {

//    Whenever you want to substitute something in a string in Swift, simply use this syntax: \(your expression).
    
    println("\(nameInferred) on sale for \(priceInferred)!")
} else {
    println("\(nameInferred) at regular price: \(priceInferred)!")
}