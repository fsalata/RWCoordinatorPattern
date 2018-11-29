import UIKit

protocol LoginViewControllerDelegate: class {
    func handleLogin()
}

class LoginViewController: UIViewController {
    
    weak var delegate: LoginViewControllerDelegate?
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func handleLoginPressed(_ sender: Any) {
        delegate?.handleLogin()
    }
}
