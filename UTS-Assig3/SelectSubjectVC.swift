//
//  SelectSubjectVC.swift
//  UTS-Assig3
//
//  Created by Asher on 10/5/18.
//  Copyright © 2018 Asher. All rights reserved.
//

import UIKit

class SelectSubjectVC: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    @IBOutlet weak var myPicker: UIPickerView!

    var theSubjects: [aSubject] = []
    var selectedSubject: Int = 0
    override func viewDidLoad() {
        self.theSubjects = aSubject.defaultSubjects()
        self.myPicker.delegate = self
        self.myPicker.dataSource = self
        super.viewDidLoad()
    }

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }

    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return theSubjects.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
//        print(theSubjects[row].subjectID)
        selectedSubject = theSubjects[row].subjectID
        return theSubjects[row].subjectName
    }

    @IBAction func myGoButton(_ sender: Any) {
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "subject2questions" {
            let myQuestionsVC = segue.destination as! myQuestionsTVC
            myQuestionsVC.mySubjectID = selectedSubject
        }
    }
}
