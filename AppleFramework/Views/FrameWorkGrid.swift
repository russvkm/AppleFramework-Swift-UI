//
//  FrameWorkGrid.swift
//  AppleFramework
//
//  Created by Shashank Pandey on 14/12/23.
//

import SwiftUI

struct FrameWorkGrid:View {
    var frameWork:Framework
    var body: some View {
        VStack{
            Image(frameWork.imageName)
                .resizable()
                .frame(width: 90, height: 90)
            Text(frameWork.name)
                .font(.title)
                .fontWeight(.bold)
                .scaledToFit()
                .minimumScaleFactor(0.6)
                .foregroundStyle(Color(.label))
        }
        .padding()
        
    }
}

#Preview {
    FrameWorkGrid(frameWork: Framework(name: "App store", imageName: "app-clip", urlString: "", description: ""))
}
