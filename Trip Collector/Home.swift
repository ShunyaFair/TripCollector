import SwiftUI

struct HunterProfileView: View {
    // ユーザーのサンプルデータ
    var profileImage = Image("image1")
    var userName = "Shunya Kagawa"
    var userAge = 32
    var userCountry = "Japan"
    var currentHunterRank = "Hunter Rank Zero"
    var nextHunterRank = "Hunter Rank Single"
    var nextRankRequirement = "2 Locations and 1 QR Code"
    
    var body: some View {
        // 全体をVStackで囲む
        VStack(spacing: 0) {
            // コンテンツ部分をScrollViewで囲む
            ScrollView {
                VStack {
                    Text("Your Hunter Rank")
                        .font(.title)
                        .padding()
                    
                    Text(currentHunterRank)
                        .font(.headline)
                        .padding([.bottom], 1)
                    
                    profileImage
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 100, height: 100)
                        .clipShape(Circle())
                        .padding()
                    
                    Text(userName)
                        .font(.title2)
                        .padding([.bottom], 1)
                    
                    Text("Age: \(userAge), \(userCountry)")
                        .font(.body)
                        .padding([.bottom], 1)
                    
                    Text("Next Hunter Rank: \(nextHunterRank)")
                        .font(.headline)
                        .padding([.bottom], 1)
                    
                    Text("To Next Rank: \(nextRankRequirement)")
                        .font(.headline)
                        .padding(.bottom, 20)
                }
            }
            
            Spacer()
            
            // タブバー部分
            HStack {
                Spacer()
                Image(systemName: "house")
                Spacer()
                Image(systemName: "map")
                Spacer()
                Image(systemName: "plus.square")
                Spacer()
                Image(systemName: "clock")
                Spacer()
                Image(systemName: "text.book.closed")
                Spacer()
            }
            .padding()
            .background(Color.gray.opacity(0.2))
            .clipShape(Capsule())
            // タブバーが画面の最下部に固定されるように
            .edgesIgnoringSafeArea(.bottom)
        }
        // VStack全体が画面を埋め尽くすように
        .frame(maxHeight: .infinity)
    }
}

struct HunterProfileView_Previews: PreviewProvider {
    static var previews: some View {
        HunterProfileView()
    }
}

