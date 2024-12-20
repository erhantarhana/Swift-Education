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