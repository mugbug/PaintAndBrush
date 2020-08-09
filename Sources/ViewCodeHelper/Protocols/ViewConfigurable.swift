
public protocol ViewConfigurable {
    associatedtype ViewModel
    func configure(with model: ViewModel)
}
