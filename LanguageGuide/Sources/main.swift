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