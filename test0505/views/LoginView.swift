//
//  ContentView.swift
//  test0505
//
//  Created by spring on 2022/05/05.
//

import SwiftUI

struct LoginView: View {
    var body: some View {
        
        NavigationView {
            VStack(){
                Spacer()
                Text("Hello, world!")
                Spacer()
                Text("Hello, world!")
                Text("Hello, world!")
                Spacer()
                Button(action: {
                    print("alsihfe")
                }) {
                    Text("버튼 하나")
                }
                Spacer()
                
                NavigationLink(destination: MainView()) {
                    Text("홈 화면으로 이동")
                }
                
            }
            .navigationTitle(Text("AppBar"))
                .navigationBarTitleDisplayMode(.inline)
                .navigationBarColor(.lightGray)
        }
        

    }
    
}










extension View {
 
    func navigationBarColor(_ backgroundColor: UIColor?) -> some View {
        self.modifier(NavigationBarModifier(backgroundColor: backgroundColor))
    }

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
