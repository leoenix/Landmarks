//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Eric Hanna on 2022-08-08.
//

import Foundation
import SwiftUI

struct LandmarkList: View{
    @EnvironmentObject var modelData: ModelData
    @State private var showFavoritesOnly = true
    
    var filteredLandmarks: [Landmark] {
        modelData.landmarks.filter{
            landmark in
            (!showFavoritesOnly || landmark.isFavorite)
        }
    }
    
    var body: some View{
        NavigationView{
            List{
                Toggle(isOn: $showFavoritesOnly){
                   Text("Favorites only")
                }
                ForEach(filteredLandmarks){
                    thelandmark in
                    NavigationLink{
                        LandmarkDetail(landmark: thelandmark)
                    } label: {
                        LandmarkRow(landmark: thelandmark)
                    }
                }
            }
        }.navigationTitle("LandmarksS")
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList().environmentObject(ModelData())
    }
}
