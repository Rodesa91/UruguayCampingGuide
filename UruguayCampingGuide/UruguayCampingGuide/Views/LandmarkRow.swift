//
//  LandmarkRow.swift
//  UruguayCampingGuide
//
//  Created by Rodrigo de Santiago on 9/1/20.
//  Copyright © 2020 Rodrigo de Santiago. All rights reserved.
//

import SwiftUI

struct LandmarkRow: View {
    var landmark: Landmark

    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(landmark.name)
            Spacer()

//            if landmark.isFavorite {
//                Image(systemName: "star.fill")
//                    .imageScale(.medium)
//                    .foregroundColor(.yellow)
//            }
        }
    }
}

struct LandmarkRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            LandmarkRow(landmark: landmarkData[0])
            LandmarkRow(landmark: landmarkData[1])
        }
        .previewLayout(.fixed(width: 300, height: 70))
    }
}
