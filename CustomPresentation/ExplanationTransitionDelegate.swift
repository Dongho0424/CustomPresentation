//
//  ExplanationTransitionDelegate.swift
//  CustomPresentation
//
//  Created by 최동호 on 2021/07/02.
//

import Foundation
import UIKit

class ExplanationTransitionDelegate: NSObject {
    var height: CGFloat = 300
    
    init(height: CGFloat) {
        self.height = height
        super.init()
    }
}

extension ExplanationTransitionDelegate: UIViewControllerTransitioningDelegate {
    func presentationController(forPresented presented: UIViewController, presenting: UIViewController?, source: UIViewController) -> UIPresentationController? {
        // return our UIPresentationController
        return ExplanationPresentationController(presentedViewController: presented, presenting: presenting, height: height)
    }
    
    func animationController(forPresented presented: UIViewController, presenting: UIViewController, source: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        <#code#>
    }
    
    func animationController(forDismissed dismissed: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        <#code#>
    }
}
