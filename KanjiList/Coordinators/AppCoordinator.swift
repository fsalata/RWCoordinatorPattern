import UIKit

class AppCoordinator: Coordinator {
    let window: UIWindow
    let rootViewController: UINavigationController
    let loginCoordinator: LoginCoordinator
    
    init(window: UIWindow) {
        self.window = window
        rootViewController = UINavigationController()
        rootViewController.navigationBar.prefersLargeTitles = true
        
        loginCoordinator = LoginCoordinator(presenter: rootViewController)
    }
}

extension AppCoordinator {
    func start() {
        window.rootViewController = rootViewController
        loginCoordinator.start()
        window.makeKeyAndVisible()
    }
}
