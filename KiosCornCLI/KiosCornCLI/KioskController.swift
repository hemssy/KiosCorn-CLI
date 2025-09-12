import Foundation

final class KioskController {
    private let repo = MenuRepo()
    private let order = Order()
    private var running = true

    func run() {
        printWelcome()

        while running {
            printMainMenu()
            printPrompt()

            guard let choice = readInt() else {
                printInvalidInput()
                continue
            }

            if choice == 0 {
                printExit()
                running = false
                break
            }

            guard let category = Category(rawValue: choice) else {
                printInvalidNumber()
                continue
            }

            handleCategory(category)
        }
    }

    private func handleCategory(_ category: Category) {
        while true {
            printCategoryHeader(category)

            let items = repo.items(in: category)
            printCategoryMenu(category: category, items: items)
            printPrompt()

            guard let sub = readInt() else {
                printInvalidInput()
                continue
            }

            if sub == 0 {
                printBackToMain()
                return
            }

            if let item = repo.item(in: category, at: sub) {
                order.add(item)
                printAdded(item)
            } else {
                printInvalidNumber()
            }
        }
    }
}


func readInt() -> Int? {
    guard let s = readLine(), let v = Int(s) else { return nil }
    return v
}

