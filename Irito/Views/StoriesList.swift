//
//  StroriesList.swift
//  Irito
//
//  Created by Marfa Lamova on 3/20/21.
//  Copyright © 2021 Madina Saparbayeva. All rights reserved.
//

import SwiftUI

struct StoriesList: View {
    var story: Stories
    
    var body: some View {
        HStack{
            
            story.emoji
                .frame(width: 20, height: 20)
                .padding()
            
            VStack(alignment: .leading){
                Text(story.title)
                    .bold()
                
                Text(story.subTitle)
            }
            .padding()
        }
        .scaledToFit()
        .frame(minWidth: 200, idealWidth: 335, maxWidth: .infinity, alignment: .leading)
        .overlay( RoundedRectangle(cornerRadius: 10)
            .stroke(Color.black, lineWidth: 1))
    }
}

struct StroriesList_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            StoriesList(story: stories[1])
            StoriesList(story: stories[2])
        }
        .previewLayout(.fixed(width: 300, height: 70))
    }
}
