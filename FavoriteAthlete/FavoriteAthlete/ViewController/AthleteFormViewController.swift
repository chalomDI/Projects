//
//  AthleteFormViewController.swift
//  FavoriteAthlete
//
//  Created by Adrien Meyer on 27/11/2017.
//

import UIKit

class AthleteFormViewController: UIViewController {
    
    var athlete: Athlete?
    
    struct PropertyKeys {
        static let unwind = "UnwindToAthleteTables"
    }
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var ageTextField: UITextField!
    @IBOutlet weak var leagueTextField: UITextField!
    @IBOutlet weak var teamTextField: UITextField!

    func updateView(){
        guard let athlete = athlete else {return}
        
        nameTextField.text = athlete.name
        ageTextField.text = athlete.age
        leagueTextField.text = athlete.league
        teamTextField.text = athlete.team
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        updateView()
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func saveButtonTapped(_ sender: Any) {
        guard let name = nameTextField.text,
            let age = ageTextField.text,
            let league = leagueTextField.text,
            let team = teamTextField.text else {return}
        
        athlete = Athlete(name: name, age: age, league: league, team: team)
        performSegue(withIdentifier: PropertyKeys.unwind, sender: self)
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
