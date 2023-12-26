//
//  LocacionBottomView.swift
//  MapSwiftUI
//
//  Created by Kin Der on 01.12.23.
//

import SwiftUI

struct LocacionBottomView: View {
    
    let location : Location
    
    var body: some View {
        VStack(alignment: .trailing){
            HStack(spacing: 0) {
        
                ZStack{
                
                    if let imageName = location.imageName.first {
                        Image(location.imageName)
                        
                            .resizable()
                            .scaledToFill()
                            .frame(width: 60,height: 60)
                        
                            .cornerRadius(50)
                    }
                    
                }
              
                .background(Color.blue)
                .cornerRadius(50)
                .offset(y:30
                )
                .padding(.leading, 9)
                VStack(spacing: 0){
                    Text(location.name)
                        .font(.subheadline)
         
                        .bold()
                        .padding(.top,15)
                        
                    HStack{
                 
                        Image(systemName: "wifi")
                            .font(.footnote)
                            .padding(.leading,10)
                            .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                        Text("GPS")
                            .foregroundColor(Color.black)
                            .font(.footnote)
                         
                        
                    }
                    .padding(.top, 15)
                }
                
                
                HStack{
                    Image(systemName: "calendar")
                        .padding(.top, 50)
                        .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                    Text("02.07.17")
                        .font(.footnote)
                        .padding(.top, 50)
               
                        .foregroundColor(.black)
                }
                HStack{
                    Image(systemName: "clock")
                        .padding(.top, 50)
                    
                        .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                    Text("21:00")
                        .padding(.top, 50)
                    
                        .font(.footnote)
                }
            }
            
            Button {
                //dd
            } label: {
                Text("Посмотреть историю")
                    .bold()
                    .foregroundColor(.white)
                    .padding(.all)
                    .background(Color.blue)
                    .cornerRadius(112)
                    
            }
            .padding()
       
            
     
        }
      
        .background(
            RoundedRectangle(cornerRadius: 10).fill(.ultraThinMaterial))
     
      

    }
    
}
struct

LocacionBottomView_Previews: PreviewProvider {
    static var previews: some View{
    
        LocacionBottomView(location: LocationDataService.locations.first!)
}
}

