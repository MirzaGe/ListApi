//
//  ContentView.swift
//  ListApi
//
//  Created by sherry on 26/08/2021.
//

import SwiftUI

struct ContentView: View {
    
  @ObservedObject  var networkingManager = NetworkingManager()
    
    
    
    var body: some View {
        List(networkingManager.dataList) {
            data in Text(data.title)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
