import UIKit
import SnapKit

class ViewController: UIViewController {

    // MARK: - UI Elements

    private lazy var image: UIImageView = {
        let image = UIImage(named: "BackgroundPic")
        let imageView = UIImageView(image: image)
        return imageView
    }()

    private lazy var label: UILabel = {
        let label = UILabel()
        label.text = "Login"
        label.textColor = UIColor.white
        label.font = UIFont.systemFont(ofSize: 40, weight: .bold)
        label.textAlignment = .center
        return label
    }()

    private lazy var login: UITextField = {
        let login = UITextField()
        login.placeholder = "Enter your username"
        login.textColor = .black
        login.textAlignment = .left
        login.backgroundColor = .white
        login.font = UIFont(name: "Inter-Regular", size: 14)
        login.layer.cornerRadius = 25
        login.setLeftIconLogin(UIImage(systemName: "person"))
        login.setRightIcon(UIImage(systemName: "checkmark.circle.fill"))
        login.shadowSattings(login)
        return login
    }()

    private lazy var password: UITextField = {
        let password = UITextField()
        password.placeholder = "Enter your password"
        password.font = UIFont(name: "Inter-Regular", size: 14)
        password.textColor = .black
        password.layer.cornerRadius = 25
        password.textAlignment = .left
        password.backgroundColor = .white
        password.isSecureTextEntry = true
        password.clearButtonMode = .always
        password.setLeftIconPassword(UIImage(systemName: "lock"))
        password.shadowSattings(password)
        return password
    }()

    private lazy var button: UIButton = {
        let button = UIButton()
        button.setTitle("Login", for: .normal)
        button.setTitleColor(UIColor.gray, for: .normal)
        button.clipsToBounds = true
        button.layer.cornerRadius = 25
        button.layer.borderWidth = 1
        button.layer.borderColor = UIColor.black.cgColor
        button.backgroundColor = .clear
        button.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
        return button
    }()

    private lazy var recoverPassword: UIButton = {
        let recoverPassword = UIButton()
        recoverPassword.setTitle("Forgot your password?", for: .normal)
        recoverPassword.setTitleColor(UIColor.gray, for: .normal)
        recoverPassword.backgroundColor = UIColor.clear
        recoverPassword.clipsToBounds = true
        recoverPassword.layer.cornerRadius = 25
        recoverPassword.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
        return recoverPassword
    }()

    // MARK: - LifeCycle

    override func viewDidLoad() {
        super.viewDidLoad()
        setupHierarchy()
        setupLayout()
    }

    // MARK: Setups

    private func setupHierarchy() {
        view.addSubview(image)
        view.addSubview(label)
        view.addSubview(login)
        view.addSubview(password)
        view.addSubview(button)
        view.addSubview(recoverPassword)

    }

    private func setupLayout() {
        image.snp.makeConstraints { make in
            make.top.bottom.left.right.equalToSuperview()
        }

        label.snp.makeConstraints { make in
            make.centerY.equalTo(view).offset(-300)
            make.centerX.equalTo(view)
        }

        login.snp.makeConstraints { make in
            make.top.equalTo(label.snp.bottom).offset(20)
            make.centerX.equalTo(view)
            make.height.equalTo(50)
            make.left.equalTo(40)
            make.right.equalTo(-40)
        }

        password.snp.makeConstraints { make in
            make.top.equalTo(login.snp.bottom).offset(20)
            make.centerX.equalTo(view)
            make.height.equalTo(50)
            make.left.equalTo(40)
            make.right.equalTo(-40)
        }

        button.snp.makeConstraints { make in
            make.top.equalTo(password.snp.bottom).offset(50)
            make.centerX.equalTo(view)
            make.height.equalTo(50)
            make.left.equalTo(40)
            make.right.equalTo(-40)
        }

        recoverPassword.snp.makeConstraints { make in
            make.top.equalTo(button.snp.bottom).offset(65)
            make.centerX.equalTo(view)
            make.height.equalTo(50)
            make.left.equalTo(40)
            make.right.equalTo(-40)
        }
    }

    // MARK: -Actions
    
    @objc private func buttonPressed() {
        print("Функция работает")
    }

}

