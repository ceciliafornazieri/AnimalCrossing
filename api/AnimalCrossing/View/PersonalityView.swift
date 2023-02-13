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
                    NavigationStack {
                        VStack{
                            ForEach(0 ..< 8){_ in
                                
                                ZStack{ RoundedRectangle(cornerRadius: 40)
                                        .fill(Color("Creme"))
                                        .frame(width:330, height:200)
                                        .padding(7)
                                        .shadow(radius: 10, x: 0, y: 0)
                                    
                                    HStack{ Image("stampTest")
                                            .resizable()
                                            .frame(width: 150, height: 150)
                                    VStack{
                                        Text("Teste")
                                            .font(.title3)
                                        Text("Teste2")
                                            .font(.headline)
                                        }
                                    }
                                    Spacer()
                                    .padding(.trailing)
                                }

                            }
                        }
                    }
                }
            }
            .background(Color("Creme"))
        }
    }
}
