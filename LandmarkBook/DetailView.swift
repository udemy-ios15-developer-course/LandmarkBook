//
//  DetailView.swift
//  LandmarkBook
//
//  Created by Chris Hand on 8/15/22.
//

import UIKit

class DetailView: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var imageTitle: UILabel!
    
    var imageName = ""
    var title1 = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let image = UIImage(named: imageName)
        imageView.image = image
        
        imageTitle.text = title1
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
