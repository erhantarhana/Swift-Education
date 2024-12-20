// The Swift Programming Language

// The Basics
let maxCarsOnGarage = 5
var currentlyRentedCars = 0

@MainActor
func rentCar() {
    if maxCarsOnGarage > currentlyRentedCars {
        currentlyRentedCars = currentlyRentedCars + 1
        print("A car has been rented. Currently, \(currentlyRentedCars) cars are rented.")
    } else {
        print("Sorry, all cars are rented")
    }
}

rentCar()

//------------------------------------------------------------------------------------------------------

// Basic Operators
var hourlyWage = 20.0 // Hourly wage in USD
var regularHours = 150.0 // Standard working hours per month
var overtimeHours = 25.0 // Overtime hours worked
var overtimeRate = 1.5 // Overtime payment rate

var regularPay = hourlyWage * regularHours
var overtimePay = hourlyWage * overtimeRate * overtimeHours
var totalPay = regularPay + overtimePay

print("Regular pay: \(regularPay) USD")
print("Overtime pay: \(overtimePay) USD")
print("Total pay: \(totalPay) USD")

//------------------------------------------------------------------------------------------------------

// Strings and Characters
var bookName = "The Metamorphosis"
var borrowerName = "John"
var borrowDate = "December 30, 2024"

var message = "Dear \(borrowerName), you have successfully borrowed '\(bookName)'. Please return it by \(borrowDate)."
print(message)

//------------------------------------------------------------------------------------------------------

// Collection Types
let courseItems = ["Algorithm Analysis", "Database Systems", "Data Structures", "Object Oriented Programming"]
let itemCredits: [String: Double] = [
    "Algorithm Analysis": 3.00,
    "Database Systems": 2.00,
    "Data Structures": 4.00,
    "Object Oriented Programming": 5.00
]

func printCourse() {
    for item in courseItems {
        if let credits = itemCredits[item] {
            print("\(item): \(credits) credits")
        }
    }
}

printCourse()

//------------------------------------------------------------------------------------------------------

// Control Flow
var score = 77

var grade: String

switch score {
    case 90...100:
        grade = "AA"
        break
    case 80..<90:
        grade = "BB"
        break
    case 70..<80:
        grade = "CC"
        break
    case 60..<70:
        grade = "DD"
        break
    default:
        grade = "FF"
}

print("The student's grade is \(grade).")

//------------------------------------------------------------------------------------------------------

// Functions
func calculateTotal(orderItems: [String], prices: [String: Double]) -> Double {
    var total = 0.0
    
    for item in orderItems {
        if let price = prices[item] {
            total += price
        }
    }
    
    return total
}

let order = ["Burger", "Kebab", "Dessert"]
let menuPrices: [String: Double] = [
    "Burger": 6.99,
    "Pizza": 10.49,
    "Kebab": 4.00,
    "Dessert": 4.99
]

let totalPrice = calculateTotal(orderItems: order, prices: menuPrices)
print("Total price for the order is $\(totalPrice).")

//------------------------------------------------------------------------------------------------------

// Closures
let courseItemsSort = [
    ("Algorithm Analysis", 3.00),
    ("Database Systems", 2.00),
    ("Data Structures", 4.00),
    ("Object Oriented Programming", 5.00)
]

let sortedCourseItems = courseItemsSort.sorted { (item1, item2) -> Bool in
    return item1.1 < item2.1
}

for item in sortedCourseItems {
    print("\(item.0): \(item.1) credit")
}

//------------------------------------------------------------------------------------------------------

// Enumerations
enum UserRole: Int {
    case admin = 1
    case user = 2
    case guest = 3
}

func roleDescription(role: UserRole) -> String {
    switch role {
        case .admin:
            return "Admin has full access to the system."
        case .user:
            return "User has limited access."
        case .guest:
            return "Guest has minimal access."
        }
}

var currentUserRole = UserRole.guest
var currentRoleDescription = roleDescription(role: currentUserRole)
print("Current role: \(currentRoleDescription)")

//------------------------------------------------------------------------------------------------------

// Structures and Classes
struct Car {
    var model: String
    var rentalPricePerDay: Double
    var isAvailable: Bool

    func rentalCost(days: Int) -> Double {
        return rentalPricePerDay * Double(days)
    }
}

var car1 = Car(model: "AUDI S3", rentalPricePerDay: 100.0, isAvailable: true)
var day = 5
var rentalCost = car1.rentalCost(days: day)
print("Rental cost for \(day) days: $\(rentalCost)")

//------------------------------------------------------------------------------------------------------

// Properties
struct Book {
    var title: String
    var numberOfPages: Int
    
    var isLargeBook: Bool {
        return numberOfPages > 1000
    }
}

var title: String = "War and Peace"
var book = Book(title: title, numberOfPages: 1200)
print("Is \(title) a large book? \(book.isLargeBook)")

