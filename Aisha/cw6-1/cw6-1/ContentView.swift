//
//  ContentView.swift
//  cw6-1
//
//  Created by MacBook` on 04/01/2021.
//

import SwiftUI

enum mood {
    case happy, sad, fine,  meh
}

struct ContentView: View {
    @State var mymood = mood.happy
    
    var body: some View {
        VStack{
            HStack{
            Text("MoodCheck")
            .font(.largeTitle)
            .fontWeight(.bold)
            Spacer()
            }
            
            Text(" ")
            Spacer()
            
            if mymood == mood.happy
            {
              Text("I feel Happy")
            }else if mymood == mood.sad {
                Text("I feel Sad")
            }else if mymood == mood.fine {
                Text("I feel Fine")
            }else if mymood == mood.meh {
                Text("I feel Meh")
            }
            
            HStack{
                
                Button(action: {mymood = .happy}) {
                    Text("😃")
                }.padding(3)
                Button(action: {mymood = .sad}) {
                    Text("😔")
                }.padding(3)
                Button(action: {mymood = .fine}) {
                    Text("😕")
                }.padding(3)
                Button(action: {mymood = .meh}) {
                    Text("😇")
                }.padding(3)
            }
            
            Spacer()
            
        }
        
    }
 
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
