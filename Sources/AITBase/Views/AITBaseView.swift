//
//  AITBaseView.swift
//  
//
//  Created by Faerae on 25/11/22.
//

import UIKit

open class AITBaseView: UIView {
    // MARK: - Open Functions

    open func setupView() {}

    // MARK: - Initializers

    public override init(frame: CGRect) {
        super.init(frame: frame)

        setupView()
    }

    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)

        setupView()
    }

    public init() {
        super.init(frame: CGRect.zero)

        setupView()
    }
}
