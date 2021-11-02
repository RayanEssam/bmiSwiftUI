//
//  ContentView.swift
//  bmi
//
//  Created by Rayan Taj on 02/11/2021.
//

import SwiftUI

struct ContentView: View {
    
    @State var sliderValue: Float = 150
    @State var weightValue: Int = 60
    @State var ageValue  : Int = 18
    @State var isMale : Bool = false
    @State var isShowingResultView: Bool = false

    
    var body: some View {
        NavigationView{
            ZStack{
                
                
                Color.init(UIColor(red: 0.04, green: 0.04, blue: 0.13, alpha: 1.00))
                    .ignoresSafeArea()
                
                VStack{
                    
                    
                    HStack(spacing: 45){
                        Button(action: {
                            isMale = false
                        }, label: {
                            ZStack{
                                RoundedRectangle(cornerRadius: 25, style: .continuous)
                                    .foregroundColor(Color.init(UIColor(red: 0.11, green: 0.12, blue: 0.20, alpha: 1.00)))
                                    .frame(width: 150, height: 150)
                                
                                VStack {
                                    Text("♀")
                                        .foregroundColor(.white)
                                    .font(.system(size: 60))
                                    
                                    Text("Female")
                                        .foregroundColor(.white)
                                        .font(.system(size: 25))
                                }
                                
                                
                            }
                        })
             
                        
                        Button(action: {
                            isMale = true
                        }, label: {
                            ZStack{
                                RoundedRectangle(cornerRadius: 25, style: .continuous)
                                    .foregroundColor(Color.init(UIColor(red: 0.11, green: 0.12, blue: 0.20, alpha: 1.00)))
                                    .frame(width: 150, height: 150)
                                
                                
                                VStack {
                                    Text("♂")
                                        .foregroundColor(.white)
                                    .font(.system(size: 60))
                                    Text("Male")
                                        .foregroundColor(.white)
                                        .font(.system(size: 25))
                                    
                                }
                                
                           
                                
                            }
                        })
                       
                        
                        
                        
                    }
                    
                    ZStack{
                        RoundedRectangle(cornerRadius: 25, style: .continuous)
                            .foregroundColor(Color.init(UIColor(red: 0.11, green: 0.12, blue: 0.20, alpha: 1.00)))
                            .frame(width: 350, height: 200)
                        
                        VStack(spacing: 20){
                            Text("Height")
                                .foregroundColor(.white)
                                .font(.system(size: 25))
                                .opacity(0.7)
                            
                            Text("\(Int(sliderValue))")
                                .foregroundColor(.white)
                                .font(.system(size: 35))
                                .fontWeight(.heavy)
                            Slider(value: $sliderValue , in: 0...300)
                            
                        }.padding(10)
                        
                        
                        
                    }.padding(30)
                    
                    
                    HStack(spacing: 45){
                        
                        ZStack{
                            RoundedRectangle(cornerRadius: 25, style: .continuous)
                                .foregroundColor(Color.init(UIColor(red: 0.11, green: 0.12, blue: 0.20, alpha: 1.00)))
                                .frame(width: 150, height: 150)
                            
                            
                            VStack(spacing: 5) {
                             
                                Text("Weight")
                                    .foregroundColor(.white)
                                    .font(.system(size: 25))
                                    .opacity(0.7)
                                
                                Text("\(weightValue)")
                                    .foregroundColor(.white)
                                    .font(.system(size: 35))
                                    .fontWeight(.heavy)
                                
                                HStack{
                                    ZStack{
                                        Circle()
                                            .frame(width: 50, height: 50)
                                            .foregroundColor(.gray)
                                        Text("-")
                                            .foregroundColor(.white)
                                            .font(.system(size: 40))
                                    }.onTapGesture {
                                       weightValue-=1
                                    }
                                  
                                    ZStack {
                                        Circle()
                                            .frame(width: 50, height: 50)
                                        .foregroundColor(.gray)
                                        Text("+")
                                            .foregroundColor(.white)
                                            .font(.system(size: 40))
                                    }.onTapGesture {
                                        weightValue+=1
                                     }
                                    
                                    
                                }
                                
                            }
                            
                       
                            
                        }
                        
                        ZStack{
                            RoundedRectangle(cornerRadius: 25, style: .continuous)
                                .foregroundColor(Color.init(UIColor(red: 0.11, green: 0.12, blue: 0.20, alpha: 1.00)))
                                .frame(width: 150, height: 150)
                            
                            
                            VStack(spacing: 5) {
                             
                                Text("Age")
                                    .foregroundColor(.white)
                                    .font(.system(size: 25))
                                    .opacity(0.7)
                                
                                Text("\(ageValue)")
                                    .foregroundColor(.white)
                                    .font(.system(size: 35))
                                    .fontWeight(.heavy)
                                
                                HStack{
                                    ZStack{
                                        Circle()
                                            .frame(width: 50, height: 50)
                                            .foregroundColor(.gray)
                                        Text("-")
                                            .foregroundColor(.white)
                                            .font(.system(size: 40))
                                    }.onTapGesture {
                                        ageValue-=1
                                    }
                                  
                                    ZStack {
                                        Circle()
                                            .frame(width: 50, height: 50)
                                        .foregroundColor(.gray)
                                        Text("+")
                                            .foregroundColor(.white)
                                            .font(.system(size: 40))
                                    }.onTapGesture {
                                        ageValue+=1
                                     }
                                    
                                    
                                }
                                
                            }
                            
                       
                            
                        }
                    }.padding(30)
                    
                    
                    
                    
                    Button(
                        action: {
                            
                            isShowingResultView = true
                            
                            
                            
                        }
                    
                    ) {
                        Text("Calculate")
                            .font(.title)
                            .fontWeight(.bold)
                    }
                    .frame(width:UIScreen.main.bounds.width - 40 , height: 75)
                    .background(.pink)
                    .foregroundColor(.white)
                    .cornerRadius(50)
                    
                }
               
                
             
                
                .fullScreenCover(isPresented: $isShowingResultView ){
                    
                    ZStack{
                        
                        
                        Color.init(UIColor(red: 0.04, green: 0.04, blue: 0.13, alpha: 1.00))
                        .ignoresSafeArea()
                        
                        
                        VStack {
                            var temp = pow(sliderValue/100, 2)
                            var bmi =  Double(weightValue) / Double(temp)
                            
                            
                            Text("Your result")
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                                .font(.system(size: 60))
                            
                         
                            Spacer()
                            Text("\(bmi)")
                                .foregroundColor(.white)
                                .fontWeight(.bold)
                            switch bmi{
                                case 0..<18.5 :
                                Text("YOU NEED TO EAT MORE !") .foregroundColor(.teal)
                                    .fontWeight(.bold)
                                case 18.5..<25 :
                                Text("Normal")
                                    .foregroundColor(.green)
                                    .fontWeight(.bold)
                                case 25..<30 :
                                Text("Average") .foregroundColor(.yellow)
                                    .fontWeight(.bold)
                                default:
                                
                                Text("Obese") .foregroundColor(.orange)
                                    .fontWeight(.bold)
                                }
          
                            
                            Spacer()
     
                            
                            Button(
                                action: {
                                    
                                    isShowingResultView = false
                                    
                                    
                                    
                                }
                            
                            ) {
                                Text("Calculate again")
                                    .font(.title)
                                    .fontWeight(.bold)
                            }
                            .frame(width:UIScreen.main.bounds.width - 40 , height: 75)
                            .background(.pink)
                            .foregroundColor(.white)
                        .cornerRadius(50)
                        }
                        
                        
                        
                    }
                    
     
                    
                    
                }
                
                
                
                
            }
            
            
        }
        
//        .navigationTitle(Text("Tasks").foregroundColor(.white)
//        )
       
        
        
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
