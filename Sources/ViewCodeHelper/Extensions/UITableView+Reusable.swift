import UIKit

public extension UITableView {

    func dequeueReusableCell<T: UITableViewCell & Reusable>(for indexPath: IndexPath) -> T {
        guard let cell = dequeueReusableCell(withIdentifier: T.identifier, for: indexPath) as? T else {
            fatalError("Cell is not registered - call tableView.register(Cell.Type) to register first before using.")
        }

        return cell
    }

    func register<T: UITableViewCell & Reusable>(_: T.Type = T.self) {
        register(T.self, forCellReuseIdentifier: T.identifier)
    }
}
