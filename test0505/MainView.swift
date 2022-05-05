//
//  HomeView.swift
//  test0505
//
//  Created by spring on 2022/05/06.
//

import SwiftUI

struct MainView: View {
    
    @State var index:Int = 0
    
    var body: some View {
        
        NavigationView {
            VStack() {
                Text("\(index)")
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

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
