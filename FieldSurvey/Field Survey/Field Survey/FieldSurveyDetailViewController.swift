//
//  FieldSurveyDetailViewController.swift
//  Field Survey
//
//  Created by Chase Miles on 11/22/19.
//  Copyright © 2019 Chase Miles. All rights reserved.
//

import UIKit

class FieldSurveyDetailViewController: UIViewController {
    
    var fieldSurvey: Observation?
    let dateFormatter = DateFormatter()
    
    @IBOutlet weak var fieldIconImageView: UIImageView!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .medium
        
        self.title = "Observations"
        if let fieldSurvey = fieldSurvey {
            titleLabel.text = fieldSurvey.title
            dateLabel.text = dateFormatter.string(from: fieldSurvey.date)
            descriptionLabel.text = fieldSurvey.description
            fieldIconImageView.image = UIImage(named: fieldSurvey.classification.rawValue)
        }
    }
}
