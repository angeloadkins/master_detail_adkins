//
//  DetailViewController.swift
//  master_detail_adkins
//
//  Created by Angelo Adkins on 6/29/20.
//  Copyright © 2020 Angelo Adkins. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    
    var albumName: String?
    var artistName: String?
    var yearName: String?
    var recordingLabelName: String?
    var albumCover: UIImage?
    var indexNumber: Int?
    var currentTracks: [Tracks] = []


    @IBOutlet weak var albumTitle: UILabel!
    @IBOutlet weak var artistLabel: UILabel!
    @IBOutlet weak var yearLabel: UILabel!
    @IBOutlet weak var recordLabel: UILabel!
    @IBOutlet weak var albumImage: UIImageView!
    @IBOutlet weak var trackTableView: UITableView!
    
    func configureView() {
        // Update the user interface for the detail item.
//        if let detail = detailItem {
//            if let label = detailDescriptionLabel {
//                label.text = detail.description
//            }
//        }
        albumTitle.text = albumName
        artistLabel.text = artistName
        yearLabel.text = yearName
        recordLabel.text = recordingLabelName
        albumImage.image = albumCover
        trackTableView.dataSource = self
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        configureView()
    }
    
    var detailItem: NSDate? {
        didSet {
            // Update the view.
            configureView()
        }
    }
}
extension DetailViewController : UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return currentTracks.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ReusableCell2", for: indexPath)
        let songTitle = currentTracks[indexPath.row].song! as Any as? String
        let songNumber = String(currentTracks[indexPath.row].trackNumber!)
        let songLength = currentTracks[indexPath.row].length! as Any as? String
        let songComposer = currentTracks[indexPath.row].composer! as Any as? String
        cell.textLabel?.text = songNumber + " " + songTitle! + " " + songLength! + " " + songComposer!
        return cell
    }
}

