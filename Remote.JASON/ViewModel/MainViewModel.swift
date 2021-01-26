//
//  MainViewModel.swift
//  Remote.JASON
//
//  Created by Bala Murali on 25/01/2021.
//

import Foundation

class MainViewModel : ObservableObject{
let url = URL(string: "https://jsonplaceholder.typicode.com/photos")!

    @Published var albums: [AlbumImage]

    init() {
        albums = []
        getData()
    }

func getData() {
    URLSession.shared.dataTask(with:url)
    {(data,response,error)in
    do{
        if let d = data{
            let decodedLists = try
                JSONDecoder().decode([AlbumImage].self, from:d)
            DispatchQueue.main.async {
                self.albums = decodedLists
                
                    }
            }else{
                print("No Data")
            
                }
        }catch{
            print("Error")
        }
    }.resume()
    }
}
