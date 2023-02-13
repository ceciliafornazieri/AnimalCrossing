//
//  VillagerViewModel.swift
//  AnimalCrossing1
//
//  Created by Mari Higashi on 06/02/23.
//

import Foundation

class VillagerViewModel: ObservableObject {
    
    @Published var villagers: [VillagerModel] = []
    
    @MainActor func fetchAllNames() async throws {
        guard let url = URL(string: "https://acnhapi.com/v1/villagers") else {
            print("failed to get URL")
            return
        }
        
        var request = URLRequest(url: url, timeoutInterval: 10)
        request.httpMethod = "GET"
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        request.addValue("application/json", forHTTPHeaderField: "Accept")
        
        let (data, _) = try await URLSession.shared.data(for: request)
        
        let teste = try JSONSerialization.jsonObject(with: data) as! [String:Any]

        for key in teste.keys {
            guard let content = teste[key] else { continue }
          //  print(content)
            do {
                let json = try JSONSerialization.data(withJSONObject: content)

                let convertion = try JSONDecoder().decode(VillagerModel.self, from: json)
                print(convertion)
                self.villagers.append(convertion)
                //print(villagers.)
            } catch {
              //  print(error)
            }
        }
    }
    
    public func getVillagersNames() -> [String] {
        var villagersNames: [String] = []
        for villager in villagers {
            villagersNames.append(villager.name?.nameUSen ?? "nil")
        }
        return villagersNames
    }
    
}
