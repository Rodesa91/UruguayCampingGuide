//
//  LandmarkList.swift
//  UruguayCampingGuide
//
//  Created by Rodrigo de Santiago on 9/1/20.
//  Copyright © 2020 Rodrigo de Santiago. All rights reserved.
//

import SwiftUI

struct LandmarkList: View {
    @EnvironmentObject private var userData: UserData
    
    var body: some View {
        List {
            Toggle(isOn: $userData.showFavoritesOnly) {
                Text("Show Favorites Only")
            }
            
            ForEach(userData.landmarks) { landmark in
//                if !self.userData.showFavoritesOnly || landmark.isFavorite {
                if !self.userData.showFavoritesOnly {
                    NavigationLink(
                        destination: LandmarkDetail(landmark: landmark)
                            .environmentObject(self.userData)
                    ) {
                        LandmarkRow(landmark: landmark)
                    }
                }
            }
        }
        .navigationBarTitle(Text("Landmarks"))
    }
}

struct LandmarksList_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone SE", "iPhone XS Max"], id: \.self) { deviceName in
            NavigationView {
                LandmarkList()
            }
            .previewDevice(PreviewDevice(rawValue: deviceName))
            .previewDisplayName(deviceName)
        }
        .environmentObject(UserData())
    }
}
