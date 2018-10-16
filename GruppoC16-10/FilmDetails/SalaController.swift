//
//  Sala.swift
//  GruppoC16-10
//
//  Created by Valerio Ly on 16/10/18.
//  Copyright © 2018 developer.llb. All rights reserved.
//

import UIKit

class SalaController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource  {

    

    
    @IBOutlet private weak var CollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }


   

    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }


     func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 30
    }

   func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: SalaCell.kidentifier, for: indexPath) as! SalaCell
    
        return cell
}
  
   
    
    
    
    
    
    
    
    
}
