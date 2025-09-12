import Foundation

class MenuRepo {
    var popcornMenu: [MenuItem] = [ ]
    var drinksMenu: [MenuItem] = [ ]
    var sideMenu: [MenuItem] = [ ]
    
    init() {
        
        popcornMenu.append(MenuItem(name: "Original Popcorn", price: 5.5, description: "오리지날 팝콘"))
        popcornMenu.append(MenuItem(name: "Garlic Popcorn", price: 5.5, description: "갈릭 팝콘"))
        popcornMenu.append(MenuItem(name: "Caramel Popcorn", price: 6.5, description: "카라멜 팝콘"))
        popcornMenu.append(MenuItem(name: "Cheeze Popcorn", price: 5.5, description: "치즈 팝콘"))
        popcornMenu.append(MenuItem(name: "Chocolate Popcorn", price: 6.0, description: "초콜릿 팝콘"))
        
        
        drinksMenu.append(MenuItem(name: "CocaCola", price: 3.0, description: "코카콜라"))
        drinksMenu.append(MenuItem(name: "Fanta Orange", price: 3.0, description: "환타 오렌지"))
        drinksMenu.append(MenuItem(name: "Lemonade", price: 5.0, description: "레몬에이드"))
        drinksMenu.append(MenuItem(name: "Sprite", price: 3.0, description: "스프라이트"))
        drinksMenu.append(MenuItem(name: "CocaCola Zero", price: 2.5, description: "코카콜라 제로"))
        
        
        sideMenu.append(MenuItem(name: "Grilled Hot Chicken", price: 8.0, description: "그릴 핫 치킨"))
        sideMenu.append(MenuItem(name: "Cheeze Ball", price: 6.0, description: "황금알치즈볼"))
        sideMenu.append(MenuItem(name: "Corn Dog", price: 4.5, description: "핫도그"))
        sideMenu.append(MenuItem(name: "Grilled Squid", price: 9.0, description: "통찡어"))
        sideMenu.append(MenuItem(name: "French Fries", price: 6.0, description: "감자튀김"))
        
        
        
        
        
        
    }
    
    func items(in category: Category) -> [MenuItem] {
        if category == .popcorn {
            return popcornMenu
        } else if category == .drinks {
            return drinksMenu
        } else if category == .side {
            return sideMenu
        } else {
            return [ ]
        }
    }
    
    
    func item(in category: Category, at index: Int) -> MenuItem? {
        let arr = items(in: category)
        if index < 1 { return nil }
        if index > arr.count { return nil }
        return arr[index - 1]
    }
    
}
