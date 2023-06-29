//
//  ApiService.swift
//  RickAndMorty
//
//  Created by Thomas Bernard on 29/06/2023.
//

import Foundation

struct APIResponse<T: Decodable>: Decodable {
    let results: [T]
}

class APIService {

    let baseURL = "https://rickandmortyapi.com/api/"

    func fetchResource<T: Decodable>(resource: String, completion: @escaping ([T]?) -> Void) {
        guard let url = URL(string: baseURL + resource) else {
            completion(nil)
            return
        }

        URLSession.shared.dataTask(with: url) { (data, response, error) in
            guard error == nil else {
                print("Error: \(error!)")
                completion(nil)
                return
            }
            guard let data = data else {
                print("No data found")
                completion(nil)
                return
            }

            let decoder = JSONDecoder()

            do {
                let apiResponse = try decoder.decode(APIResponse<T>.self, from: data)
                completion(apiResponse.results)
            } catch {
                print("Error decoding JSON: \(error)")
                completion(nil)
            }

        }.resume()
    }
}

