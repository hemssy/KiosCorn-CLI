import Foundation

enum Category: Int {
    case popcorn = 1
    case drinks = 2
    case side = 3

    var title: String {
        switch self  {
        case .popcorn: return "Popcorn"
        case .drinks:  return "Drinks"
        case .side:    return "Side"
        }
    }
}

class MenuItem {
    var name: String
    var price: Double
    var description: String
    var category: Category

    init(name: String, price: Double, description: String, category: Category) {
        self.name = name
        self.price = price
        self.description = description
        self.category = category
    }
}

class PopcornItem: MenuItem {
    init(name: String, price: Double, description: String) {
        super.init(name: name, price: price, description: description, category: .popcorn)
    }
}

class DrinkItem: MenuItem {
    init(name: String, price: Double, description: String) {
        super.init(name: name, price: price, description: description, category: .drinks)
    }
}

class SideItem: MenuItem {
    init(name: String, price: Double, description: String) {
        super.init(name: name, price: price, description: description, category: .side)
    }
}

class Order {
    var items: [MenuItem] = []

    func add(_ item: MenuItem) {
        items.append(item)
    }

    func clear() {
        items.removeAll()
    }

    func total() -> Double {
        var sum = 0.0
        var i = 0
        while i < items.count {
            sum += items[i].price
            i += 1
        }
        return sum
    }
}

