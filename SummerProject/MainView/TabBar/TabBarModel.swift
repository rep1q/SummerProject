import UIKit


enum TabBarModel{
    case main
    case favourite
    case profile
    
    var title: String{
        switch self {
        case .main:
            return "Главная"
        case .favourite:
            return "Избранное"
        case .profile:
            return "Профиль"
        }
    }
    
    
    var image: UIImage?{
        switch self {
        case .main:
            return UIImage(named: "MainTab")
        case .favourite:
            return UIImage(named: "FavouriteTab")
        case .profile:
            return UIImage(named: "ProfileTab")
        }
    }
    var selectedImage: UIImage?{
        return image
    }
    
}
