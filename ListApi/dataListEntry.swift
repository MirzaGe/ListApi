//
//  dataListEntry.swift
//  ListApi
//
//  Created by sherry on 26/08/2021.
//

import Foundation
//{
//        "userId": 1,
//        "id": 9,
//        "title": "nesciunt iure omnis dolorem tempora et accusantium",
//        "body": "consectetur animi nesciunt iure dolore\nenim quia ad\nveniam autem ut quam aut nobis\net est aut quod aut provident voluptas autem voluptas"
//    },


struct DataListEntry: Decodable, Identifiable {
    var userId : Int
    var id: Int
    var title: String
    var body: String
}
