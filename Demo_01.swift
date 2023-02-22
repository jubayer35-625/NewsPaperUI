//
//  Demo_01.swift
//  UIdemo
//
//  Created by Md Jubayer Hossain on 21/2/23.
//

import SwiftUI

struct Demo_01: View {
    var body: some View {
        VStack(alignment: .leading){
            TopBar().padding(.top, 35.0)
            Divider()
            ScrollView(.vertical,showsIndicators: false){
                
                   SubItem()
                   NewsToday()
                LatestToday()
                Spacer()
            }
            
        }
        .padding([.leading, .bottom, .trailing], 8.0)
        .edgesIgnoringSafeArea(Edge.Set.all)
   
    }
}

struct Demo_01_Previews: PreviewProvider {
    static var previews: some View {
        Demo_01()
    }
}



struct TopBar: View{

    
    
    var body: some View {
        
        HStack {
            
         
            Image(systemName: "network")
                .padding(.all, 3.0)
                .foregroundColor(Color("blueLite"))
                .font(.system(size: 45.0,weight: .semibold))
            Spacer()
            
            Image(systemName: "bell.badge")
                .padding(.all, 3.0)
                .foregroundColor(Color("black"))
                .font(.system(size: 30.0, weight: .bold))
            
            Image(systemName: "person.circle.fill")
                .padding(.all, 3.0)
                .foregroundColor(Color("black"))
                .font(.system(size: 45.0, weight: .bold))
            
        }
        
    }
}


struct SubItem: View {
    var body: some View {
        VStack(alignment:.leading){
            
            
            Text("What you")
                .font(.title)
            Text("Interested Today")
                .font(.title)
                .fontWeight(.bold)
            VStack(alignment: .center){
                HStack{
                    Spacer()
                    
                    HStack{
                        Image(systemName: "play.rectangle.fill")
                            .padding(.all, 3.0)
                            .foregroundColor(.red)
                            .font(.system(size: 40.0, weight: .bold))
                        Spacer()
                        Text("Movies").font(.title2).fontWeight(.thin)
                        Spacer()
                        
                    }.background(Color.gray.opacity(0.3)).cornerRadius(15)
                        .frame(width: 150.0)
                    Spacer()
                    HStack{
                        Image(systemName: "paintbrush.fill")
                            .padding(.all, 3.0)
                            .foregroundColor(.mint)
                            .font(.system(size: 33, weight: .bold))
                        Spacer()
                        Text("Design").font(.title2).fontWeight(.thin).padding(.trailing, 10.0)
                        Spacer()
                        
                    }.background(Color.gray.opacity(0.3)).cornerRadius(15)
                        .frame(width: 150.0)
                    Spacer()
                    
                }
                
                HStack{
                    
                    Spacer()
                    HStack{
                        Image(systemName: "basketball")
                            .padding(.all, 3.0)
                            .foregroundColor(.orange)
                            .font(.system(size: 40.0, weight: .bold))
                        Spacer()
                        Text("Sports").font(.title2).fontWeight(.thin).padding(.trailing, 10.0)
                        Spacer()
                        
                    }.background(Color.gray.opacity(0.3)).cornerRadius(15)
                        .frame(width: 150.0)
                    Spacer()
                    HStack{
                        Image(systemName: "square.grid.2x2")
                            .padding(.all, 3.0)
                            .foregroundColor(.green)
                            .font(.system(size: 40.0, weight: .bold))
                        Spacer()
                        Text("More").font(.title2).fontWeight(.thin).padding(.trailing, 10.0)
                        Spacer()
                        
                    }.background(Color.gray.opacity(0.3)).cornerRadius(15)
                        .frame(width: 150.0)
                    Spacer()
                }
                
                
            }
        }
    }
}



struct NewsToday : View {
    var body: some View {
       
        VStack{
            
            
            HStack{
                Text("News today")
                    .font(.title2)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.leading)
                
                Spacer()
                Image(systemName: "ellipsis")
                    .padding(.all, 3.0)
                    .foregroundColor(Color("black"))
                    .font(.system(size: 40.0, weight: .bold))
            }
            
            
            
            ScrollView(.horizontal,showsIndicators: false) {
                LazyHStack{
                    
                    ForEach(News){ news in
                        NewsItem(type:news.type, img:news.img, title:news.title, repoter:news.repoter, postTime: news.postTime)
                    }
                  
                    
                }}
            
            
        }
        
        
    }
}


