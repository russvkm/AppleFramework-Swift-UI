//
//  FrameWorkDetail.swift
//  AppleFramework
//
//  Created by Shashank Pandey on 14/12/23.
//

import SwiftUI


struct FrameWorkDetail:View {
    var frameWork:Framework
//    @Binding var isShowingDetailView:Bool
    @State var isPresentSafariView = false
    var body: some View {
        VStack{
//            HStack{
//                Spacer()
//                Button{ isShowingDetailView = false }label: {
//                    Image(systemName: "xmark")
//                        .imageScale(.large)
//                        .foregroundStyle(Color(.label))
//                        .frame(width: 44, height: 44)
//                }
//            }
//            .padding()
            Spacer()
            FrameWorkGrid(frameWork: frameWork)
            Text(frameWork.description)
                .font(.body)
                .padding()
            Spacer()
            Button{
               isPresentSafariView = true
            }label: {
                Text("Learn More")
                    .font(.title2)
                    .frame(width: 280, height: 50)
                    .background(Color.red)
                    .foregroundStyle(.white)
                    .clipShape(.buttonBorder)
            }
        }
        .fullScreenCover(isPresented: $isPresentSafariView, content: {
            SafariView(url: URL(string: frameWork.urlString)!)
        })
        
    }
}


#Preview{
    FrameWorkDetail(frameWork: MockData.sampleFramework)
}
