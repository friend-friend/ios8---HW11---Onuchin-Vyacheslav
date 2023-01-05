//
//  ShadowExtansion.swift
//  ios8 - HW11 - Onuchin Vyacheslav
//
//  Created by Вячеслав Онучин on 03.01.2023.
//

import UIKit

func shadowSattings(_ button: UIButton) {
    button.layer.shadowColor = UIColor.black.cgColor
    button.layer.shadowOpacity = 1
    button.layer.shadowOffset = .zero
    button.layer.shadowRadius = 0.5
    button.layer.shouldRasterize = true
    button.layer.rasterizationScale = UIScreen.main.scale
}
