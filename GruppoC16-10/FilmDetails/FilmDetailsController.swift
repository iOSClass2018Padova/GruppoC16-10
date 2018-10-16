//
//  FilmDetailsController.swift
//  GruppoC16-10
//
//  Created by Leonardo De Benetti on 16/10/2018.
//  Copyright © 2018 developer.llb. All rights reserved.
//

import UIKit

class FilmDetailsController: UIViewController {
    
    //private var listOfFilm : [Film] = []
    
    
    var listOfFilm : [Film] = [
        Film(title: "Iron Man 3", descr: "At a New Year's Eve party in 1999, Tony Stark meets scientist Maya Hansen, the inventor of experimental regenerative treatment Extremis that allows recovery from crippling injuries.", image: nil, outputDate: "12-12-2010", places: 12),
        Film(title: "Coco", descr: "A child want to be a guitarist but his family...", image: nil, outputDate: "34", places: 12),
        Film(title: "Valerian", descr: "Space", image: nil, outputDate: "34", places: 12)
    ]
    

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    
    }
}

extension FilmDetailsController : UITableViewDelegate, UITableViewDataSource {
    
    // MARK: - Table view data source
    
    func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return listOfFilm.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: FilmDetailsCell.kIdentifier, for: indexPath) as! FilmDetailsCell
        
        if let imageFilm = listOfFilm[indexPath.row].image {
            cell.imageFilm.image = UIImage(data: imageFilm)
        } else {
            //cell.imageFilm.image = UIImage(named: "iron")
        }
        
        cell.titleFilm.text = listOfFilm[indexPath.row].title
        cell.descrFilm.text = listOfFilm[indexPath.row].descr
        //cell.timesFilm.text = listOfFilm[indexPath.row].times
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 195
    }
    
}
