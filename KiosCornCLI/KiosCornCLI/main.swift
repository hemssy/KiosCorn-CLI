import Foundation

func showMainMenu() {
    print("""
        [ MEGA_SNACK MENU ]
        1. Popcorn   | 팝콘
        2. Drinks    | 음료
        3. Side      | 사이드 스낵
        0. 종료       | 프로그램 종료
        """)
}

func showPopcornMenu() {
    print("""
        [ Popcorn MENU ]
        1. Original Popcorn    | W 5.5 | 오리지날 팝콘
        2. Garlic Popcorn      | W 5.5 | 갈릭 팝콘
        3. Caramel Popcorn     | W 6.5 | 카라멜 팝콘
        4. Cheeze Popcorn      | W 5.5 | 치즈 팝콘
        5. Chocolate Popcorn   | W 6.0 | 초콜릿 팝콘
        0. 뒤로가기      | 뒤로가기
        """)
    
}

func showDrinksMenu() {
    print("""
        [ Drinks MENU ]
        1. CocaCola            | W 3.0 | 코카콜라
        2. Fanta Orange        | W 3.0 | 환타 오렌지
        3. Lemonade            | W 5.0 | 레몬에이드
        4. Sprite              | W 3.0 | 스프라이트
        5. CocaCola Zero       | W 2.5 | 코카콜라 제로
        0. 뒤로가기      | 뒤로가기
        """)
    
}

func showSideMenu() {
    print("""
        [ Side MENU ]
        1. Grilled Hot Chicken | W 8.0 | 그릴 핫 치킨
        2. Cheeze Ball         | W 6.0 | 황금알치즈볼
        3. Corn Dog            | W 4.5 | 핫도그
        4. Grilled Squid       | W 9.0 | 통찡어
        5. French Fries        | W 6.0 | 감자튀김
        0. 뒤로가기      | 뒤로가기
        """)
    
}

func runKiosk() {
    var isRunning = true
    
    while isRunning {
        print("키오스콘을 시작합니다.")
        
        print("아래 메뉴판을 보시고 메뉴를 골라 입력해주세요.")
        
        showMainMenu()
        
        guard let input = readLine(), let choice = Int(input) else {
            print("잘못된 입력입니다. 다시 입력해주세요.")
            continue
        }
        
        switch choice {
        case 1:
            print("Drinks 메뉴를 선택했습니다.")
            showPopcornMenu()
            print("번호를 입력해주세요: ", terminator: "")
            
            if let subInput = readLine(), subInput == "0" {
                print("메인 메뉴로 돌아갑니다.")
            }
            
        case 2:
            print("Drinks 메뉴를 선택했습니다.")
            showDrinksMenu()
            
            if let subInput = readLine(), subInput == "0" {
                print("메인 메뉴로 돌아갑니다.")
            }
            
        case 3:
            print("Side 메뉴를 선택했습니다.")
            showSideMenu()
            
            if let subInput = readLine(), subInput == "0" {
                print("메인 메뉴로 돌아갑니다.")
            }
            
        case 0:
            print("프로그램을 종료합니다.")
            isRunning = false
            
        default:
            print("잘못된 번호입니다. 다시 입력해주세요.\n")
        }
    }
}


runKiosk()
