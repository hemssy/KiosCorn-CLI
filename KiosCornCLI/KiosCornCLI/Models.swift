import Foundation

enum Category: Int {
    case popcorn = 1
    case drinks = 2
    case side = 3
    
    var title: String {
        switch self  {
        case .popcorn: return "Popcorn"
        case.drinks: return "Drinks"
        case.side: return "Side"
        }
    }
}

struct MenuItem {
    let name: String
    let price: Double
    let description: String
}

class Order {
    var items: [MenuItem] = [ ]
    
    func add(_ item: MenuItem) {
        items.append(item)
    }
    
    func clear() {
        items.removeAll()
    }
    

    func total() -> Double {
        var sum = 0.0
        for item in items {
            sum += item.price
        }
        return sum
    }
}
