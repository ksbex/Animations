//
//  ContentView.swift
//  Animations
//
//  Created by Kevin Becker on 7/3/21.
//

import SwiftUI

struct ContentView: View {
//    @State private var animationAmount: CGFloat = 1
    @State private var animationAmount = 0.0
    
    var body: some View {
        Button("Tap Me") {
//            self.animationAmount += 1
            withAnimation(.interpolatingSpring(stiffness: 5, damping: 1)) {
                self.animationAmount += 360
            }
        }
        .padding(50)
        .background(Color.red)
        .foregroundColor(.white)
        .clipShape(Circle())
        .rotation3DEffect(.degrees(animationAmount), axis: (x: 0, y: 1, z: 0))
        
        
//        .scaleEffect(animationAmount)
//        .blur(radius: (animationAmount - 1 ) * 3)
//        .animation(.interpolatingSpring(stiffness: 50, damping: 1))
//        .animation(.easeInOut(duration: 2))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
