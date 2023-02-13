//
//  SplashScreenView.swift
//  AnimalCrossing
//
//  Created by Cecília Fornazieri on 13/02/23.
//

import Foundation

import SwiftUI

struct SplashScreenView: View {
    @State private var isActive = false
    @State private var size = 0.8
    @State private var opacity = 0.5
    
    var body: some View {
        if isActive {
            ContentView(filteredVillagers: [])
        } else {
            ZStack (alignment: .center){
                Color.init("Creme")
                    .ignoresSafeArea()
                    .opacity(0.60)
            
                
                VStack {
                    VStack{
                        Image("cards")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 200, height: 200)

                        
                            Spacer()
                            .frame(height: 35)
                        
                        Text("The Villagers")
                            .font(Font.custom("FinkHeavy", size: 35))
                            //.foregroundColor(.brown.opacity(0.80))
                            .foregroundColor(Color("MarromText").opacity(0.80))
                            
                    }
                    .scaleEffect(size)
                    .opacity(opacity)
                    .onAppear {
                        withAnimation(.easeIn(duration: 1.2)) {
                            self.size = 0.9
                            self.opacity = 1.0
                    }
                }
            }
                .onAppear {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                        self.isActive = true
                    }
            }
            }
        }
        
       
    }
}

struct SplashScreenView_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreenView()
    }
}
            
