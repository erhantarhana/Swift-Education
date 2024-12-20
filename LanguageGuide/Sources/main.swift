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