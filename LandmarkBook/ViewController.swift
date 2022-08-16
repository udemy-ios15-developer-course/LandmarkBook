//
//  ViewController.swift
//  LandmarkBook
//
//  Created by Chris Hand on 8/15/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    private var landmarks = [Landmark]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        landmarks.append(Landmark(imageName: "eiffel", title: "Eiffel Tower"))
        landmarks.append(Landmark(imageName: "great_pyramid", title: "Great Pyramid"))
        landmarks.append(Landmark(imageName: "pisa", title: "Leaning Tower of Pisa"))
        landmarks.append(Landmark(imageName: "taj_mahal", title: "Taj Mahal"))
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            landmarks.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: UITableView.RowAnimation.fade)
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell()
        cell.textLabel?.text = "\(landmarks[indexPath.row].title)"
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return landmarks.count
    }
    
    private struct Landmark : Identifiable {
        var imageName: String
        var title: String
        
        var id = UUID()
    }
}

