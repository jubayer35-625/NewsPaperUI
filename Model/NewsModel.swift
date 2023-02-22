//
//  NewsModel.swift
//  UIdemo
//
//  Created by Md Jubayer Hossain on 22/2/23.
//

import SwiftUI

struct NewsModel:Identifiable {
    var id = UUID().uuidString
    var type: String
    var img: String
    var title : String
    var repoter: String
    var postTime: String
    
}
//Model Data Store
var News = [
    NewsModel(type: "Sport", img: "sport", title: title_1, repoter: "Rakib", postTime: "1hous"),
    NewsModel(type: "Design", img: "image1", title: title_2, repoter: "Jubayer", postTime: "3hous"),
    NewsModel(type: "Life", img: "image", title: title_1, repoter: "Mamun", postTime: "4hous"),
    NewsModel(type: "Sport", img: "sport", title: title_1, repoter: "Rakib", postTime: "1hous"),
    NewsModel(type: "Design", img: "image1", title: title_2, repoter: "Jubayer", postTime: "3hous"),
    NewsModel(type: "Life", img: "image", title: title_1, repoter: "Mamun", postTime: "4hous"),
    NewsModel(type: "Sport", img: "sport", title: title_1, repoter: "Rakib", postTime: "1hous"),
    NewsModel(type: "Design", img: "image1", title: title_2, repoter: "Jubayer", postTime: "3hous"),
    NewsModel(type: "Life", img: "image", title: title_1, repoter: "Mamun", postTime: "4hous"),
    NewsModel(type: "Sport", img: "sport", title: title_1, repoter: "Rakib", postTime: "1hous"),
    NewsModel(type: "Design", img: "image1", title: title_2, repoter: "Jubayer", postTime: "3hous"),
    NewsModel(type: "Life", img: "image", title: title_1, repoter: "Mamun", postTime: "4hous"),
]


var title_1: String = "Read all latest news headlines from Bangladesh.Get today's. "
var title_2: String = "Find the latest breaking news and information on the top stories."




