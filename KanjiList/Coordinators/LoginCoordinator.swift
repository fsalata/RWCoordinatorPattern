import UIKit

class LoginCoordinator: Coordinator {
    private let presenter: UINavigationController
    private var loginViewController: LoginViewController?
    private var allKanjiListCoordnator: AllKanjiListCoordinator?
    
    init(presenter: UINavigationController) {
        self.presenter = presenter
    }
    
    func start() {
        let loginViewController = LoginViewController()
        loginViewController.delegate = self
        
        presenter.pushViewController(loginViewController, animated: true)
        self.loginViewController = loginViewController
    }
}

extension LoginCoordinator: LoginViewControllerDelegate {
    func handleLogin() {
        let kanjiStorage = KanjiStorage()
        let allKanjiListCoordnator = AllKanjiListCoordinator(presenter: self.presenter, kanjiStorage: kanjiStorage)
        allKanjiListCoordnator.start()
        
        self.allKanjiListCoordnator = allKanjiListCoordnator
    }
}
