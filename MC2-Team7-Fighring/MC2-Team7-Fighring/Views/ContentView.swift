//
//  ContentView.swift
//  MC2-Team7-Fighring
//
//  Created by 정승균 on 2023/05/07.
//

import SwiftUI

struct ContentView: View {
    @State private var selection: Tab = .my

    // 앱을 첫 실행할 때만 온보딩 화면 띄우기 위한 변수
    @AppStorage("_isFirstLaunch") var isFirst: Bool = true
    
    enum Tab {
        case my
        case lover
        case result
    }
    
    var body: some View {
        if isFirst {
            OnBoardingView0(isFirstLaunch: $isFirst)
                .edgesIgnoringSafeArea(.all)
            
        } else {
            TabView(selection: $selection) {
                MainView()
                    .tabItem {
                        Label("My", systemImage: "person.circle.fill")
                    }
                    .tag(Tab.my)
                
                LoverHome()
                    .tabItem {
                        Label("Lover", systemImage: "heart.circle")
                    }
                    .tag(Tab.lover)
                
                ResultHome()
                    .tabItem {
                        Label("Result", systemImage: "book.circle.fill")
                    }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
