//
//  ContentView.swift
//  SwiftUI-List-Starter
//
 
//

import SwiftUI

struct VideoListView: View {
    var videos:  [Video] = VideoList.topTen
    var body: some View {
        
        NavigationView{
            List(videos,id : \.id){ video in
                NavigationLink(destination: VideoDetailView(video: video), label: {
                    
                    HStack {
                        Image(video.imageName)
                            .resizable()
                            .scaledToFit()
                            .frame(height: 70)
                        .cornerRadius(4)
                        
                        VStack(alignment:.leading,spacing: 5) {
                            Text(video.title)
                                .fontWeight(.medium)
                                .lineLimit(1)
                                .minimumScaleFactor(0.5)
                                .font(.system(size: 30))
                            
                            Text(video.uploadDate)
                                .font(.subheadline)
                                .foregroundColor(.gray)
                        }
                    }
                    
                    
                    
                    
                })
         
                
                
            
            } .navigationTitle("Sean Allen Videos")
                
                
            
        }
       
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        VideoListView()
            .preferredColorScheme(.dark)
        
    }
}
