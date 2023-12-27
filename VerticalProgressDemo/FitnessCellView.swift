//
//  FitnessCellView.swift
//  VerticalProgressDemo
//
//  Created by Thongchai Subsaidee on 21/12/23.
//

import SwiftUI

struct FitnessCellView: View {
    
    @State var exercise: Exercise
    
    var body: some View {
        HStack(spacing: 10) {
            VStack(alignment: .leading){
                Text("\(exercise.activityType.rawValue)")
                    .font(.system(size: 20))
                    .bold()
                Text("Step : \(exercise.sets)")
                    .font(.system(size: 15))
                Text(exercise.details)
                    .font(.system(size: 15))
            }
            Image(systemName: exercise.activityType.symbols())
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80)
                .foregroundColor(.red)
  
        }
        .padding()
        .background(.gray.opacity(0.1))
        .cornerRadius(10)
    }
}

//#Preview {
//    let ex = PopulateData.exerciseData[0]
//    FitnessCellView(exercise: ex)
//}