//------------------------------------------------------------------------------------------------------

// Methods
class CarSpeed {
    var speed: Int
    
    init(speed: Int) {
        self.speed = speed
    }
    
    func accelerate() {
        speed = speed + 10
        print("The car's speed is now \(speed) km/h.")
    }
}

let myCar = CarSpeed(speed: 50)
myCar.accelerate() // speed -> 60
myCar.accelerate() // speed -> 70
myCar.accelerate() // speed -> 80

//------------------------------------------------------------------------------------------------------

// Subscripts
class StudentGrades {
    var grades: [String: Int]

    init(grades: [String: Int]) {
        self.grades = grades
    }

    subscript(student: String) -> Int? {
        get {
            return grades[student]
        }
        set {
            if let newGrade = newValue {
                grades[student] = newGrade
            }
        }
    }
}

let studentGrades = StudentGrades(grades: ["John": 65, "Mark": 95, "Lewis": 88])
print(studentGrades["John"]!)

studentGrades["Lewis"] = 80
print(studentGrades["Lewis"]!)

//------------------------------------------------------------------------------------------------------

// Inheritance
class Vehicle {
    var brand: String
    var model: String
    
    init(brand: String, model: String) {
        self.brand = brand
        self.model = model
    }
    
    func start() {
        print("\(brand) \(model) is starting.")
    }
    
    func stop() {
        print("\(brand) \(model) is stopping.")
    }
}

class Motorcycle: Vehicle {
    var hasSidecar: Bool
    
    init(brand: String, model: String, hasSidecar: Bool) {
        self.hasSidecar = hasSidecar
        super.init(brand: brand, model: model)
    }
    
    override func start() {
        if hasSidecar {
            print("\(brand) \(model) with a sidecar is starting with a motorcycle engine.")
        } else {
            print("\(brand) \(model) without a sidecar is starting with a motorcycle engine.")
        }
    }
}

let vehicle = Vehicle(brand: "AUDI", model: "S3")
vehicle.start()

let motorcycle = Motorcycle(brand: "Kawasaki", model: "NINJA ZX-10RR", hasSidecar: true)
motorcycle.start()

//------------------------------------------------------------------------------------------------------

// Initialization
class Author {
    var name: String
    var birthYear: Int
    
    init(name: String, birthYear: Int) {
        self.name = name
        self.birthYear = birthYear
    }
}

class BookInfo {
    var title: String
    var yearPublished: Int
    var author: Author
    
    init(title: String, yearPublished: Int, author: Author) {
        self.title = title
        self.yearPublished = yearPublished
        self.author = author
    }
    
}

let author = Author(name: "Franz Kafka", birthYear: 1883)

let book1 = BookInfo(title: "The Metamorphosis", yearPublished: 1915, author: author)
let book2 = BookInfo(title: "The Trial", yearPublished: 1925, author: author)

print("\(book1.title) was written by \(book1.author.name) and published in \(book1.yearPublished).")
print("\(book2.title) was written by \(book2.author.name) and published in \(book2.yearPublished).")

//------------------------------------------------------------------------------------------------------

// Deinitialization
class Database {
    var username: String
    var database: String

    init(username: String, database: String) {
        self.username = username
        self.database = database
        print("Connecting to the database \(database) with username \(username)...")
    }

    deinit {
        print("Closing the connection to the database \(database).")
    }
}

var dbConnection: Database? = Database(username: "user1", database: "BookDB")

dbConnection = nil

//------------------------------------------------------------------------------------------------------

// Optional Chaining
class MovieDirector {
    var name: String
    var birthYear: Int
    
    init(name: String, birthYear: Int) {
        self.name = name
        self.birthYear = birthYear
    }
}

class Movie {
    var title: String
    var director: MovieDirector?
    
    init(title: String, director: MovieDirector?) {
        self.title = title
        self.director = director
    }
}

let director = MovieDirector(name: "Lana and Lilly Wachowski", birthYear: 1965)

let movie1 = Movie(title: "The Matrix", director: director)

if let directorName = movie1.director?.name {
    print("The movie is directed by \(directorName).")
} else {
    print("The director is not available.")
}

let movie2 = Movie(title: "Untitled Movie", director: nil)

if let directorName = movie2.director?.name {
    print("The movie is directed by \(directorName).")
} else {
    print("The director is not available.")
}

//------------------------------------------------------------------------------------------------------

// Error Handling
enum BankError: Error {
    case insufficientFunds(required: Double)
    case invalidAccount
    case withdrawalLimitExceeded
}

class BankAccount {
    var balance: Double
    var withdrawalLimit: Double

    init(balance: Double, withdrawalLimit: Double) {
        self.balance = balance
        self.withdrawalLimit = withdrawalLimit
    }

