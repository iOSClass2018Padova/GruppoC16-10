//
//  HomepageController.swift
//  GruppoC16-10
//
//  Created by Leonardo De Benetti on 16/10/2018.
//  Copyright © 2018 developer.llb. All rights reserved.
//

import UIKit

class HomepageController: UIViewController {
    
    //private var listOfFilm : [Film] = []
    
    private var selectedFilm : Film?
    var idUser : String!

    var userLogin : User = User()
    
    var listOfFilm : [Film] = [
        Film(title: "Iron Man 3", descr: "At a New Year's Eve party in 1999, Tony Stark meets scientist Maya Hansen, the inventor of experimental regenerative treatment Extremis that allows recovery from crippling injuries.", image: nil, outputDate: "12-12-2010", places: 12),
        Film(title: "Coco", descr: "A child want to be a guitarist but his family...", image: nil, outputDate: "34", places: 12),
        Film(title: "Valerian", descr: "Space", image: nil, outputDate: "34", places: 12)
    ]
    

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        switch segue.identifier {
        case Dictionary.segueRoom:
            if let destinationController = segue.destination as? SalaController {
                destinationController.idFilm = selectedFilm?.id
                destinationController.idUser = idUser
            }
        default:
            break
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedFilm = listOfFilm[indexPath.row]
        self.performSegue(withIdentifier: Dictionary.segueRoom, sender: self)
    }
    
}

extension HomepageController : UITableViewDelegate, UITableViewDataSource {
    
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
        let cell = tableView.dequeueReusableCell(withIdentifier: HomepageCell.kIdentifier, for: indexPath) as! HomepageCell
        
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

extension HomepageController {
    
    func pushUser(user : User) {
        userLogin = user
    }
}
