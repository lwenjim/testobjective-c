//
//  PageControl.swift
//  Landmarks
//
//  Created by liuwenjin on 2024/2/29.
//

import SwiftUI
import UIKit

struct PageControl: UIViewRepresentable {
    var numberOfPages: Int
    @Binding var currentPage: Int
    
    
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
    
    func makeUIView(context: Context) -> UIPageControl {
        let controll = UIPageControl()
        controll.numberOfPages = numberOfPages
        controll.addTarget(
            context.coordinator, 
            action: #selector(Coordinator.updateCurrentPage(sender:)),
            for: .valueChanged
        )
        return controll
    }
    
    func updateUIView(_ uiView: UIPageControl, context: Context) {
        uiView.currentPage = currentPage
    }
    
    class Coordinator: NSObject {
        var controll: PageControl
        
        init(_ controll: PageControl) {
            self.controll = controll
        }
        
        @objc
        func updateCurrentPage(sender: UIPageControl) {
            controll.currentPage = sender.currentPage
        }
    }
}
