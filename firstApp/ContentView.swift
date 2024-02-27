//
//  ContentView.swift
//  firstApp
//
//  Created by StudentAM on 2/26/24.
//

import SwiftUI
struct ContentView: View {
    @State private var count: Int = 0 //initialize count
    func increment(){ //function for increment button
        if(count < 50){ //no change once it's 50
            count += 1 //add 1 when increment pressed
        }
    }
    func decrement(){ //function for decrement button
        if(count > 0){ //no change once it's 0
            count -= 1 //minus 1 when decrement pressed
        }
    }
    var body: some View {
        VStack {
            Text("Click buttons below to change the counter")//app instructions
                .padding()//space to replicate photo
            Text("\(count)")//count display
        }
        .padding()//space to replicate photo
        HStack {// horizontal stack to put the buttons side by side
            Button(action: {//increment button
                increment()//function call
            }, label: {//button label
                Text("Increment")//label text
                    //buttons styles to replicate photo
                    .padding(10)
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(8)
            })
            Button(action: {//decrement button
                decrement()//function call
            }, label: {//button label
                Text("Decrement") //label text
                //buttons styles to replicate photo
                    .padding(10)
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(8)
            })
        }
    }
}

#Preview {// start preview
    ContentView()
}
