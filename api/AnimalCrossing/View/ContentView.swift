//
//  ContentView.swift
//  AnimalCrossing1
//
//  Created by Mari Higashi on 03/02/23.
//

import SwiftUI
import Foundation

struct Fonts {
    static let fink = ""
}

struct URLImage: View {
    let urlString: String
    
    @State var data: Data?
    
    var body: some View {
        if let data = data, let uiimage =  UIImage(data: data) {
            Image(uiImage: uiimage)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 130, height: 70)
                .background(Color.gray)
        }
    }
    
    private func fetchData() {
        guard let url = URL(string: urlString) else {
            return
        }
        
        let task = URLSession.shared.dataTask(with: url) { data, error, response in
            self.data = data
        }
        task.resume()
    }
}

struct ContentView: View {
    @StateObject var villagerVM = VillagerViewModel()
    @State var filteredVillagers: [VillagerModel]
    @State var searchText = ""
    
        private func searchVillagers(keyword: String){
            filteredVillagers = villagerVM.villagers.filter { villagers in (villagers.name?.nameUSen ?? "nil").contains(keyword)}
        }
    
    private var villager: [VillagerModel]{
        filteredVillagers.isEmpty ? villagerVM.villagers : filteredVillagers
    }
    
    
    var body: some View {
        NavigationStack {
        
            VStack{
                HStack{
                    Text("Villagers")
                        .font(.custom("FinkHeavy", size: 40))
                        .foregroundColor(Color("MarromText"))
                    Spacer()
       
                    NavigationLink{
                        PersonalityView()}
                label: {
                        Image(systemName: "person.fill.questionmark")
                            .foregroundColor(Color("MarromText"))
                            .font(.system(size: 25, weight: .regular))
                        
                    }
                }
                .padding(8)
                .padding(.horizontal)
                .cornerRadius(10)
                Spacer()
                
                VStack {
                    HStack{
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(Color("MarromText"))
                        
                        TextField("Search Villager", text: $searchText)
                            .foregroundColor(Color.black)
                            .onChange(of: searchText, perform: searchVillagers) 
                    }
                }
                
                .font(.headline)
                .padding()
                .background(
                    RoundedRectangle(cornerRadius: 25)
                        .fill(Color.white)
                        .shadow(color: Color.black.opacity(0.15), radius: 10, x:0, y:0)
                )
                .padding(.horizontal)
                
                List {
                    
                    ForEach(villager) { item in
                        
                        NavigationLink {
                            DetailView(villagerDetail: villagerVM, villager: item )
                        } label: {
                            
                            
                            LazyHStack{
                                if let image = item.icon_uri {
                                    AsyncImage(url: URL(string: image),scale: 2) { image in
                                        image.self
                                    } placeholder: {
                                        ProgressView()
                                    }
                                }
                                
                                VStack(alignment: .leading) {
                                    Text(item.name?.nameUSen ?? "nil" )
                                        .font(.custom("FinkHeavy", size: 28))
                                        .foregroundColor(Color("MarromText"))
                                    HStack{
                                        Image(systemName: "birthday.cake.fill")
                                            .foregroundColor(Color("MarromText"))
                                        
                                        Text(item.birthday)
                                            .font(.custom("FinkHeavy", size: 18))
                                            .foregroundColor(.brown)
                                    }
                                }
                                
                            }
                            
                            
                        }
                        .simultaneousGesture(TapGesture().onEnded{})

                        .listRowBackground(Color("Creme"))
                        .shadow(color: Color.black.opacity(0.2), radius: 10, x:0, y:0)
                    }
                }
                .shadow(color: Color.black.opacity(0.2), radius: 25, x: 0, y: 0)
                .background( Image("backgroundImage")
                    .resizable()
                    .frame(width: 600, height: 600)
                    .opacity(0.2))
                .scrollContentBackground(.hidden)
                .padding(.top, 20)
            }
            
            .task {
                do {
                    try await self.villagerVM.fetchAllNames()
                } catch {
                    print(error.localizedDescription)
                    print(error)
                }
            }
            
            .background(Color("Creme"))
            
        }
    }
}
