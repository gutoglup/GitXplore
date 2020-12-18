//
//  LoadingView.swift
//  GitXplore
//
//  Created by Augusto Cesar do Nascimento dos Reis on 17/12/20.
//

import UIKit

protocol LoadingViewble { }

extension LoadingViewble where Self: UIViewController {

    var loadingRestorationIdentifier: String { return "LoadingIndicatorPresenterIdentifier" }

    func startLoading(size: CGSize? = nil, backgroundColor: UIColor? = nil) {
        guard let keyWindow = UIApplication.shared.windows.filter({ $0.isKeyWindow }).first else { return }
        let loadingView = LoadingView(frame: keyWindow.frame)
        loadingView.restorationIdentifier = loadingRestorationIdentifier
        keyWindow.addSubview(loadingView)
    }

    func stopLoading() {
        for window in UIApplication.shared.windows {
            for item in window.subviews where item.restorationIdentifier == loadingRestorationIdentifier {
                item.removeFromSuperview()
            }
        }
    }
}

final class LoadingView: UIView {

    lazy var activityView: UIActivityIndicatorView = {
        let activityView = UIActivityIndicatorView(style: .large)
        return activityView
    }()

    override func draw(_ rect: CGRect) {
        super.draw(rect)

        guard let superview = self.superview else { return }

        NSLayoutConstraint.activate([
            self.leadingAnchor.constraint(equalTo: superview.leadingAnchor),
            self.trailingAnchor.constraint(equalTo: superview.trailingAnchor),
            self.topAnchor.constraint(equalTo: superview.topAnchor),
            self.bottomAnchor.constraint(equalTo: superview.bottomAnchor),
        ])

        self.translatesAutoresizingMaskIntoConstraints = false

        let containerView = UIView(frame: superview.frame)
        containerView.translatesAutoresizingMaskIntoConstraints = false
        containerView.backgroundColor = UIColor(named: "Primary")?.withAlphaComponent(0.3)
        self.addSubview(containerView)

        NSLayoutConstraint.activate([
            containerView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            containerView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            containerView.topAnchor.constraint(equalTo: self.topAnchor),
            containerView.bottomAnchor.constraint(equalTo: self.bottomAnchor),
        ])

        containerView.addSubview(activityView)

        activityView.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            activityView.heightAnchor.constraint(equalToConstant: 60),
            activityView.heightAnchor.constraint(equalToConstant: 60),
            activityView.centerYAnchor.constraint(equalTo: containerView.centerYAnchor),
            activityView.centerXAnchor.constraint(equalTo: containerView.centerXAnchor),
        ])

        activityView.startAnimating()

    }
}

