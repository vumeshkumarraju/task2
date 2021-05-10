//
//  ViewController.swift
//  Table
//
//  Created by V UMESH KUMAR RAJU on 10/05/21.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    @IBOutlet weak var TableView: UITableView!
    let animal = ["TIGER","LION","JAGUAR"]
    let animalImage = [#imageLiteral(resourceName: "Tiger"),#imageLiteral(resourceName: "Lion"),#imageLiteral(resourceName: "Jaguar")]
    let speed = ["SPEED : 60","SPEED : 70","SPEED : 80"]
    let mass = ["MASS : 90-150","MASS : 90-190","MASS : 56-96"]
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return animal.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = TableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! TableViewCell
        cell.label1.text = animal[indexPath.row]
        cell.animalImage.image = animalImage[indexPath.row]
        cell.Speed.text = speed[indexPath.row]
        cell.mass.text = mass[indexPath.row]
        cell.CView.layer.cornerRadius = 15
        cell.animalImage.layer.cornerRadius = cell.animalImage.frame.height/2
        cell.animalImage.clipsToBounds = true
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc : secondView = self.storyboard?.instantiateViewController(identifier: "secondView") as! secondView
        vc.animal=animal[indexPath.row]
        vc.img = animalImage[indexPath.row]
        vc.n = indexPath.row
        self.navigationController?.pushViewController(vc, animated: true)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        TableView.delegate = self
        TableView.dataSource = self
        TableView.separatorStyle = .none
        // Do any additional setup after loading the view.
    }


}

