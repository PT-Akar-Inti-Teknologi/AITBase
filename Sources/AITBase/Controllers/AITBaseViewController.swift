//
//  AITBaseViewController.swift
//  
//
//  Created by Faerae on 25/11/22.
//

import UIKit

private typealias `Self` = AITBaseViewController

open class AITBaseViewController: UIViewController {
    // MARK: - Open Variables

    open var shouldAttachScrollView: Bool { return true }

    // MARK: Open Functions

    @objc dynamic open func initializeUI() {}
    @objc dynamic open func updateViews() {}
    @objc dynamic open func setupViews() {}
    @objc dynamic open func bindViewModel() {}
    @objc dynamic open func fetchData() {}
    @objc dynamic open func updateState() {}

    // MARK: - Properties

    lazy var scrollView: AITBaseScrollView = {
        let scrollView = AITBaseScrollView()

        return scrollView
    }()

    public var contentView: UIView {
        return scrollView.contentView
    }

    // MARK: - Life Cycles

    open override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .white

        if shouldAttachScrollView {
            attachScrollView()
        }
        initializeUI()
        setupViews()
    }

    open override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        updateViews()
    }
}

// MARK: - Helpers
extension Self {
    private func attachScrollView() {
        scrollView.translatesAutoresizingMaskIntoConstraints = false

        view.addSubview(scrollView)

        let guide = self.view.safeAreaLayoutGuide
        scrollView.trailingAnchor.constraint(equalTo: guide.trailingAnchor).isActive = true
        scrollView.topAnchor.constraint(equalTo: guide.topAnchor).isActive = true
        scrollView.leadingAnchor.constraint(equalTo: guide.leadingAnchor).isActive = true
        scrollView.bottomAnchor.constraint(equalTo: guide.bottomAnchor).isActive = true
    }
}

