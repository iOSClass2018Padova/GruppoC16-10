//
//  ViewController.swift
//  GruppoC16-10
//
//  Created by Leo Luca Bonin on 16/10/2018.
//  Copyright © 2018 developer.llb. All rights reserved.
//

import UIKit

class TicketViewController: UIViewController {
    
    var idUser : User!
    var idFilm : String!
    var listOfTicket : [Ticket]!

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        listOfTicket = userLog.getTicketList()
        // Do any additional setup after loading the view, typically from a nib.
    }
}

extension TicketViewController : UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listOfTicket.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: TicketCell.kIdent, for: indexPath) as! TicketCell
        //cell.placeIntText.text = String(listOfTicket[indexPath.row].place)
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 86
    }
    
    
    
}


