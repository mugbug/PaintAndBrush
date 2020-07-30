infix operator ..: AdditionPrecedence
infix operator <-: MultiplicationPrecedence

public struct Predicate<Element> {
    let code: (Element) -> Element

    func runCode(for element: Element) -> Element {
        return code(element)
    }
}

public func <- <Element, T>(_ attribute: WritableKeyPath<Element, T>,
                     _ constant: T) -> Predicate<Element> {
    return Predicate(code: { value in
        var copy = value
        copy[keyPath: attribute] = constant
        return copy
    })
}

public protocol Builder {}

public extension Builder {
    @discardableResult
    static func .. (_ element: Self,
                    _ predicate: Predicate<Self>) -> Self {
        return element.with(predicate)
    }

    private func with(_ predicate: Predicate<Self>) -> Self {
        return predicate.runCode(for: self)
    }
}

