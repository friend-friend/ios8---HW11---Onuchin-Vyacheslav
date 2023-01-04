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
        login.layer.borderWidth = 1
        login.layer.borderColor = UIColor.black.cgColor
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
        password.layer.borderWidth = 1
        password.layer.borderColor = UIColor.black.cgColor
        password.isSecureTextEntry = true
        password.clearButtonMode = .always
        password.setLeftIconPassword(UIImage(systemName: "lock"))
        password.shadowSattings(password)
        return password
    }()

    private lazy var button: UIButton = {
        let button = UIButton()
        button.setTitle("Login", for: .normal)
        button.setTitleColor(UIColor.black, for: .normal)
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
        recoverPassword.setTitleColor(UIColor.systemBlue, for: .normal)
        recoverPassword.backgroundColor = UIColor.clear
        recoverPassword.clipsToBounds = true
        recoverPassword.layer.cornerRadius = 25
        recoverPassword.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
        return recoverPassword
    }()

    private lazy var otherloginMethodsLabel: UILabel = {
        let otherloginMethodsLabel = UILabel()
        otherloginMethodsLabel.text = "or connect with"
        otherloginMethodsLabel.textColor = UIColor.black
        otherloginMethodsLabel.font = UIFont.systemFont(ofSize: 15, weight: .medium)
        otherloginMethodsLabel.textAlignment = .center
        return otherloginMethodsLabel
    }()

    private lazy var stripeLeftView: UIView = {
        let view = UIView()
        view.backgroundColor = .gray
        view.layer.cornerRadius = 25
        return view
    }()

    private lazy var stripeRightView: UIView = {
        let view = UIView()
        view.backgroundColor = .gray
        view.layer.cornerRadius = 25
        return view
    }()

    private lazy var facebookButton: UIButton = {
        let facebookButton = UIButton(type: .custom)
        facebookButton.setImage(UIImage(systemName: "bonjour"), for: .normal)
        facebookButton.imageView?.tintColor = .black
        facebookButton.imageEdgeInsets = UIEdgeInsets(top: 0, left: -20, bottom: 0, right: 0)
        facebookButton.setTitle("Facebook", for: .normal)
        facebookButton.setTitleColor(UIColor.black, for: .normal)
        facebookButton.clipsToBounds = true
        facebookButton.layer.cornerRadius = 20
        facebookButton.layer.borderWidth = 1
        facebookButton.layer.borderColor = UIColor.black.cgColor
        facebookButton.backgroundColor = .clear
        facebookButton.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
        return facebookButton
    }()

    private lazy var twitterButton: UIButton = {
        let twitterButton = UIButton(type: .custom)
        twitterButton.setImage(UIImage(systemName: "trash"), for: .normal)
        twitterButton.imageView?.tintColor = .black
        twitterButton.imageEdgeInsets = UIEdgeInsets(top: 0, left: -20, bottom: 0, right: 0)
        twitterButton.setTitle("Twitter", for: .normal)
        twitterButton.setTitleColor(UIColor.black, for: .normal)
        twitterButton.clipsToBounds = true
        twitterButton.layer.cornerRadius = 20
        twitterButton.layer.borderWidth = 1
        twitterButton.layer.borderColor = UIColor.black.cgColor
        twitterButton.backgroundColor = .clear
        twitterButton.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
        return twitterButton
    }()

    private lazy var registrationLabel: UILabel = {
        let registrationLabel = UILabel()
        registrationLabel.text = "Dont have account?"
        registrationLabel.textColor = UIColor.black
        registrationLabel.font = UIFont.systemFont(ofSize: 15, weight: .medium)
        registrationLabel.textAlignment = .center
        return registrationLabel
    }()

    private lazy var signUp: UIButton = {
        let signUp = UIButton()
        signUp.setTitle("Sign up", for: .normal)
        signUp.setTitleColor(UIColor.systemBlue, for: .normal)
        signUp.backgroundColor = UIColor.clear
        signUp.clipsToBounds = true
        signUp.layer.cornerRadius = 0
        signUp.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
        return signUp
    }()

    // MARK: - LifeCycle

    override func viewDidLoad() {
        super.viewDidLoad()
        setupHierarchy()
        setupLayout()
    }

    // MARK: Setups

    private func setupHierarchy() {
        [image, label, login, password, button, recoverPassword, otherloginMethodsLabel, stripeLeftView, stripeRightView, facebookButton, twitterButton, registrationLabel, signUp].forEach {view.addSubview($0)}
    }

    func addTapGestureToHideKeyboard() {
        let tapGesture = UITapGestureRecognizer(target: view, action: #selector(view.endEditing))
        view.addGestureRecognizer(tapGesture)
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

        otherloginMethodsLabel.snp.makeConstraints { make in
            make.centerY.equalTo(view).offset(200)
            make.centerX.equalTo(view)
        }

        stripeLeftView.snp.makeConstraints { make in
            make.left.equalTo(otherloginMethodsLabel.snp.left).offset(-130)
            make.centerY.equalTo(otherloginMethodsLabel)
            make.height.equalTo(1)
            make.width.equalTo(130)
        }

        stripeRightView.snp.makeConstraints { make in
            make.right.equalTo(otherloginMethodsLabel.snp.right).offset(130)
            make.centerY.equalTo(otherloginMethodsLabel)
            make.height.equalTo(1)
            make.width.equalTo(130)
        }

        facebookButton.snp.makeConstraints { make in
            make.top.equalTo(otherloginMethodsLabel.snp.bottom).offset(20)
            make.centerX.equalTo(view).offset(-95)
            make.left.equalTo(20)
            make.height.equalTo(40)
        }

        twitterButton.snp.makeConstraints { make in
            make.top.equalTo(otherloginMethodsLabel.snp.bottom).offset(20)
            make.centerX.equalTo(view).offset(95)
            make.right.equalTo(-20)
            make.height.equalTo(40)
        }

        registrationLabel.snp.makeConstraints { make in
            make.top.equalTo(facebookButton.snp.bottom).offset(40)
            make.centerX.equalTo(view).offset(-30)
//            make.left.equalTo(40)
        }

        signUp.snp.makeConstraints { make in
            make.top.equalTo(facebookButton.snp.bottom).offset(40)
            make.left.equalTo(registrationLabel.snp.right).offset(10)
            make.height.equalTo(20)
        }
    }

    // MARK: -Actions
    
    @objc private func buttonPressed() {
        print("Функция работает")
    }

}

