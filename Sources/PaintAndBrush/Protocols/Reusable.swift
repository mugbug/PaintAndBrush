import UIKit

public protocol Reusable {
    static var identifier: String { get }
}

extension Reusable where Self: UIView {
    public static var identifier: String {
        return "\(Self.self)"
    }
}
