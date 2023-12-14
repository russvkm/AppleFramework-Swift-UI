//
//  FrameworkViewModel.swift
//  AppleFramework
//
//  Created by Shashank Pandey on 14/12/23.
//

import SwiftUI


class FrameworkViewModel:ObservableObject{
    
//    var selectedFramework:Framework?{
//        didSet{ isShowingDetailView = true }
//    }
//    @Published var isShowingDetailView = false
    let column:[GridItem] = [GridItem(.flexible()),
                             GridItem(.flexible()),
                             GridItem(.flexible())
    ]
}
