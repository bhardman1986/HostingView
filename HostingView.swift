//
//  HostingView.swift
//  Materials
//
//  Created by Bret Hardman on 4/21/20.
//  Copyright © 2020 Bret Hardman. All rights reserved.
//

import Foundation
import SwiftUI
import UIKit

public class HostingView: UIView {

//    MARK: - Init
    
    init<Content>(@ViewBuilder content: () -> Content) where Content: View {
        super.init(frame: .zero)

        make(content())
    }
    
    init<Content>(_ content: Content) where Content: View {
        super.init(frame: .zero)
        
        make(content)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
//    MARK: - Make...
    
    func make<Content>(_ content: Content) where Content: View {
        let child = UIHostingController(rootView: content)
        let subview = child.view!
        subview.backgroundColor = .clear
                
        addSubview(subview, constraints: [
            subview.leadingAnchor.constraint(equalTo: leadingAnchor),
            subview.topAnchor.constraint(equalTo: topAnchor),
            subview.trailingAnchor.constraint(equalTo: trailingAnchor),
            subview.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
    }
}
