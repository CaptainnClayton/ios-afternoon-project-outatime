//
//  TimeCircuitsViewController.swift
//  OutaTime
//
//  Created by Clayton Watkins on 4/27/20.
//  Copyright © 2020 Clayton Watkins. All rights reserved.
//

import UIKit

class TimeCircuitsViewController: UIViewController {

    //MARK: - IBOutlets
    @IBOutlet weak var destinationDateLabel: UILabel!
    @IBOutlet weak var presentTimeLabel: UILabel!
    @IBOutlet weak var lastDepatureLabel: UILabel!
    @IBOutlet weak var speedLabel: UILabel!
    
    //MARK: - Properties
    var dateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateFormat = "MMM dd yyyy"
        formatter.timeZone = TimeZone.init(secondsFromGMT: 0)
        return formatter
    }
    
    var speed = 0
    
    //MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setPresentDate()
        setLastDeparture()
        setSpeed()
    }
    
    //MARK: - IBActions
    @IBAction func travelBackTapped(_ sender: Any) {
    }
    
    
    //MARK: - Helper Functions
    func setPresentDate(){
        let presentTime = Date()
        let dateString = dateFormatter.string(from: presentTime)
        presentTimeLabel.text = dateString
    }
    
    func setLastDeparture(){
        lastDepatureLabel.text = "--- -- ----"
    }
    
    func setSpeed(){
        let speed = 0
        speedLabel.text = "\(speed) MPH"
    }
 
    
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    

}
