//
//  NetworkingManager.swift
//  ListApi
//
//  Created by sherry on 26/08/2021.
//

import Foundation

class NetworkingManager : ObservableObject {
    // now parsing the data
 @Published var dataList = [DataListEntry]()
    
    init() {
        guard let url = URL(string: "http://jsonplaceholder.typicode.com/posts") else {return}
        URLSession.shared.dataTask(with: url){(data,_,_)
            in guard let data = data else {return}
            // type we want to map with in decode
            let dataList = try! JSONDecoder().decode([DataListEntry].self, from: data)
            DispatchQueue.main.async {
                // for populating self.datalist
                self.dataList = dataList
                print(self.dataList)
            }
        }.resume()
    }
}
