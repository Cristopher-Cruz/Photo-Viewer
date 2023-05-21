//
//  ViewController.swift
//  Storm Viewer
//
//  Created by christopher cruz on 3/24/23.
//

import UIKit

class ViewController: UITableViewController {
    var imageNames = [String]()

    override func viewDidLoad() {
        super.viewDidLoad()
        var fm = FileManager.default
        var path = Bundle.main.resourcePath!
        var fmContents = try! fm.contentsOfDirectory(atPath: path)
        for fileName in fmContents{
            if fileName.hasPrefix("nssl"){
                imageNames.append(fileName)
            }
        }
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return imageNames.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var Cell = tableView.dequeueReusableCell(withIdentifier: "ImageCell", for: indexPath)
        Cell.textLabel?.text = imageNames[indexPath.row]
        return Cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let ivc = storyboard?.instantiateViewController(withIdentifier: "ImageViewController") as? ImageViewController {
            ivc.imgName = imageNames[indexPath.row]
            navigationController?.pushViewController(ivc, animated: true)
        }
        
    }

}

