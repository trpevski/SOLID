import UIKit

protocol PrintModel {
	func printModel()
}

protocol PrintYear {
	func printYear()
}

protocol PrintSpeed {
	func printSpeed()
}

protocol PrintShifter {
    func printShifter()
}

class Car {

	let model: String
	let year: Int
	let speed: Double

	init(model: String, year: Int, speed: Double) {
		self.model = model
		self.year = year
		self.speed = speed
	}
}

class Bicycle {

    let model: String
    let year: Int
    let shifter: String

    init(model: String, year: Int, shifter: String) {
        self.model = model
        self.year = year
        self.shifter = shifter
    }
}

extension Car: PrintModel, PrintYear, PrintSpeed {
    func printModel() {
        print(model)
    }
    
    func printYear() {
        print(year)
    }
    
    func printSpeed() {
        print(speed)
    }
}


extension Bicycle: PrintModel, PrintYear, PrintShifter {
    func printModel() {
        print(model)
    }
    
    func printYear() {
        print(year)
    }
    
    func printShifter() {
        print(shifter)
    }
}
