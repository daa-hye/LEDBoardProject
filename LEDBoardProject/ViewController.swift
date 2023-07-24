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
        displayLabel.text = ""
        displayLabel.textAlignment = .center
        displayLabel.font = .boldSystemFont(ofSize: 100)
    }

    @IBAction func sendButtonDidTap(_ sender: UIButton) {
        guard inputTextField.text!.trimmingCharacters(in: .whitespaces) != "" else {
            let alert = UIAlertController(title: "입력값 없음", message: "한글자 이상 입력해주세요", preferredStyle: .alert)
            let confirm = UIAlertAction(title: "확인", style: .cancel)
            alert.addAction(confirm)
            present(alert, animated: true)
            return
        }
        if let inputWord = inputTextField.text {
            displayLabel.text = inputWord
        }
    }

    @IBAction func randomFontColorBottonDidTap(_ sender: UIButton) {
        let randomRed: CGFloat = CGFloat.random(in: 0...255)/255
        let randomGreen: CGFloat = CGFloat.random(in: 0...255)/255
        let randomBlue: CGFloat = CGFloat.random(in: 0...255)/255
        let randomColor = UIColor(red: randomRed, green: randomGreen, blue: randomBlue, alpha: 1)
        displayLabel.textColor = randomColor
        randomFontColorButton.setTitleColor(randomColor, for: .normal)
    }

    @IBAction func endEditing(_ sender: UITextField) {
        sender.endEditing(true)
        sendButtonDidTap(sendButton)
    }

    @IBAction func mainViewDidTap(_ sender: UITapGestureRecognizer) {
        if inputTextField.isEditing == true {
            inputTextField.endEditing(true)
        } else {
            textFieldView.isHidden.toggle()
        }
    }

}

