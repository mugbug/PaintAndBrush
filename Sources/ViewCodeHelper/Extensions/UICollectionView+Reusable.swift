import UIKit

public extension UICollectionView {

    func dequeueReusableCell<T: UICollectionViewCell>(for indexPath: IndexPath) -> T where T: Reusable {
        guard
            let cell = dequeueReusableCell(withReuseIdentifier: T.identifier, for: indexPath) as? T
            else { return T() }
        return cell
    }

    func registerNib<T: UICollectionViewCell>(_: T.Type) where T: Reusable {
        let bundle = Bundle(for: T.self)
        let nib = UINib(nibName: T.identifier, bundle: bundle)
        register(nib, forCellWithReuseIdentifier: T.identifier)
    }

    func register<T: UICollectionViewCell>(_: T.Type) where T: Reusable {
        register(T.self, forCellWithReuseIdentifier: T.identifier)
    }
}
