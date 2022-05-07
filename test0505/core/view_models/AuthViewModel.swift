//
//  AuthViewModel.swift
//  test0505
//
//  Created by spring on 2022/05/06.
//

import UIKit

class AuthViewModel: ObservableObject {
    
    var authService = AuthService()
    func fetchAuth()  {
    let data:Any =  authService.postTest()
        
        do {
            let jsonData = try JSONSerialization.data(withJSONObject: data, options: .prettyPrinted)
            let json = try JSONDecoder().decode(AuthModel.self, from: jsonData)
            
            print(json.user.id)
            print(type(of: json))
        } catch (let error) {
            print("error: ", error)
        }
    }
    
    
    @Published var authModel:AuthModel? = nil
    
    func fetchURLSession() async throws {
        print("authModel ->", authModel)
        let data:Data = try await authService.service()
        
        let json = try JSONDecoder().decode(AuthModel.self, from: data)
        
        
        authModel = json
        print("authModel ->", authModel)
    }
    
//    var users:AuthModel
    
//    var users:[AuthModel]
//
//    func fetchAuth() {
//        users.append(contentsOf: <#T##Sequence#>)
//    }
//
    
//    @Published var user  = AuthModel(name: "보겸", age: 3)
        
//        var name: String {
//            seogun.name
//        }
//        var age: String {
//
//            //Date를 -> 나이로 변환
//            return "27"
//        }
    //이름변경 함수 생성
//    func changeName(_ name: String) {
//        user.name = name
//    }
}
