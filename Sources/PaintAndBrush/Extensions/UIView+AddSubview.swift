import UIKit

public extension UIView {

    func addSubviewWithConstraintsOnViewGuide(subview: UIView, insets: UIEdgeInsets = .zero) {
        let layoutGuide = safeAreaLayoutGuide
        self.addSubview(subview)
        subview.constraint { view in
            [
                view.leadingAnchor.constraint(equalTo: layoutGuide.leadingAnchor,
                                              constant: insets.left),
                view.trailingAnchor.constraint(equalTo: layoutGuide.trailingAnchor,
                                               constant: insets.right),
                view.topAnchor.constraint(equalTo: layoutGuide.topAnchor,
                                          constant: insets.top),
                view.bottomAnchor.constraint(equalTo: layoutGuide.bottomAnchor,
                                             constant: insets.bottom)
            ]
        }
    }

    func addSubviewWithConstraints(subview: UIView, insets: UIEdgeInsets = .zero) {
        self.addSubview(subview)
        subview.constraint { view in
            [
                view.leadingAnchor.constraint(equalTo: leadingAnchor, constant: insets.left),
                view.trailingAnchor.constraint(equalTo: trailingAnchor, constant: insets.right),
                view.topAnchor.constraint(equalTo: topAnchor, constant: insets.top),
                view.bottomAnchor.constraint(equalTo: bottomAnchor, constant: insets.bottom)
            ]
        }
    }

    func addSubviewToCenter(subview: UIView) {
        self.addSubview(subview)
        subview.constraint { view in
            [
                view.centerXAnchor.constraint(equalTo: centerXAnchor),
                view.centerYAnchor.constraint(equalTo: centerYAnchor),
            ]
        }
    }
}
