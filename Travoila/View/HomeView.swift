//
//  Homescreen.swift
//  Travoila
//
//  Created by Patrick Louis on 15/05/22.
//

import SwiftUI

struct TabContainerView: View {
    
    @State var isNoTrip: Bool = true
    @State var trips: [Trip] = []
    
    var body: some View {
        TabView {
            HomeView(isNoTrip: $isNoTrip, trips: $trips)
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            
            Text("My trip")
                .tabItem {
                    Label("My Trips", systemImage: "airplane.circle")
                }
        }
        .accentColor(Color("CustomColor"))
    }
}

struct HomeView: View {
    
    @Binding var isNoTrip: Bool
    @Binding var trips: [Trip]
    
//    @State var 
    
    var body: some View {
        VStack (spacing: isNoTrip ? 150 : 0) {
            ZStack (alignment: .top) {
//                Rectangle()
                Image("Home")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 390, height: 120)
//                    .foregroundColor(Color.gray.opacity(1))
                    .ignoresSafeArea()

                HStack {
                    Text("Budget Trip")
                        .frame(width: 170, height: 70, alignment: .leading)
                        .font(.system(size: 28, weight: .bold))
                        

                    Spacer()
//                        .background(Color.orange)
                    
                    NavigationLink(destination: NewTripView(trips: $trips, isNoTrip: $isNoTrip)) {
                    Image(systemName: "plus")
                        .font(.title)
                        .foregroundColor(Color("CustomColor"))
                    }
                }
                .offset(y: -30)
                .padding(.all)
//                .padding(.bottom, 50)
//                    .background(Color.red)
            }

            ScrollView {
                if(isNoTrip){
                    Text("No Budget Trip Plan")
                        .frame(width: .infinity)
                        .font(.system(size: 20,weight: .medium))

                    Spacer()
                        .frame(height: 10)
                        .background(Color.orange)

                    Text("You have not created any budget trip expenses yet")
                        .multilineTextAlignment(.center)
                        .frame(width: 280, height: 50)
                        .font(.system(size: 16,weight: .thin))

                    Spacer()
                        .frame(height: 10)
                        .background(Color.orange)
                    
                    NavigationLink(destination: NewTripView(trips: $trips, isNoTrip: $isNoTrip)){
                        Text("Create Budget Trip")
                            .bold()
                            .padding(.horizontal, 30.0)
                            .padding(.vertical, 20.0)
                            .background(Color("CustomColor"))
                            .foregroundColor(.white)
                            .cornerRadius(10.0)
                    }
                } else {
                    VStack {
                        VStack(alignment: .leading, spacing: 10) {
                            Text("Current Trip")
                            
                            Text( trips.last?.title ?? "Batam Trip" )
                                .font(.title2)
                                .bold()
                            
                            Text("17-21 September 2021" )
                                .font(.system(size: 15,weight: .thin))
                            
                            VStack(alignment: .leading, spacing: 10.0) {
                                HStack {
                                    HStack {}
                                    .frame(width: 100.0, height: 20)
                                    .background(Color("CustomColor"))
                                }
                                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                                .background(.red.opacity(0.1))
                                .frame(height: 20)
                                .cornerRadius(10.0)
                                
                                HStack {
                                    Text("On Track")
                                        .foregroundColor(.green)

                                    Spacer()
                                        .background(Color.orange)
                                    
                                    Text("0 of 15,000,000 spent")
                                }
                                .font(.system(size: 15))
                            }
                        }
                        .padding()
//                        .background(Color.blue)
//                        .frame(minWidth: 0, maxWidth: 340, alignment: .leading)
                        .frame(width: 340, height: 180, alignment: .leading)
//                        background(Color.red)
//                        .shadow(color: Color.black, radius: 10, x: 0, y: 10)
                        
                        NavigationLink(destination: NewTripView(trips: $trips, isNoTrip: $isNoTrip)){
                            Text("Add Expense")
                                .bold()
                                .frame(width: 340, height: 50)
                                .background(Color("CustomColor"))
                                .foregroundColor(.white)
                                .cornerRadius(10.0)

                        }
                    }
//                    .offset(y: -30)
                }

            }
            .frame(minWidth: 0, maxWidth: .infinity)
//            .padding(.horizontal, 20)
        }
//        .offset(y: -40.0)
    }
}

struct HomeView_Previews: PreviewProvider {
    
    @State private static var dummyData: [Trip] = []
    @State private static var isNoTrip: Bool = false
    
    static var previews: some View {
        HomeView(isNoTrip: $isNoTrip, trips: $dummyData)
    }
}
