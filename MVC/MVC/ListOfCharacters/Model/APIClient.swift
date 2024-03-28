//
//  APIClient.swift
//  MVC
//
//  Created by Yelko Loncarich on 14/07/23.
//

import Foundation

final class ListofCharactersAPIClient {
    
    func getListOfCharacter() async -> CharacterModelResponse {
        let url = URL(string: "https://rickandmortyapi.com/api/character")!
        let (data, _) = try! await URLSession.shared.data(from: url)
        return try! JSONDecoder().decode(CharacterModelResponse.self, from: data)
    }
    
}
