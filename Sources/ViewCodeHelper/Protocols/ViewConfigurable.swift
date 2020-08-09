
public protocol ViewConfigurable: Reusable {
    associatedtype ViewModel
    func configure(with model: ViewModel)
}
