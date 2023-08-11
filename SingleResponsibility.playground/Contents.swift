import UIKit

///This repositor implementation contains more than one responsibility
class ItemsRepository {

	// MARK: - Fetch data
	func fetch() -> [Int] {
		return Array(0...10)
	}

	// MARK: - Save items
	func saveData(items: [Int]) {}

	// MARK: - Modify items
	func modifyData(items: [Int]) -> [Int] {
		return items.map({ $0 * 10 })
	}
}

// MARK: - Repository implementation using Single responsibility principle
class Repository {

	// MARK: - External services
	let dataService: DataService
	let networkService: NetworkService

	// MARK: - Init
	init(
		dataService: DataService,
		networkService: NetworkService
	) {
		self.dataService = dataService
		self.networkService = networkService
	}

}

// MARK: - DataService
class DataService {

	// MARK: - Save items
	func saveData(items: [Int]) {}
	// MARK: - Modify items
	func modifyData(items: [Int]) -> [Int] {
		return items.map({ $0 * 10 })
	}
}


// MARK: - NetworkService
class NetworkService {
	// MARK: - Fetch
	func fetch() -> [Int] {
		return Array(0...10)
	}
}


let repository = Repository(dataService: DataService(), networkService: NetworkService())
let items = repository.networkService.fetch()
print(items)
print(repository.dataService.modifyData(items: items))
