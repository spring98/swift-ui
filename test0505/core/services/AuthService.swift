//
//  AuthService.swift
//  test0505
//
//  Created by spring on 2022/05/06.
//

import Alamofire
import Foundation

class AuthService {
//    func postTest() -> AuthModel{
    func postTest()  -> Any {
        let url = "http://222.100.24.97:3000/v1/auth/login"

        var request = URLRequest(url: URL(string: url)!)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        request.timeoutInterval = 10
        
        // POST 로 보낼 정보
        let params:Dictionary = ["email":"t@t.com", "password":"qwer1234"]

        // httpBody 에 parameters 추가
        do {
            try request.httpBody = JSONSerialization.data(withJSONObject: params, options: [])
        } catch {
            print("http Body Error")
        }
            
    
        
        var data:Any = []
        
//        let response = try await AF.request(request).responseJSON
//            switch response.result {
//            case .success(let successData):
//                print("POST 성공")
//                data = successData
////                print(data)
//
//            case .failure(let error):
//                print("🚫 Alamofire Request Error\nCode:\(error._code), Message: \(error.errorDescription!)")
//        }
        
        print(1)
        
        let response =  AF.request(request)
        print(response)
//        { (response) in
//            print(2)
//            switch response.result {
//            case .success(let successData):
//                print("POST 성공")
//                data = successData
////                print(data)
//
//            case .failure(let error):
//                print("🚫 Alamofire Request Error\nCode:\(error._code), Message: \(error.errorDescription!)")
//            }
//            print(3)
//        }
        
        print(4)
        print(data)
        
        return data
    }
    
    func service() async throws -> Data {
        
        let url:String = "http://222.100.24.97:3000/v1/auth/login"

        var request = URLRequest(url: URL(string: url)!)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        request.timeoutInterval = 10
        
        // POST 로 보낼 정보
        let params:Dictionary = ["email":"t@t.com", "password":"qwer1234"]

        // httpBody 에 parameters 추가
        do {
            try request.httpBody = JSONSerialization.data(withJSONObject: params, options: [])
        } catch {
            print("http Body Error")
        }
        
//        let (data, response) = try await URLSession.shared.data(from: URL(string: url)!)
        let (data, response) = try await URLSession.shared.data(for: request)
        
        if let httpResponse = response as? HTTPURLResponse {
            print("status code \(httpResponse.statusCode)")
        }
        
        print("data -> ", data)
        print("data type -> ", type(of: data))
                        let outputStr = String(data: data, encoding: String.Encoding.utf8)
                        print("result: \(outputStr!)")
        
        return data
    }
    
    
}

