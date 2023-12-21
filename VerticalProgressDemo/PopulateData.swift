//
//  PopulateData.swift
//  VerticalProgressDemo
//
//  Created by Thongchai Subsaidee on 21/12/23.
//

import Foundation

struct Exercise: Hashable {
    var activityType: ActivityType
    var progressStatus: ProgressStatus
    var details: String
    var sets: Int
}

enum ActivityType: String {
    case plankes
    case pushups
    case running
    case other
    
    func symbols() -> String {
        switch self {
        case .plankes:
            return "figure.taichi"
        case .pushups:
            return "figure.rower"
        case .running:
            return "figure.run"
        default:
            return String(self.rawValue)
        }
        
    }
}

enum ProgressStatus{
    case completed
    case inProgress
    case locked
}


struct PopulateData {
    static let exerciseData: [Exercise] = [
       Exercise(activityType: .plankes, progressStatus: .completed, details: "Mention Deatils Here", sets: 2),
       Exercise(activityType: .pushups, progressStatus: .inProgress, details: "Mention Details Here", sets: 4),
       Exercise(activityType: .running, progressStatus: .inProgress, details: "Mention Details Here", sets: 1),
       Exercise(activityType: .other, progressStatus: .locked, details: "Mention Details Here", sets: 2)
   ]
}
