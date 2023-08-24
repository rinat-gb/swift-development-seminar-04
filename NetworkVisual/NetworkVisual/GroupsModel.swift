//
//  GroupsModel.swift
//  NetworkVisual
//
//  Created by Ринат on 15.08.2023.
//

struct GroupsModel: Codable {
    var response: GroupsResponse?
}

struct GroupsResponse: Codable {
    var count: Int
    var items: [Group]?
}

struct Group: Codable {
    var id: Int
    var name: String?
    var description: String?
    var photo: String?

    enum CodingKeys: String, CodingKey {
        case id
        case name
        case description
        case photo = "photo_50"
    }
}
