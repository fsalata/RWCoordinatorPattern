import UIKit

class AppCoordinator: Coordinator {
    let kanjiStorage: KanjiStorage
    let window: UIWindow
    let rootViewController: UINavigationController
    let allKanjiListCoordinator: AllKanjiListCoordinator
    
    init(window: UIWindow) {
        self.window = window
        kanjiStorage = KanjiStorage()
        rootViewController = UINavigationController()
        rootViewController.navigationBar.prefersLargeTitles = true
        
        allKanjiListCoordinator = AllKanjiListCoordinator(presenter: rootViewController,
                                                          kanjiStorage: kanjiStorage)
    }
}

extension AppCoordinator {
    func start() {
        window.rootViewController = rootViewController
        allKanjiListCoordinator.start()
        window.makeKeyAndVisible()
    }
}
