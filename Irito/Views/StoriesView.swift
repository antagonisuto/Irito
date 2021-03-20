//
//  StoriesView.swift
//  Irito
//
//  Created by Marfa Lamova on 3/20/21.
//  Copyright © 2021 Madina Saparbayeva. All rights reserved.
//

import SwiftUI

struct StoriesView: View {
    
    //private var storiesList = stories
    
    @State private var searchText = ""
    
    var body: some View {
        NavigationView{
            VStack{
                Text("Read and write your story ")
                    .font(.system(size: 20))
                    .bold()
                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                    .padding()

                SearchBar(text: $searchText)
                
//                List(stories.filter({ searchText.isEmpty ? true : $0.title.contains(searchText) })) { landmark in
//                    StoriesList(story: landmark)}
//

                    List(stories.filter({ searchText.isEmpty ? true : $0.title.contains(searchText) }))
                        { landmark in
                            NavigationLink(destination: DetailStoriesView(story: landmark)) {
                                    StoriesList (story: landmark)
                            }
                            .buttonStyle(PlainButtonStyle())
                    }
                

                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                    Text("Do you have a story or idea? Write it")
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



struct StoriesView_Previews: PreviewProvider {
    static var previews: some View {
        StoriesView()
    }
}
