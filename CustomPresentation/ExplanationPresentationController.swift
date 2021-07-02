//
//  ExplanationPresentationController.swift
//  CustomPresentation
//
//  Created by 최동호 on 2021/07/02.
//

import Foundation
import UIKit

class ExplanationPresentationController: UIPresentationController {
    private var dimmingView: UIView!
    private var height: CGFloat!
    
    init(presentedViewController: UIViewController, presenting presentingViewController: UIViewController?, height: CGFloat) {
        super.init(presentedViewController: presentedViewController, presenting: presentingViewController)
        
        dimmingView = UIView()
        dimmingView.translatesAutoresizingMaskIntoConstraints = false
        dimmingView.backgroundColor = UIColor(white: 0.0, alpha: 0.0)
        
        self.height = height
    }
    
    override func presentationTransitionWillBegin() {
        guard let dimmingView = dimmingView,
              let containerView = containerView
        else {
            return
        }
        
        containerView.insertSubview(dimmingView, at: 0)
        
        if let coordinator = presentedViewController.transitionCoordinator {
            
            coordinator.animate { _ in
                self.dimmingView.alpha = 1.0
            }
        } else {
            dimmingView.alpha = 1.0
        }
    }
    
    override func dismissalTransitionWillBegin() {
        if let coordinator = presentedViewController.transitionCoordinator {
            
            coordinator.animate { _ in
                self.dimmingView.alpha = 0.0
            }
        } else {
            dimmingView.alpha = 0.0
        }
    }
    
    override var frameOfPresentedViewInContainerView: CGRect {
        var frame: CGRect = .zero
        frame.size = CGSize(width: containerView!.bounds.width, height: height)
        
        return frame
    }
}
