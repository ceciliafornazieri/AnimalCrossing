//
//  PersonalityView.swift
//  AnimalCrossing
//
//  Created by Mari Higashi on 11/02/23.
//

import Foundation
import SwiftUI

struct PersonalityView : View{
    
    
    var body: some View {
        
        
        GeometryReader { geo in
            
            ZStack {
             
                    Image("backgroundImage")
                        .resizable()
                        .scaledToFill()
                        .edgesIgnoringSafeArea(.all)
                        .frame(width: geo.size.width, height: geo.size.height, alignment: . center)
                        .opacity(0.2)
                    
              
                    ScrollView{
                        Image("crankycard")
                            .resizable()
                            .scaledToFill()

                        Image("jockcard")
                            .resizable()
                            .scaledToFill()

                        Image("lazycard")
                            .resizable()
                            .scaledToFill()

                        Image("normalcard")
                            .resizable()
                            .scaledToFill()

                        Image("peppycard")
                            .resizable()
                            .scaledToFill()

                        Image("sisterlycard")
                            .resizable()
                            .scaledToFill()

                        Image("smugcard")
                            .resizable()
                            .scaledToFill()

                        Image("snootycard")
                            .resizable()
                            .scaledToFill()

                    }
                    .frame(width: 360)
              
                
                }.background(Color("Creme"))
            }
        }
    }

