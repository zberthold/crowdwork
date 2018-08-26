//
//  AddNewClassViewController.swift
//  crowdwork
//
//  Created by Zoe Berthold on 8/25/18.
//  Copyright © 2018 Zoe Berthold. All rights reserved.
//

import UIKit

class AddNewClassViewController: UIViewController {
    
    var labelHasBeenClicked = false
    var numberOfLabel = 0
    var classHasBeenChosen = false
    @IBOutlet weak var addAClassButton: UIButton!
    var labelsArray = [UILabel]()
    var data = ""
    

    override func viewDidLoad() {
        super.viewDidLoad()


        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    func makeLabels(name: String){
        let xcenter = Int(self.view.frame.width/2)
        let buttonheight = Int(addAClassButton.frame.size.height)
        let buttonpositiony = Int(addAClassButton.center.y)
        var labelstartposition = buttonheight + buttonpositiony
        let label = UILabel(frame: CGRect(x: 0, y: 0, width: Int(addAClassButton.frame.size.width), height: buttonheight))
        label.center = CGPoint(x: xcenter , y: labelstartposition + buttonheight*numberOfLabel)
        label.textAlignment = .center
        label.text = name
        label.layer.borderColor = UIColor.green.cgColor
        label.layer.borderWidth = 3.0
        numberOfLabel += 1
        labelsArray.append(label)
        self.view.addSubview(label)
        
    }
    @IBAction func addNewClass(_ sender: Any) {
        if(labelHasBeenClicked == false){
            makeLabels(name: "class 1")
            makeLabels(name: "class b")
            labelHasBeenClicked = true
        }
    }
    
    @IBAction func onLabelTapped(_ sender: Any) {
        for label in labelsArray{
            if label.frame.contains((sender as AnyObject).location(in: self.view)) {
                for label1 in labelsArray{
                    label1.layer.borderColor = UIColor.green.cgColor
                }
                label.layer.borderColor = UIColor.black.cgColor
            }
            
        }
    }
    
    @IBAction func doneChoosingClass(_ sender: Any) {
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let dvc = segue.destination as! ViewController
        for label in labelsArray{
            if(label.layer.borderColor == UIColor.black.cgColor){
                dvc.data = label.text!
            }
        }
    }
    


}
