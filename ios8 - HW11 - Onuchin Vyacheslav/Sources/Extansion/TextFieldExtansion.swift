//
//  TextField+Extansion.swift
//  ios8 - HW11 - Onuchin Vyacheslav
//
//  Created by Вячеслав Онучин on 27.12.2022.
//

import UIKit

extension UITextField {
    
    func setLeftIconLogin(_ image: UIImage?) {
        let iconView = UIImageView(frame: CGRect(x: 20, y: 2.5, width: 25, height: 25))
        iconView.image = image
        let iconContainerView: UIView = UIView(frame: CGRect(x: 20, y: 0, width: 70, height: 30))
        let imageIcon = UIImage(systemName: ("person"))?.withTintColor(.systemGray3, renderingMode: .alwaysOriginal)
            iconView.image = imageIcon
        iconContainerView.addSubview(iconView)
        leftView = iconContainerView
        leftViewMode = .always
    }

    func setLeftIconPassword(_ image: UIImage?) {
        let iconView = UIImageView(frame: CGRect(x: 20, y: 2.5, width: 25, height: 25))
        iconView.image = image
        let iconContainerView: UIView = UIView(frame: CGRect(x: 20, y: 0, width: 70, height: 30))
        let imageIcon = UIImage(systemName: ("lock"))?.withTintColor(.systemGray3, renderingMode: .alwaysOriginal)
            iconView.image = imageIcon
        iconContainerView.addSubview(iconView)
        leftView = iconContainerView
        leftViewMode = .always
    }

    func setRightIcon(_ image: UIImage?) {
        let iconView = UIImageView(frame: CGRect(x: 30, y: 2.5, width: 25, height: 25))
        iconView.image = image
        let iconContainerView: UIView = UIView(frame: CGRect(x: 20, y: 0, width: 70, height: 30))
        let imageIcon = UIImage(systemName: ("checkmark.circle.fill"))?.withTintColor(.systemGreen, renderingMode: .alwaysOriginal)
        iconView.image = imageIcon
        iconContainerView.addSubview(iconView)
        rightView = iconContainerView
        rightViewMode = .always
    }

    func shadowSattings(_ textField: UITextField) {
        textField.layer.shadowColor = UIColor.black.cgColor
        textField.layer.shadowOpacity = 1
        textField.layer.shadowOffset = .zero
        textField.layer.shadowRadius = 0.5
        textField.layer.shouldRasterize = true
        textField.layer.rasterizationScale = UIScreen.main.scale
    }
}
