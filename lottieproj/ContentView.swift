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
                LottieAnimation()
                Lottie2Animation()
            }
            
        
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




struct Lottie2Animation: UIViewRepresentable{
    
    let name: String = "guy"
    
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
