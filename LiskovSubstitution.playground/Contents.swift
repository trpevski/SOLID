import UIKit

class Rectangle {
    var width: Double
    var height: Double

    init(width: Double, height: Double) {
        self.width = width
        self.height = height
    }

    func area() -> Double {
        return width * height
    }
}

class Square: Rectangle {
    override var width: Double {
        didSet {
            height = width
        }
    }

    override var height: Double {
        didSet {
            width = height
        }
    }

    init(side: Double) {
        super.init(width: side, height: side)
    }
}

func printArea(rectangle: Rectangle) {
    let area = rectangle.area()
    print("Area: \(area)")
}

///square class is substitutable for the Rectangle class without affecting the correctness of the program
let square = Square(side: 50.0)
printArea(rectangle: square)
