//
//  Newtrip.swift
//  Travoila
//
//  Created by Patrick Louis on 15/05/22.
//
import SwiftUI

//class NumbersOnly: ObservableObject {
//    @Published var value = "" {
//        didSet {
//            let filtered = value.filter { $0.isNumber }
//
//            if value != filtered {
//                value = filtered
//            }
//        }
//    }
//}
struct NewTripView: View {
    
    
    @State var tripTitle: String = ""
    @State var tripDestination: String = ""
    
    @State var startDate: Date = Date()
    @State var endDate: Date = Date()
    
    @State var totalBudgetEstimation: String = ""
    //    @ObservedObject var input = NumbersOnly()
    @State var listRowColor: Color = Color.gray.opacity(0.08)
    //    @State private var isPerformingTask = false
    
    @Binding var trips: [Trip]
    @Binding var isNoTrip: Bool
    
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    //
    //    init(){
    //        UINavigationBar.appearance().backgroundColor = .red
    //    }
    
    var body: some View {
        VStack {
            VStack {
                
                
                Form {
                    Section ( header: Text("Trip Title")) {
                        TextField("Trip Title", text: $tripTitle)
                            .listRowBackground(listRowColor)
                    }
                    
                    Section ( header: Text("Trip Destination")) {
                        TextField("Trip Destination", text: $tripDestination)
                            .listRowBackground(listRowColor)
                    }
                    
                    Section(header: Text("Date")){
                        DatePicker("Start Date", selection: $startDate, displayedComponents: .date)
                            .listRowBackground(listRowColor)
                        DatePicker("End Date", selection: $endDate, displayedComponents: .date)
                            .listRowBackground(listRowColor)
                    }
                    
                    Section(header: Text("Total Budget Estimation")){
                        TextField("IDR 0",text: $totalBudgetEstimation)
                            .listRowBackground(listRowColor)
                            .keyboardType(.default)
                    }
                }
                .onAppear {
                    UITableView.appearance().backgroundColor = .clear
                }
                .onDisappear {
                    UITableView.appearance().backgroundColor = .systemGroupedBackground
                }
                
                Button(action: {
                    createNewTrip()
                    // SummaryView() > ini nanti alternatif 2 button aja
                }){
                    Text("Save")
                        .bold()
                        .frame(width: 340, height: 50)
                        .background(Color("CustomColor"))
                        .foregroundColor(.white)
                        .cornerRadius(10.0)
                }
                .frame(minWidth:0,  maxWidth: .infinity)
            }
            .navigationTitle("New Trip")
        }
        //        .background(.gray.opacity(0.1))
        
        //            VStack {
        //                Form {
        //                    Section ( header: Text("Trip Title")) {
        //                        TextField("Trip Title", text: $tripTitle)
        //                            .listRowBackground(listRowColor)
        //                    }
        //
        //                    Section ( header: Text("Trip Destination")) {
        //                        TextField("Trip Destination", text: $tripDestination)
        //                            .listRowBackground(listRowColor)
        //                    }
        //
        //                    Section(header: Text("Date")){
        //                        DatePicker("Start Date", selection: $startDate, displayedComponents: .date)
        //                            .listRowBackground(listRowColor)
        //                        DatePicker("End Date", selection: $endDate, displayedComponents: .date)
        //                            .listRowBackground(listRowColor)
        //                    }
        //
        //                    Section(header: Text("Total Budget Estimation")){
        //                        TextField("IDR 0",text: $totalBudgetEstimation)
        //                            .listRowBackground(listRowColor)
        //                            .keyboardType(.default)
        //                    }
        //                }
        //                .navigationBarTitle("New Trip")
        //
        //
        ////                .offset(y: -20)
        //    //            .background(Color.red)
//                        .onAppear {
//                            UITableView.appearance().backgroundColor = .clear
//                        }
//                        .onDisappear {
//                            UITableView.appearance().backgroundColor = .systemGroupedBackground
//                        }
        //
        //                Button(action: {
        //                    createNewTrip()
        //    //                SummaryView() > ini nanti alternatif 2 button aja
        //                }){
        //                    Text("Save")
        //                        .bold()
        //                        .frame(width: 340, height: 50)
        //                        .background(Color("CustomColor"))
        //                        .foregroundColor(.white)
        //                        .cornerRadius(10.0)
        //                }
        //                .frame(minWidth:0,  maxWidth: .infinity)
        //
        //                //.background(Color.white)
        //            }
        ////            .navigationBarTitle("New Trip")/*.overlay(RoundedRectangle(cornerRadius: 1).foregroundColor(.red))*/
        //            //.navigation
        //            .background(Color.white)
        //
        //
        //        .navigationViewStyle(.stack)
    }
    
    func createNewTrip(){
        trips.append(
            Trip(title: tripTitle, destination: tripDestination, startDate: startDate, endDate: endDate, totalBudgetEstimation: Int(totalBudgetEstimation) ?? 0, categories: [] )
        )
        
        isNoTrip = false
        
        mode.wrappedValue.dismiss()
    }
}

struct NewTripView_Previews: PreviewProvider {
    
    @State private static var dummyData: [Trip] = []
    @State private static var isNoTrip: Bool = true
    
    static var previews: some View {
        NewTripView(trips: $dummyData, isNoTrip: $isNoTrip)
    }
}
