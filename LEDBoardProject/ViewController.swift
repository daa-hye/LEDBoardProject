//
//  ViewController.swift
//  LEDBoardProject
//
//  Created by 박다혜 on 2023/07/24.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet var textFieldView: UIView!
    @IBOutlet var inputTextField: UITextField!
    @IBOutlet var sendButton: UIButton!
    @IBOutlet var randomFontColorButton: UIButton!
    @IBOutlet var displayLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        setUIDesign()
    }

    func setUIDesign() {
        textFieldView.backgroundColor = .white
        textFieldView.layer.cornerRadius = 10
        inputTextField.borderStyle = .none
        sendButton.setTitle("보내기", for: .normal)
        sendButton.setTitleColor(.black, for: .normal)
        sendButton.layer.borderColor = UIColor.black.cgColor
        sendButton.layer.borderWidth = 1
        sendButton.layer.cornerRadius = 10
        randomFontColorButton.layer.borderColor = UIColor.black.cgColor
        randomFontColorButton.layer.borderWidth = 1
        randomFontColorButton.setTitle("Aa", for: .normal)
        randomFontColorButton.setTitleColor(.red, for: .normal)
        randomFontColorButton.layer.cornerRadius = 10
        displayLabel.textColor = .red
    }


}

