//
//  HeroesService.swift
//  SuperHero
//
//  Created by admin on 30.09.2020.
//

import Foundation
import Alamofire
import Combine

class HeroesService {
    let url = "https://akabab.github.io/superhero-api/api/"
    
    func fetch() -> AnyPublisher<[Hero], AFError> {
        let publisher = AF.request(url + "all.json").publishDecodable(type: [Hero].self)
        return publisher.value()
    }
    
    func get(id: Int) -> AnyPublisher<Hero, AFError> {
        let publisher = AF.request("\(url)id/\(id).json").publishDecodable(type: Hero.self)
        return publisher.value()
    }
}
