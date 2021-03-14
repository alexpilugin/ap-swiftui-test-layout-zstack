//
//  ContentView.swift
//  AP Test Layout with Layers
//
//  Created by Alex Pilugins on 13/03/2021.
//  Testing absolute positioning in ZStack and changing visibility of elements
//

import SwiftUI


//MARK: - layers of images
func ImgBox(imageName: String) -> some View {
    Image(imageName)
       .resizable()
       .scaledToFill()
       .frame(width: 200, height: 200)
       .clipped()
}

//MARK: - Look and feel of buttons
func ButtonLook(title: String, bgColor: Color, trigger: Bool)  -> some View {
    Text(title)
        .padding([.leading, .trailing], 10)
        .padding([.top, .bottom], 5)
        .background(bgColor)
        .foregroundColor(.white)
        .font(.subheadline)
        .opacity(trigger ? 1.0 : 0.4)
}

struct ContentView: View {
    
    @State private var isHidden1 = false
    @State private var isHidden2 = false
    @State private var isHidden3 = false
    @State private var isHidden4 = false
    
    var body: some View {
        ZStack(alignment: .top) {
            
            if isHidden1 == true { ImgBox(imageName: "for-layer-1") }
            if isHidden2 == true { ImgBox(imageName: "for-layer-2") }
            if isHidden3 == true { ImgBox(imageName: "for-layer-3") }
            if isHidden4 == true { ImgBox(imageName: "for-layer-4") }
            
            //MARK: - Set of buttons
            VStack(alignment: .trailing, spacing: 0, content: {
                HStack(alignment: .center, spacing: 5, content: {
                    Button(action: {
                        withAnimation { self.isHidden1.toggle() }
                    }) {
                        ButtonLook(title: "1st", bgColor: .blue, trigger: isHidden1)
                    }
                    Button(action: {
                        withAnimation { self.isHidden2.toggle() }
                    }) {
                        ButtonLook(title: "2nd", bgColor: .black, trigger: isHidden2)
                    }
                    Button(action: {
                        withAnimation { self.isHidden3.toggle() }
                    }) {
                        ButtonLook(title: "3rd", bgColor: .green, trigger: isHidden3)
                    }
                    Button(action: {
                        withAnimation { self.isHidden4.toggle() }
                    }) {
                        ButtonLook(title: "4th", bgColor: .red, trigger: isHidden4)
                    }
                })
                    .padding(.top, 220)
            })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
