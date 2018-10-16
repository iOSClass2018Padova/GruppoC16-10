//
//  Sala.swift
//  GruppoC16-10
//
//  Created by Valerio Ly on 16/10/18.
//  Copyright © 2018 developer.llb. All rights reserved.
//

import UIKit

class SalaController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource  {
    private var ListPlaces : [Ticket] = []
    
    var idFilm : String!
    var idUser : String!
    
    @IBOutlet private weak var CollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        for i in 0..<30 {
            ListPlaces.append(Ticket(film: "Posto \(i)"))
        }
        
        
    }
    
    
    
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return ListPlaces.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: SalaCell.kidentifier, for: indexPath) as! SalaCell
        cell.btn.setTitle(ListPlaces[indexPath.row].idFilm, for: .normal)
        
        
        
        
        
        return cell
    }
    
    @IBAction func ActionTickets(_ sender: UIBarButtonItem) {
        self.performSegue(withIdentifier: Dictionary.segueTickets, sender: self)
    }
    
    
    
    
    @IBAction func actionPlace(_ sender: UIButton) {
        
        let alert = UIAlertController(title: "Prenotazione", message: "Vuoi selezionare questo posto?", preferredStyle: .alert)
        let cancel = UIAlertAction(title: "No", style: .cancel, handler: nil)
        alert.addAction(cancel)
        let okay = UIAlertAction(title: "Si", style: .default) { (alert) in
            
            //let newTicket : Ticket = Ticket(film: idFilm,place: 1,time: "17:00")
            //User.getUserById(id: self.idUser)?.addTicketRef(ticket: newTicket)
            sender.backgroundColor = UIColor.blue
        }
        alert.addAction(okay)
        self.present(alert, animated: true, completion: nil)
        
    }
    
}
