import UIKit

public extension UIStackView {

    func removeAllArrangedSubviews() {
        arrangedSubviews.forEach({ $0.removeFromSuperview() })
    }

    func addSpacing(_ spacing: CGFloat) {
        let spacingView = UIView()

        spacingView.constraint { view in
            switch axis {
            case .vertical:
                return [view.heightAnchor.constraint(equalToConstant: spacing)]
            case .horizontal:
                return [view.widthAnchor.constraint(equalToConstant: spacing)]
            @unknown default:
                return []
            }
        }
        addArrangedSubview(spacingView)
    }
}
