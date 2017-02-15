//
//  DemoCollectionViewController.swift
//  LearnCollectionView
//
//  Created by Nguyen Van Thieu B on 2/15/17.
//  Copyright © 2017 Thieu Mao. All rights reserved.
//

import UIKit

class DemoCollectionViewController: UICollectionViewController {
    
    var citys:[String] = ["Ho Chi Minh", "Ha Noi", "Da Nang", "Bac Giang", "Thanh Hoa", "Hue", "Lang Son", "Quang Tri", "Bac Ninh"]
    var photos:[String] = ["ungdung.png", "dungluong.png", "manhinh.png ", "playunity.png", "tiendo.png", "ungdung.png", "ungdung.png", "ungdung.png", "ungdung.png"]

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return citys.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! DemoCollectionViewCell
        cell.myLabel.text = citys[indexPath.row]
        cell.myImage.image = UIImage(named: photos[indexPath.row])
        return cell
    }

    // MARK: UICollectionViewDelegate

    /*
    // Uncomment this method to specify if the specified item should be highlighted during tracking
    override func collectionView(_ collectionView: UICollectionView, shouldHighlightItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment this method to specify if the specified item should be selected
    override func collectionView(_ collectionView: UICollectionView, shouldSelectItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
    override func collectionView(_ collectionView: UICollectionView, shouldShowMenuForItemAt indexPath: IndexPath) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, canPerformAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, performAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) {
    
    }
    */

}
