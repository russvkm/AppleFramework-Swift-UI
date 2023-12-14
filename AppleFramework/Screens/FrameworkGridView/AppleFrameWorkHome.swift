//
//  AppleFrameWorkHome.swift
//  AppleFramework
//
//  Created by Shashank Pandey on 14/12/23.
//

import SwiftUI

struct AppleFrameWorkHome:View{
    @StateObject var viewModel:FrameworkViewModel = FrameworkViewModel()
    
    var body: some View{
        NavigationStack{
            ScrollView{
                LazyVGrid(columns: viewModel.column){
                    ForEach(MockData.frameworks){ framework in
                        NavigationLink(value: framework) {
                            FrameWorkGrid(frameWork: framework)
                        }
                    }
                }
            }
            .navigationTitle("Apple Frameworks")
            .navigationDestination(for: Framework.self) { framework in
                FrameWorkDetail(frameWork: framework)
            }
        }
        .tint(Color(.label))
    }
    
}

#Preview {
    AppleFrameWorkHome()
}
