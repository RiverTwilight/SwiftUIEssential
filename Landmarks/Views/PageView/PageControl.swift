//
//  PageControl.swift
//  Landmarks
//
//  Created by René Wang on 2024/2/8.
//

import SwiftUI
import UIKit

struct PageControl: UIViewRepresentable{
    var numberOfPages: Int
    @Binding var currentPage: Int
    
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
    
    func makeUIView(context: Context) -> UIPageControl {
        let control = UIPageControl()
        control.numberOfPages = numberOfPages
        control.addTarget(
            context.coordinator,
            action: #selector(Coordinator.updateCurrentPage(sender:)),
            for: .valueChanged)
        
        return control
    }
    
    func updateUIView(_ uiView: UIPageControl, context: Context) {
        uiView.currentPage = currentPage
    }
    
    class Coordinator: NSObject {
        var control: PageControl
        
        init(_ control: PageControl) {
            self.control = control
        }
        
        // Used to make Swift code accessible to Objective-C
        @objc
        func updateCurrentPage(sender: UIPageControl){
            control.currentPage = sender.currentPage
        }
    }
}
