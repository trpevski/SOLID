import UIKit

protocol Storable {}

struct User: Storable {
    let name: String
    let identifier: String
}

protocol UserTransaction {
    func add(user: User)
    func edit(user: User)
    func delete(identifier: String)
}

protocol DataStore {
    func insert<T>(_ data: T) where T: Storable
    func update<T>(_ data: T)  where T: Storable
    func delete(identifier: String)
}

final class DefaultUserTransaction: UserTransaction {
    private let dataStore: DataStore
    
    init(dataStore: DataStore) {
        self.dataStore = dataStore
    }
    
    func add(user: User) {
        dataStore.insert(user)
    }
    
    func edit(user: User) {
        dataStore.update(user)
    }
    
    func delete(identifier: String) {
        dataStore.delete(identifier: identifier)
    }
}
