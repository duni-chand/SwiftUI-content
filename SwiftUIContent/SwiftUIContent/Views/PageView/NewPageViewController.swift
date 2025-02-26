//
//  NewPageViewController.swift
//  SwiftUIContent
//
//  Created by Macbook Pro on 17/02/25.
//
import SwiftUI
import UIKit

struct NewPageViewController<PPage: View>: UIViewControllerRepresentable {
    
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }


    var ppages: [PPage]

    func makeUIViewController(context: Context) -> UIPageViewController {
        let pageViewController = UIPageViewController(
            transitionStyle: .scroll,
            navigationOrientation: .horizontal
        )
        return pageViewController
    }

    func updateUIViewController(
        _ pageviewController: UIPageViewController, context: Context
    ) {
        pageviewController
            .setViewControllers(
                [context.coordinator.controllers[0]], direction: .forward,
                animated: true)
    }
    
    class Coordinator: NSObject, UIPageViewControllerDataSource {
        func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
            guard let index = controllers.firstIndex(of: viewController) else {
                return nil
            }
            if index == 0 {
                return controllers.last
            }
            return controllers[index - 1]
        }
        
        
        func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
            guard let index = controllers.firstIndex(of: viewController) else {
                return nil
            }
            if index + 1 == controllers.count {
                return controllers.first
            }
            return controllers[index + 1]
        }

        
        var parent: NewPageViewController
        var controllers = [UIViewController]()
        
        init(_ pageViewController: NewPageViewController) {
            parent = pageViewController
            controllers = parent.ppages.map{ UIHostingController(rootView: $0)}
        }
    }
}
