import UIKit
import SnapKit

class ViewController: UIViewController {

    // MARK: - UI Elements

    private lazy var image: UIImageView = {
        let image = UIImage(named: "BackgroundPic")
        let imageView = UIImageView(image: image)
        return imageView
    }()


//    private lazy var label: UILabel = {
//        let label = UILabel()
//        label.text = "Login"
//        return label
//    }()

    // MARK: - LifeCycle

    override func viewDidLoad() {
        super.viewDidLoad()
        setupHierarchy()
        setupLayout()
    }

    // MARK: Setups

    private func setupHierarchy() {
        view.addSubview(image)

    }

    private func setupLayout() {
        image.snp.makeConstraints { make in
            make.top.bottom.left.right.equalToSuperview()
        }

    }

    // MARK: -Actions

}

