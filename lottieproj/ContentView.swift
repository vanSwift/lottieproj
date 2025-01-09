//
//  ContentView.swift
//  lottieproj
//
//  Created by Иван Терехов on 09.01.2025.
//

import SwiftUI
import Lottie

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
            LottieAnimation()
        }
        .padding()
    }
}

struct LottieAnimation: UIViewRepresentable{
    
    let name: String = "bricks"
    
    func makeUIView(context: Context) -> some UIView {
        
        let view = UIView()
        let animationView = LottieAnimationView(name: name)
        animationView.loopMode = .autoReverse
        animationView.play()
        animationView.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(animationView)
        
        NSLayoutConstraint.activate([
            animationView.heightAnchor.constraint(equalTo: view.heightAnchor),
            animationView.widthAnchor.constraint(equalTo: view.widthAnchor)
        ])
        
        return view
        
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        let view = UIView()
        
    }
    
}


#Preview {
    ContentView()
}
