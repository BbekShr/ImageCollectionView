//
//  ViewController.swift
//  ImageCollectionView
//
//  Created by Bibek Shrestha on 2/14/19.
//  Copyright © 2019 Bibek Shrestha. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        
        let images: [UIImage] = [
                                UIImage(named: "image1")!,UIImage(named: "image2")!,UIImage(named: "image3")!,UIImage(named: "image4")!,UIImage(named: "image5")!,UIImage(named: "image6")!,UIImage(named: "image7")!,UIImage(named: "image8")!,UIImage(named: "image9")!,UIImage(named: "image10")!,
                                ]
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! Cell
        
        cell.imageView.image = images[indexPath.item]
        cell.imageView.backgroundColor = .lightGray
        
        return cell
    }
    
    

    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}
extension ViewController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        return CGSize(width: collectionView.frame.size.width/3.0 - 8,
                      height: collectionView.frame.size.width/3.0 - 8)
    }
}


