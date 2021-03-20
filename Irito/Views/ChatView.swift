//
//  ChatView.swift
//  Irito
//
//  Created by Marfa Lamova on 3/20/21.
//  Copyright © 2021 Madina Saparbayeva. All rights reserved.
//

import SwiftUI

struct ChatView: View {
    
    @State private var searchText = ""
    
    var body: some View {
        NavigationView{
            VStack(){
                Text("Chat which you can be yourself")
                    .font(.system(size:20))
                    .bold()
                    .padding()
                
                Text("Join group which you love. It is all anonymous")
                    .frame(minWidth: 0, maxWidth: .infinity)
                
                SearchBar(text: $searchText)
                
//                List(landmarks) { landmark in
//                    HomeView(landmark: landmark)
//                }
                
                List(landmarks.filter({ searchText.isEmpty ? true : $0.name.contains(searchText) })) { landmark in
                    NavigationLink(destination: ChatMessengerView()) {
                        HomeView(landmark: landmark)
                    }
                }
                
//                List(landmarks.filter({ searchText.isEmpty ? true : $0.name.contains(searchText) })) { landmark in
//                        HomeView(landmark: landmark)
//                }
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                    Text("Nothing is interested? Create own channel")
                            .underline()
                            .padding()
                            .foregroundColor(.black)
                    
                }
            }
            .navigationBarHidden(true)
            .navigationBarItems(trailing: EmptyView())
        }
    }
}

struct ChatView_Previews: PreviewProvider {
    static var previews: some View {
        ChatView()
    }
}
