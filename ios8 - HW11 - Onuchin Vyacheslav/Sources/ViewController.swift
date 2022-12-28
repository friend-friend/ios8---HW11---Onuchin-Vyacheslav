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

    }

    private func setupLayout() {
        image.snp.makeConstraints { make in
            make.top.bottom.left.right.equalToSuperview()
        }

        label.snp.makeConstraints { make in
            make.centerY.equalTo(view).offset(-250)
            make.centerX.equalTo(view)
        }
    }

    // MARK: -Actions

}

