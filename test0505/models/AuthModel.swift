//
//  AuthModel.swift
//  test0505
//
//  Created by spring on 2022/05/06.
//

import UIKit

//struct AuthModel {
//    var name:String
//    var age:Int
//}





struct AuthModel : Codable {
    let user:User
    let tokens:Tokens
}

struct User : Codable {
    let id:String
    let role:String
    let email:String
    let mobile:String?
    let username:String?
    let accept_terms:Int
    let created_at:String
    let updated_at:String
    let details:Details
    
}


struct Details : Codable {
    let name:String
    let birth:String?
    let sex:String?
    let use_dm:Int
    let profile_img:String
    let follower_cnt:Int
    let followee_cnt:Int
}

struct Tokens : Codable {
    let access:AccessToken
    let refresh:RefreshToken
}

struct AccessToken : Codable {
    let token:String
    let expires:String
}

struct RefreshToken : Codable {
    let token:String
    let expires:String
}
