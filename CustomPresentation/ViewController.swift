//
//  ViewController.swift
//  CustomPresentation
//
//  Created by 최동호 on 2021/07/02.
//

import UIKit

class ViewController: UIViewController {
    
    let explanationButton = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
    
        explanationButton.setTitle("해설 보기", for: .normal)
        explanationButton.addTarget(self, action: #selector(presentExplanation(_:)), for: .touchUpInside)
        explanationButton.frame = CGRect(x: 200, y: 200, width: 100, height: 100)
//        explanationButton.tintColor = .label
        explanationButton.setTitleColor(UIColor.label, for: .normal)
        explanationButton.backgroundColor = .gray
        view.addSubview(explanationButton)
    }
    
    @objc func presentExplanation(_ sender: UIButton) {
        let explanationVC = ExplanationVC()
        present(explanationVC, animated: true, completion: nil)
    }

}