    func withdraw(amount: Double) throws {
        guard amount <= withdrawalLimit else {
            throw BankError.withdrawalLimitExceeded
        }
        guard amount <= balance else {
            throw BankError.insufficientFunds(required: amount - balance)
        }

        balance -= amount
        print("Successfully withdrew $\(amount). Remaining balance: $\(balance).")
    }
}

let account = BankAccount(balance: 400.0, withdrawalLimit: 250.0)

do {
    try account.withdraw(amount: 350.0)
} catch BankError.withdrawalLimitExceeded {
    print("Withdrawal limit exceeded.")
} catch BankError.insufficientFunds(let required) {
    print("Insufficient funds. You need an additional $\(required).")
} catch {
    print("An unexpected error occurred: \(error).")
}

//------------------------------------------------------------------------------------------------------

// Concurrency
import Foundation

func prepareMeal(order: String, completion: @escaping @Sendable (String) -> Void) {
    print("Order received: \(order)")
    DispatchQueue.global().async {
        print("Preparing \(order)...")
        sleep(2)
        let preparedMeal = "\(order) is ready!"
        
        DispatchQueue.main.async {
            completion(preparedMeal)
        }
    }
}

func takeOrders(orders: [String]) {
    for order in orders {
        prepareMeal(order: order) { preparedMeal in
            print(preparedMeal)
        }
    }
}

let orders = ["Pizza", "Kebab", "Burger"]
takeOrders(orders: orders)

//------------------------------------------------------------------------------------------------------

// Type Casting
class MusicalInstrument {
    var name: String
    init(name: String) {
        self.name = name
    }
}

class Piano: MusicalInstrument {
    var numberOfKeys: Int
    init(name: String, numberOfKeys: Int) {
        self.numberOfKeys = numberOfKeys
        super.init(name: name)
    }
    
    func play() {
        print("The \(name) with \(numberOfKeys) keys is being played.")
    }
}

class Guitar: MusicalInstrument {
    var numberOfStrings: Int
    init(name: String, numberOfStrings: Int) {
        self.numberOfStrings = numberOfStrings
        super.init(name: name)
    }
    
    func strum() {
        print("The \(name) with \(numberOfStrings) strings is being strummed.")
    }
}

let instruments: [MusicalInstrument] = [
    Piano(name: "Grand Piano", numberOfKeys: 88),
    Guitar(name: "Acoustic Guitar", numberOfStrings: 6),
    Piano(name: "Electric Piano", numberOfKeys: 61),
    MusicalInstrument(name: "Unknown Instrument")
]

for instrument in instruments {
    if let piano = instrument as? Piano {
        piano.play()
    } else if let guitar = instrument as? Guitar {
        guitar.strum()
    } else {
        print("The \(instrument.name) is an undefined instrument.")
    }
}

//------------------------------------------------------------------------------------------------------

// Nested Types
struct University {
    var name: String
    var faculties: [Faculty]

    struct Faculty {
        var name: String
        var departments: [Department]

        struct Department {
            var name: String
            var courses: [String]
        }
    }
}

let engineeringFaculty = University.Faculty(
    name: "Engineering",
    departments: [
        University.Faculty.Department(
            name: "Computer Engineering",
            courses: ["Algorithms", "Mobile Development"]
        ),
        University.Faculty.Department(
            name: "Physics Engineering",
            courses: ["Thermodynamics", "Physics I"]
        )
    ]
)

let university = University(
    name: "X University",
    faculties: [engineeringFaculty]
)

for faculty in university.faculties {
    print("Faculty: \(faculty.name)")
    for department in faculty.departments {
        print("- Department: \(department.name)")
        for course in department.courses {
            print("  - Course: \(course)")
        }
    }
}

//------------------------------------------------------------------------------------------------------

// Extensions
class Product {
    var name: String
    var price: Double
    
    init(name: String, price: Double) {
        self.name = name
        self.price = price
    }
}

extension Product {
    func displayProductInfo() {
        print("Product Name: \(name)")
        print("Price: $\(price)")
    }
}

let product = Product(name: "Game Console", price: 999.99)
product.displayProductInfo()

//------------------------------------------------------------------------------------------------------

// Protocols
protocol Drivable {
    func drive()
}

protocol Swimmable {
    func swim()
}

class Human: Drivable, Swimmable {
    func drive() {
        print("The human is driving.")
    }
    
    func swim() {
        print("The human is swimming.")
    }
}

let human = Human()
human.drive()
human.swim()

//------------------------------------------------------------------------------------------------------

// Generics
struct Person<T> {
    var name: String
    var item: T
    
    init(name: String, item: T) {
        self.name = name
        self.item = item
    }
    
    func describe() {
        print("\(name) has a \(item).")
    }
}

let person1 = Person(name: "Max", item: "book")
let person2 = Person(name: "Lewis", item: "laptop")
let person3 = Person(name: "Charles", item: "phone")

person1.describe()
person2.describe()  
person3.describe()