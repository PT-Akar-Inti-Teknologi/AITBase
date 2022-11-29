//
//  File.swift
//  
//
//  Created by Faerae on 29/11/22.
//

public class Binder<T> {
    // MARK: - Properties

    private var listener: ((T) -> ())?

    public var value: T {
        didSet { listener?(value) }
    }

    // MARK: - Initializers

    public init(_ value: T) {
        self.value = value
    }

    // MARK: - Helpers

    public func bind(_ listener: @escaping (T) -> Void) {
        self.listener = listener
        listener(value)
    }
}
