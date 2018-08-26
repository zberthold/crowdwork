//
//  ViewController.swift
//  crowdwork
//
//  Created by Zoe Berthold on 8/22/18.
//  Copyright © 2018 Zoe Berthold. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    
    var data = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = "hey"
        cell.detailTextLabel?.text = "baby"
        return cell


    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let dvc = segue.destination as! AddNewClassViewController
    }


}

