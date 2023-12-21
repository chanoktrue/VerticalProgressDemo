//
//  FitnessCellView.swift
//  VerticalProgressDemo
//
//  Created by Thongchai Subsaidee on 21/12/23.
//

import SwiftUI

struct FitnessCellView: View {
    var body: some View {
        HStack(spacing: 10) {
            VStack(alignment: .leading){
                Text("Activity name")
                    .font(.system(size: 20))
                    .bold()
                Text("Step : 3")
                    .font(.system(size: 15))
                Text("Description")
                    .font(.system(size: 15))
            }
            Image(systemName: ActivityType.plankes.symbols())
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 100)
                .foregroundColor(.red)
  
        }
        .padding()
        .background(.gray.opacity(0.1))
        .cornerRadius(10)
    }
}

#Preview {
    FitnessCellView()
}
