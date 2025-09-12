import Foundation

func printWelcome() {
    print("키오스크를 시작합니다.\n")
    print("아래 메뉴판을 보시고 메뉴를 골라 입력해주세요.")
}

func printMainMenu() {
    print("""
    [ MEGA_SNACK MENU ]
    1. Popcorn   | 팝콘
    2. Drinks    | 음료
    3. Side      | 사이드 스낵
    0. 종료       | 프로그램 종료
    """)
}

func printPrompt() {
    print("번호를 입력해주세요: ", terminator: "")
}

func printExit() {
    print("프로그램을 종료합니다.")
}

func printInvalidInput() {
    print("잘못된 입력입니다. 다시 입력해주세요.\n")
}

func printInvalidNumber() {
    print("잘못된 번호입니다. 다시 입력해주세요.\n")
}

func printCategoryHeader(_ category: Category) {
    print("\(category.title) 메뉴를 선택했습니다.")
}

func printCategoryMenu(category: Category, items: [MenuItem]) {
    print("[ \(category.title) MENU ]")
    var i = 0
    while i < items.count {
        let n = i + 1
        let it = items[i]
        print("\(n). \(it.name)    | W \(it.price) | \(it.description)")
        i += 1
    }
    print("0. 뒤로가기      | 뒤로가기")
}

func printBackToMain() {
    print("메인 메뉴로 돌아갑니다.\n")
}

func printAdded(_ item: MenuItem) {
    print("✅ \(item.name) (W \(item.price)) 담았습니다.\n")
}