struct NewsItem: View {
    let type: String
    let img: String
    let title : String
    let repoter: String
    let postTime: String
    
    var body: some View {
        
        
        VStack(alignment:.leading){
            
            ZStack(alignment: .topLeading){
                VStack{
                    Image(img)
                        .resizable()
                        .frame(width: 270, height: 200)
                        .aspectRatio(CGSize(width:270, height: 200), contentMode: .fit)
                        .clipShape(RoundedRectangle(cornerRadius: 12.0))
                    
                    //title
                    Text(title)
                        .font(.headline)
                        .multilineTextAlignment(.leading)
                        .lineLimit(2)
                        .padding([.leading, .bottom], 4.0)
                        .frame(height: 50.0)
                }
                VStack{
                    HStack{
                        // dot & Types
                        Circle()
                            .fill(Color(.red))
                            .frame(width: 8.0, height: 8.0)
                        Text(type)
                            .font(.title3)
                            .fontWeight(.semibold)
                            .foregroundColor(Color.white)
                        Spacer()
                    }
                    .padding(/*@START_MENU_TOKEN@*/[.top, .leading]/*@END_MENU_TOKEN@*/)
                Spacer()
                    HStack{
                        // by time
                        
                        Text("By:\(repoter)")
                            .font(.title3)
                            .fontWeight(.bold)
                            .foregroundColor(Color.black)
                        Spacer()
                        Text(postTime)
                            .font(.title3)
                            .fontWeight(.semibold)
                            .foregroundColor(Color.black)
                    }
                    .padding([.leading, .bottom, .trailing])
                    
                    
                }.padding(.bottom, 50.0)
                
                
            }.background(.gray.opacity(0.3))
                .clipShape(RoundedRectangle(cornerRadius: 12.0))
                .frame(width: 270)
        }
        
        
    }}


struct LatestToday: View {
    var body: some View{
        
        Group{
            HStack{
                Text("Latest Today")
                    .font(.title2)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.leading)
                Spacer()
               
            }
            LatestItem()
            LatestItem()
            LatestItem()
            LatestItem()
            LatestItem()
            LatestItem()
            LatestItem()
            LatestItem()
            
        }
    }
}



struct LatestItem: View {
    @State private var isFavorite = false
    @State private var isSave = false
    var body: some View {
       
        VStack(alignment:.leading){
            
            
       
            
            
            HStack(alignment: .top){
                //image
                Image("image1")
                    .resizable()
                    .frame(width: 120, height: 200)
                    .aspectRatio(CGSize(width:120, height: 200), contentMode: .fit)
                    .clipShape(RoundedRectangle(cornerRadius: 12.0))
                // about
                VStack(alignment: .leading){
                    // type
                    Text("Techonogy")
                        .font(.headline)
                        .fontWeight(.semibold)
                        .foregroundColor(Color.white)
                        .padding(.all, 5.0)
                        .background(.orange)
                        .clipShape(RoundedRectangle(cornerRadius: 10.0))
                    // title news
                    Text("5 Fastest Parformaces Apple\nThat Change Your Mind")
                        .font(.body)
                        .fontWeight(.semibold)
                        .foregroundColor(Color.black)
                        .multilineTextAlignment(.leading)
                    HStack{
                        
                        HStack{
                            // icon with head
                            Image(systemName: isFavorite ? "heart.fill" : "heart")
                              
                                .foregroundColor(.black)
                                .font(.system(size: 25, weight: .bold))
                                .onTapGesture {
                                    print(isFavorite)
                                    isFavorite.toggle()
                                }
                            Text("2.5k")
                        }
                        
                        HStack{
                            // icon with head
                            Image(systemName: "clock.badge")
                                .foregroundColor(.black)
                                .font(.system(size: 25, weight: .bold))
                              
                            Text("11hr ago")
                        }
                        Spacer()
                     
                            // icon
                            Image(systemName: isSave ? "bookmark.fill" :  "bookmark")
                                .foregroundColor(.black)
                                .font(.system(size: 25, weight: .bold)).padding(.trailing, 5.0)
                                .onTapGesture {
                                    isSave.toggle()
                                }
                                
                    
                        
                    }
                    .padding(.top)
                    
                }
                .padding(.leading, 3.0)
                
            }
            
            

        }
    }
}

// Slide Bar
