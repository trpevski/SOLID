import UIKit

///Open for extension: Should be able to extend or change the behaviours of a class without efforts.
///Closed for modification: Must extend a class without changing the implementation.
class Car: VehicleDetails {

    
    let model: String
    let manufacturer: String
    
    init(model: String, manufacturer: String) {
        self.model = model
        self.manufacturer = manufacturer
    }
    
    
    func printDetails() {
        print("Model:\(self.model), Manufacturer:\(manufacturer)")
    }
}


class Trailer: VehicleDetails {
    let manufacturer: String
    let capacity: Double
    
    init(capacity: Double, manufacturer: String) {
        self.capacity = capacity
        self.manufacturer = manufacturer
    }
    
    func printDetails() {
        print("Capacity:\(self.capacity), Manufacturer:\(manufacturer)")
    }
    
}

///Through protocols we are extending class functionalities. Class definition should remain the same.
protocol VehicleDetails {
    func printDetails()
}
