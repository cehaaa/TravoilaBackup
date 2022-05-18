//
//  Homescreen.swift
//  Travoila
//
//  Created by Patrick Louis on 15/05/22.
//

import SwiftUI

struct HomeView: View {
    
//    @State private var AddNewExpenses = 0
    @State var isNoTrip: Bool = true
    @State var trips: [Trip] = []
    
    var body: some View {
        
//        VStack (spacing: isNoTrip ? 200 : 0) {
//                    ZStack (alignment: .top) {
//                        Rectangle()
//                            .frame(width: .infinity, height: 120)
//                            .foregroundColor(Color.gray.opacity(0.1))
//                            .ignoresSafeArea()
//                        
//                        HStack {
//                            Text("Budget Trips")
//                                .frame(width: 170, height: 30, alignment: .leading)
//                                .font(.system(size: 28, weight: .bold))
//                            
//                            Spacer()
//                            
//                            Image(systemName: "plus")
//                                .font(.title)
//                                .foregroundColor(Color("CustomColor"))
//                        }
//                        .padding(.all)
//                    }
//                    
//                    ScrollView {
//                        
//                        if(isNoTrip){
//                            Text("No Budget Trip Plan")
//                                .frame(width: .infinity)
//                                .font(.system(size: 20,weight: .medium))
//                            
//                            Spacer()
//                                .frame(height: 10)
//                            
//                            Text("You have not created any budget trip expenses yet")
//                                .multilineTextAlignment(.center)
//                                .frame(width: 280, height: 50)
//                                .font(.system(size: 16,weight: .thin))
//                            
//                            Spacer()
//                                .frame(height: 30)
//                        } else {
//                            Text("Sudah ada data")
//                        }
//                        
//                        
//                        NavigationLink(destination: Newtrip(trips: $trips, isNoTrip: $isNoTrip)){
//                            Text("Create Budget Trip")
//                                .bold()
//                                .padding(.horizontal, 30.0)
//                                .padding(.vertical, 20.0)
//                                .background(Color("CustomColor"))
//                                .foregroundColor(.white)
//                                .cornerRadius(10.0)
//                        }
//                        
//        //                Button(action: {
//        //
//        //                }) { Section {
//        //                    Text("Create Budget Trip")
//        //                        .foregroundColor(Color.white)
//        //                        .padding(.horizontal)
//        //                        .padding(.vertical, 15.0)
//        //                        .frame(minWidth:0,  maxWidth: .infinity, alignment: .top)
//        //                        .background(
//        //                            RoundedRectangle(cornerRadius: 10)
//        //                                .stroke(lineWidth: 0)
//        //                                .background(Color("CustomColor").cornerRadius(10)))
//        //                }
//        //                .frame(minWidth:0, maxWidth: 200, alignment: .top)
//        //                }
//                    }
//                    
//                }
//                .offset(y: -40.0)
////        VStack {
////            ZStack (alignment: .top) {
////                Rectangle()
////                    .frame(width: .infinity, height: 120)
////                    .foregroundColor(Color.gray.opacity(0.1))
////                    .ignoresSafeArea()
////
////                HStack {
////                    Text("Budget Trips")
////                        .frame(width: 170, height: 30, alignment: .leading)
////                        .font(.system(size: 28, weight: .bold))
////
////                    Spacer()
////
////                    Image(systemName: "plus")
////                        .font(.title)
////                        .foregroundColor(Color("CustomColor"))
////                }
////                .padding(.all)
////            }
////
////            ScrollView {
////
////                Text("No Budget Trip Plan")
////                    .frame(width: .infinity)
////                    .font(.system(size: 20,weight: .medium))
////
////                Spacer()
////                    .frame(height: 10)
////
////                Text("You have not created any budget trip expenses yet")
////                    .multilineTextAlignment(.center)
////                    .frame(width: 280, height: 50)
////                    .font(.system(size: 16,weight: .thin))
////
////                Button(action: {
////
////                }) { Section {
////                    Text("Create Budget Trip")
////                        .foregroundColor(Color.white)
////                        .padding(.horizontal)
////                        .padding(.vertical, 15.0)
////                        .frame(minWidth:0,  maxWidth: .infinity, alignment: .top)
////                        .background(
////                            RoundedRectangle(cornerRadius: 10)
////                                .stroke(lineWidth: 0)
////                                .background(Color("CustomColor").cornerRadius(10)))
////                }
////                .frame(minWidth:0, maxWidth: 200, alignment: .top)
////                }
////            }
////
////        }
////
////    }
//        NavigationView {
//            TabView(selection: .constant(1)) {
//                Text("INI SATU").tabItem {
//                    Image(systemName: "house")
//                    Text("Home") }.tag(1)
//
//                Text("INI DUA").tabItem {
//                    Image(systemName: "airplane.circle")
//                    Text("My Trips") }.tag(2)
//            }
//
//            .navigationTitle("Budget Trip")
//
//            Button (action: {
//
//            }, label: {
//                Image(systemName: "plus")
//                    .font(.system(size: 30))
//            }
////           ) .navigationBarItems(
////
////                trailing:
////                    NavigationLink(
////                        destination: AddExpensesPage,
////                        label: {
////                            Image(systemName: "plus")
////                        })
//
//            )
//            .accentColor(Color("CustomColor"))
//                }
//
//
//        }
//
//
//struct AddExpensesPage: View {
//
//    @Environment(\.presentationMode) var presentationMode
//
//    var body: some View {
//        ZStack {
//            Color.white.ignoresSafeArea()
//                .navigationTitle("New Trip")
//
//            VStack {
//                Button("Back Button") {
//                    presentationMode.wrappedValue.dismiss()
//                }
//
//            }
//        }
//
//
//    }
}
}
    
struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
