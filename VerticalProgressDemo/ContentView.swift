//
//  ContentView.swift
//  VerticalProgressDemo
//
//  Created by Thongchai Subsaidee on 21/12/23.
//

import SwiftUI

struct ContentView: View {
    
    let datas = PopulateData.exerciseData
    
    var body: some View {
        ScrollView {
            VStack {
                ForEach(datas, id: \.self) {_ in
//                    CustomLineShape(start: 10)
//                        .stroke(style: StrokeStyle(lineWidth: 3))
//                        .foregroundColor(.black)
                    FitnessCellView()
                }
            }
        }

    }
}

#Preview {
    ContentView()
}


struct CustomRowView<Content: View>: View {
    let image: String
    let start: CGFloat
    let rightPadding: CGFloat
    let color: Color
    let content: Content
    let content: Content
    
}


struct CustomLineShape: Shape {
    let start: CGFloat
    
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        path.move(to: CGPoint(x: start, y: rect.minY))
        path.addLine(to: CGPoint(x: start, y: 1.5 * rect.maxY))
        
        return path
    }
}
