//
//  FieldSurveyViewController.swift
//  Field Survey
//
//  Created by Andrew W Stoll on 11/3/17.
//  Copyright © 2017 Andrew W Stoll. All rights reserved.
//

import UIKit

class FieldSurveyViewController: UIViewController, UITabBarDelegate, UITableViewDataSource {
    let dateFormatter = DateFormatter()
    let fieldObservations = ObservationJSONLoader.load(fileName: "field_observations")
    
    @IBOutlet weak var observationTableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .medium
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return fieldObservations.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "fieldObservationCell", for: indexPath)
        
        if let cell = cell as? FieldStudyTableViewCell{
            let observation = fieldObservations[indexPath.row]
            cell.classificationIconImageView.image = observation.classification.image
            cell.titleLabel.text = observation.title
            cell.dateLabel.text = dateFormatter.string(from: observation.date)
        }
        
        
        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? FieldSurveyDetailViewController,
            let row = observationTableView.indexPathForSelectedRow?.row{
            destination.fieldObservation = fieldObservations[row]
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
