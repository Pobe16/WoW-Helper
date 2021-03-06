//
//  DataLoadingInfo.swift
//  WoWHelper 
//
//  Created by Mikolaj Lukasik on 06/10/2020.
//

import SwiftUI

struct DataLoadingInfo: View {
    @EnvironmentObject var gameData: GameData
    var body: some View {
        ScrollView{
            HStack{
                VStack(alignment: .leading){
                    ProgressView()
                        .progressViewStyle(CircularProgressViewStyle())
                    Text("Loading data…")
                        .font(.title)
                    Text("\(gameData.characters.count) character\(gameData.characters.count == 1 ? "" : "s")")
                    Text("\(gameData.mountsStillToObtain.count > 0 ? gameData.mountsStillToObtain.count : gameData.mountItemsList.count) mounts to farm")
                    Text("\(gameData.petsStillToObtain.count > 0 ? gameData.petsStillToObtain.count : gameData.petItemsList.count) pets to farm")
                    Text("\(gameData.expansions.count) expansions")
                    Text("\(gameData.raids.count) raids")
                    Text("\(gameData.raidEncounters.count) raid encounters")
                    Text("\(gameData.characterRaidEncounters.count) additional character data")
                }
                .padding()
                .font(.title)
                Spacer()
            }
            .padding()
            
        }
        .background(BackgroundTexture(texture: .flagstone, wall: .horizontal))
        
    }
}
