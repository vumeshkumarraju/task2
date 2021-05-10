//
//  secondView.swift
//  Table
//
//  Created by V UMESH KUMAR RAJU on 10/05/21.
//

import UIKit

class secondView: UIViewController {
    @IBOutlet weak var cellImage: UIImageView!
    @IBOutlet weak var name: UILabel!
    @IBOutlet var descItem: UILabel!
    
    var desc = ["The tiger is the largest living cat species and a member of the genus Panthera. It is most recognisable for its dark vertical stripes on orange-brown fur with a lighter underside.","The lion is a species in the family Felidae and a member of the genus Panthera. It has a muscular, deep-chested body, short, rounded head, round ears, and a hairy tuft at the end of its tail.","The jaguar is a large felid species and the only living member of the genus Panthera native to the Americas. Its distinctively marked coat features pale yellow to tan colored fur covered by spots that transition to darker rosettes on the sides."]
    var animal : String!
    var img : UIImage!
    var n : Int!
    override func viewDidLoad() {
        super.viewDidLoad()
        cellImage.image = img
        name.text = animal
        descItem.text = desc[n]
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
