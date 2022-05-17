//
//  HomeView.swift
//  Travoila
//
//  Created by christian gouw on 12/05/22.
//

import SwiftUI

struct HomeView: View {
    
//    @State var isAddNewBudgetTrip: Bool = false
//
//    @State var title: String = ""
//    @State var destination: String = ""
//
//    @State var startDate: Date = Date.now
//    @State var endDate: Date =  Date.now
//
//    @State var totalBudgetEstimation: String = "0"
//
//    var body: some View {
//        NavigationView {
//            VStack(alignment: .center, spacing: 50) {
//                VStack(spacing: 20) {
//                    Text("No Trip Budget")
//                        .font(.title)
//                        .bold()
//
//                    Text("You have not created any budget \n trip expanses")
//                        .multilineTextAlignment(.center)
//                }
//
//                Button(action: {
//                    toogleAddNewBudgetTrip()
//                }) {
//                    Section {
//                        Text("Add Budget Trip")
//                            .padding(.horizontal)
//                            .padding(.vertical, 10.0)
//                            .frame(minWidth:0,  maxWidth: 200)
//                    }
//                }
//                .buttonStyle(.borderedProminent)
//            }
//            .navigationTitle("Budget Trips")
//            .sheet(isPresented: $isAddNewBudgetTrip){
//                NavigationView {
//                    Form {
//                        Section(header: Text("Trip")) {
//                            TextField("Title", text: $title)
//                                .disableAutocorrection(true)
//
//                            TextField("Destination", text: $destination)
//                                .disableAutocorrection(true)
//
//                        }
//
//                        Section(header: Text("Date")) {
//                            DatePicker("Start Date", selection: $startDate, displayedComponents: .date)
//                            DatePicker("End Date", selection: $endDate, displayedComponents: .date)
//                        }
//
//                        Section(header: Text("Budget")){
//                            TextField("Total Budget Estimation", text: $totalBudgetEstimation)
//                                .keyboardType(.numberPad)
//                        }
//                    }
//                    .navigationBarTitleDisplayMode(.inline)
//                    .navigationTitle("New Trip")
//                    .navigationBarItems(
//                        leading:
//                            Button(action: {
//                                toogleAddNewBudgetTrip()
//                            }){
//                                Text("Cancel")
//                            },
//                        trailing:
//                            Button(action: {
//                                toogleAddNewBudgetTrip()
//                            }){
//                                Text("Save")
//                            }
//                    )
//                }
//            }
//        }
//    }
//
////    func toogleAddNewBudgetTrip() -> Void {
////        isAddNewBudgetTrip = !isAddNewBudgetTrip
//    }
//}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
