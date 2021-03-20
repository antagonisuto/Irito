//
//  DetailStoriesView.swift
//  Irito
//
//  Created by Marfa Lamova on 3/20/21.
//  Copyright © 2021 Madina Saparbayeva. All rights reserved.
//

import SwiftUI

struct DetailStoriesView: View {
    var story: Stories
    
    var body: some View {

            VStack (alignment: .leading){
                
                story.emoji
                    .frame(width: 50, height: 50)
                
                Text(story.title)
                    .bold()
                    .font(.system(size: 20))
                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                
                HStack{
                    Spacer()
                    Text("by " + story.user)
                        .foregroundColor(.gray)
                }
                
                
                Text(story.mainBody)
                    .frame(minHeight: 0, maxHeight: .infinity)
                
                Spacer()
                
            }
            .padding()
            
        }
}

struct DetailStoriesView_Previews: PreviewProvider {
    static var previews: some View {
        DetailStoriesView(story: stories[0])
    }
}
