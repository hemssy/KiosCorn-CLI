import Foundation

class MenuRepo {

    var allItems: [MenuItem] = []

    init() {
        // Popcorn
        allItems.append(PopcornItem(name: "Original Popcorn",  price: 5.5, description: "오리지날 팝콘"))
        allItems.append(PopcornItem(name: "Garlic Popcorn",    price: 5.5, description: "갈릭 팝콘"))
        allItems.append(PopcornItem(name: "Caramel Popcorn",   price: 6.5, description: "카라멜 팝콘"))
        allItems.append(PopcornItem(name: "Cheese Popcorn",    price: 5.5, description: "치즈 팝콘"))
        allItems.append(PopcornItem(name: "Chocolate Popcorn", price: 6.0, description: "초콜릿 팝콘"))

        allItems.append(DrinkItem(name: "CocaCola",       price: 3.0, description: "코카콜라"))
        allItems.append(DrinkItem(name: "Fanta Orange",   price: 3.0, description: "환타 오렌지"))
        allItems.append(DrinkItem(name: "Lemonade",       price: 5.0, description: "레몬에이드"))
        allItems.append(DrinkItem(name: "Sprite",         price: 3.0, description: "스프라이트"))
        allItems.append(DrinkItem(name: "CocaCola Zero",  price: 2.5, description: "코카콜라 제로"))

        allItems.append(SideItem(name: "Grilled Hot Chicken", price: 8.0, description: "그릴 핫 치킨"))
        allItems.append(SideItem(name: "Cheese Ball",         price: 6.0, description: "황금알치즈볼"))
        allItems.append(SideItem(name: "Corn Dog",            price: 4.5, description: "핫도그"))
        allItems.append(SideItem(name: "Grilled Squid",       price: 9.0, description: "통오징어"))
        allItems.append(SideItem(name: "French Fries",        price: 6.0, description: "감자튀김"))
    }

    func items(in category: Category) -> [MenuItem] {
        var result: [MenuItem] = []
        var i = 0
        while i < allItems.count {
            let item = allItems[i]
            if item.category == category {
                result.append(item)
            }
            i += 1
        }
        return result
    }

    func item(in category: Category, at index: Int) -> MenuItem? {
        let arr = items(in: category)
        if index < 1 { return nil }
        if index > arr.count { return nil }
        return arr[index - 1]
    }
}

