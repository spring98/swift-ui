//
//  MainView.swift
//  test0505
//
//  Created by spring on 2022/05/06.
//

import SwiftUI

struct MainView: View {
    
    @State var index:Int = 0
    @StateObject var authViewModel = AuthViewModel()
    
    
    var body: some View {
        
        NavigationView {
            VStack() {
                Text("\(index)")
//                Text("\(authViewModel.user.name)")
                Text("과연")
                Text((authViewModel.authModel?.user.details.name) ?? "아직 데이터 불러오지 않음")
                Button(action: {
                    Task  {
                        try await authViewModel.fetchURLSession()
                        
                    }
                }) {
                    Text("이름 변경 버튼")
                }
//                Spacer()
//                TabBar()
            }
//            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .toolbar {
                ToolbarItem(placement: .bottomBar) {
                    TabBar()
                }
            }
        }
        
        
    }
    
}

struct TabBar:View {
    var body: some View {
        HStack() {
            VStack {
                Button(action: {
                    
                }) {
                    Text("화살표")
                }
                Text("내 위치")
            }
            
            VStack {
                Button(action: {
                    
                }) {
                    Text("화살표")
                }
                Text("라이브")
            }
            VStack {
                Button(action: {
                    
                }) {
                    Text("화살표")
                }
                Text("홈")
            }
            VStack {
                Button(action: {
                    
                }) {
                    Text("화살표")
                }
                Text("커뮤니티")
            }
            VStack {
                Button(action: {
                    
                }) {
                    Text("화살표")
                }
                Text("쇼핑")
            }
            
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
