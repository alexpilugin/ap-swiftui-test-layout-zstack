//
//  ContentView.swift
//  AP Test Layout with Layers
//
//  Created by Alex Pilugins on 13/03/2021.
//  Testing absolute positioning in ZStack and changing visibility of elements
//

import SwiftUI



func ImgBox(imageName: String) -> some View {
    Image(imageName)
       .resizable()
       .scaledToFill()
       .frame(width: 200, height: 200)
       .clipped()
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
            
            VStack(alignment: .trailing, spacing: 0, content: {
                HStack(alignment: .center, spacing: 5, content: {
                    Button(action: {
                        withAnimation {
                            self.isHidden1.toggle()
                        }
                    }) {
                        Text("1st")
                            .padding([.leading, .trailing], 10)
                            .padding([.top, .bottom], 5)
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .font(.subheadline)
                    }
                    Button(action: {
                        withAnimation {
                            self.isHidden2.toggle()
                        }
                    }) {
                        Text("2nd")
                            .padding([.leading, .trailing], 10)
                            .padding([.top, .bottom], 5)
                            .background(Color.black)
                            .foregroundColor(.white)
                            .font(.subheadline)
                    }
                    Button(action: {
                        withAnimation {
                            self.isHidden3.toggle()
                        }
                    }) {
                        Text("3rd")
                            .padding([.leading, .trailing], 10)
                            .padding([.top, .bottom], 5)
                            .background(Color.green)
                            .foregroundColor(.white)
                            .font(.subheadline)
                    }
                    Button(action: {
                        withAnimation {
                            self.isHidden4.toggle()
                        }
                    }) {
                        Text("4th")
                            .padding([.leading, .trailing], 10)
                            .padding([.top, .bottom], 5)
                            .background(Color.red)
                            .foregroundColor(.white)
                            .font(.subheadline)
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
