//
//  DetailView.swift
//  AnimalCrossing
//
//  Created by Mari Higashi on 07/02/23.
//

import SwiftUI

struct DetailView : View {
    @ObservedObject var villagerDetail: VillagerViewModel
    var villager: VillagerModel
    
    var body: some View {
        
        GeometryReader { geo in
            
            ZStack {
                Image("backgroundImage")
                    .resizable()
                    .scaledToFill()
                    .edgesIgnoringSafeArea(.all)
                    .frame(width: geo.size.width, height: geo.size.height, alignment: . center)
                    .opacity(0.2)
                
                
                
                
                
                RoundedRectangle(cornerRadius: 40)
                
                    .fill(Color("Creme"))
                    .frame(width:330, height:600)
                    .offset(y: -30)
                    .shadow(radius: 10, x: 0, y: 0)
                
                
                
                VStack (alignment: .center) {
                    
                  
                        Text(villager.name?.nameUSen ?? "nil" )
                            .font(.custom("FinkHeavy", size: 42))
                            .foregroundColor(Color("MarromText"))
                            .offset(y: -90)
                            .offset(x:0)
                            .padding(.top, 100)
                            .padding(10)
                        
                        AsyncImage(url:URL(string: villager.image_uri!),scale: 1.3) { image in
                            image.self
                        } placeholder: {
                            ProgressView()
                        }
                        
                        .frame(width:185, height:185)
                        .cornerRadius(40)
                        .font(.subheadline)
                        .foregroundColor(.black)
                        .offset(y: -90)
                        .offset(x:0)
                        .padding(5)
                        .shadow(color: Color.black.opacity(0.3), radius: 10, x:0, y:0)
                        .overlay(RoundedRectangle(cornerRadius: 40)
                            .stroke(Color.brown, lineWidth: 4) .frame(width:185, height:185)
                            .offset(y: -90))
                    
                    
                    HStack{
                        Text("Birthday:")
                        Text(villager.birthday)
                    }
                    .font(.custom("FinkHeavy", size: 25))
                    .foregroundColor(Color("MarromText"))
                    .font(.subheadline)
                    .foregroundColor(.black)
                    .offset(y: -90)
                    .offset(x:0)
                    .padding(5)
                    
                    HStack{
                        Text("Species:")
                        Text(villager.species)
                    }
                    .font(.custom("FinkHeavy", size: 25))
                        .foregroundColor(Color("MarromText"))
                        .font(.subheadline)
                        .foregroundColor(.black)
                        .offset(y: -90)
                        .offset(x:0)
                        .padding(1)

                    
                    
                    HStack(spacing: 50)  {
                        
                        if villager.personality == "Cranky"{
                            Image("cranky")
                                .resizable()
                                .scaledToFit()
                                .offset(y: -90)
                                .offset(x:0)
                              //.padding(.horizontal)
                                .frame(width: 100, height: 100)
                                    
                            }

                    
                        else if villager.personality == "Jock"{
                            Image("jock")
                                .resizable()
                                .scaledToFit()
                                .offset(y: -90)
                                .offset(x:0)
                                //.padding(.trailing)
                                .frame(width: 100, height: 100)
                        }
                        
                        else if villager.personality == "Normal"{
                            Image("normal")
                                .resizable()
                                .scaledToFit()
                                .offset(y: -90)
                                .offset(x:0)
                                //.padding(.trailing)
                                .frame(width: 100, height: 100)
                         
                        }
                        else if villager.personality == "Peppy"{
                            Image("peppy")
                                .resizable()
                                .scaledToFit()
                                .offset(y: -90)
                                .offset(x:0)
                                //.padding(.trailing)
                                .frame(width: 100, height: 100)
                        }
                        
                        else if villager.personality == "Lazy"{
                            Image("lazy")
                                .resizable()
                                .scaledToFit()
                                .offset(y: -90)
                                .offset(x:0)
                                //.padding(.trailing)
                                .frame(width: 100, height: 100)
                        }
                        
                        else if villager.personality == "Smug"{
                            Image("smug")
                                .resizable()
                                .scaledToFit()
                                .offset(y: -90)
                                .offset(x:0)
                            //.padding(.trailing)
                                .frame(width: 100, height: 100)
                        }
                        
                        else if villager.personality == "Snooty"{
                            Image("snooty")
                                .resizable()
                                .scaledToFit()
                                .offset(y: -90)
                                .offset(x:0)
                            //.padding(.trailing)
                                .frame(width: 100, height: 100)
                        }
                        
                        else if villager.personality == "Uchi"{
                                    Image("sisterly")
                                        .resizable()
                                        .scaledToFit()
                                        .offset(y: -90)
                                        .offset(x:0)
                                        //.padding(.trailing)
                                        .frame(width: 100, height: 100)
                        }
                        
                      if villager.hobby == "Education" {
                            Image("Education")
                                .resizable()
                                .scaledToFit()
                                .offset(y: -90)
                                .offset(x:0)
                                //.padding(.trailing)
                                .frame(width: 100, height: 100)
                        }
                      else if villager.hobby == "Fashion" {
                              Image("Fashion")
                                  .resizable()
                                  .scaledToFit()
                                  .offset(y: -90)
                                  .offset(x:0)
                                  //.padding(.trailing)
                                  .frame(width: 100, height: 100)
                          }
                        else if villager.hobby == "Fitness" {
                              Image("Fitness")
                                  .resizable()
                                  .scaledToFit()
                                  .offset(y: -90)
                                  .offset(x:0)
                                  //.padding(.trailing)
                                  .frame(width: 100, height: 100)
                          }
                        else if villager.hobby == "Music" {
                              Image("Music")
                                  .resizable()
                                  .scaledToFit()
                                  .offset(y: -90)
                                  .offset(x:0)
                                  //.padding(.trailing)
                                  .frame(width: 100, height: 100)
                          }
                        else if villager.hobby == "Nature" {
                              Image("Nature")
                                  .resizable()
                                  .scaledToFit()
                                  .offset(y: -90)
                                  .offset(x:0)
                                  //.padding(.trailing)
                                  .frame(width: 100, height: 100)
                          }
                        else if villager.hobby == "Play" {
                              Image("Play")
                                  .resizable()
                                  .scaledToFit()
                                  .offset(y: -90)
                                  .offset(x:0)
                                  //.padding(.trailing)
                                  .frame(width: 100, height: 100)
                          }
                                    
                        
                    } .padding()
                    
                    VStack{
                        Text(villager.saying)
                            .frame(width:280)
                            .font(.custom("FinkHeavy", size: 23))
                            .foregroundColor(Color("MarromText"))
                            .offset(y: -90)
                            .offset(x: 0)
                        //    .padding(.bottom, 60)
                            .multilineTextAlignment(.center)
                        
                    }
                }
                .padding()
                
            }
            
            .background(Color("Creme"))
        }
    }
}
    
//           struct ContentView_Previews: PreviewProvider {
//               static var previews: some View {
//                   DetailView(villagerDetail: VillagerViewModel())
//
//               }
//        }

