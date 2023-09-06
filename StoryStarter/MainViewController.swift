//
//  MainViewController.swift
//  MyStory
//
//  Created by Marc Alonso on 9/4/23.
//

import UIKit

class MainViewController: UIViewController {

    // MARK: Models

    // Create individual Dinosaurs using Deadpool model
    let gallimimus = Deadpool(name: "Bio", image: UIImage(named: "Deadpool2")!, desc: "Wade Wilson, better known as Deadpool, is a wisecracking antihero with a twisted sense of humor and near-immortality. Originally a troubled individual, he turned to experimental treatments to cure his terminal cancer, gaining regenerative abilities, but also descending into madness. Clad in a red and black suit, Deadpool is a master of combat, wielding katanas with deadly precision. He straddles the line between hero and villain, frequently teaming up with the likes of the X-Men and X-Force. His unpredictable and irreverent nature, coupled with his love for tacos and chimichangas, makes him a beloved and entertaining character in the Marvel Universe.")
    let stegosaurus = Deadpool(name: "Weakness", image: UIImage(named: "Deadpool2")!, desc: "There are two things though, that scare him above all: cows and clowns are a Deadpool weakness. Wilson's always been scared of cows because he believes that their eyes are all-knowing. The Merc is also scared of clowns, finding them too creepy.")
    let tyrannosaurus = Deadpool(name: "Hobbies", image: UIImage(named: "Deadpool2")!, desc: "Breaking the Fourth Wall \n Breaking the Fourth Wall\n Collecting Weapons and Gear \n Practical Jokes and Pranks")


    // Array for storing Dinosaurs
    var deadpools: [Deadpool] = []

    override func viewDidLoad() {
        super.viewDidLoad()

        // Store Deadpool models
        deadpools = [gallimimus, stegosaurus, tyrannosaurus]

        //print("Here are the different deadpools:")
        //for deadpool in deadpools {
        //    print(deadpool)
        //}
    }

    @IBAction func didTapDinosaur(_ sender: UITapGestureRecognizer) {
        if let tappedView = sender.view {
            performSegue(withIdentifier: "detailSegue", sender: tappedView)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        if segue.identifier == "detailSegue",
            let tappedView = sender as? UIView,
            let detailViewController = segue.destination as? DetailViewController {

            if tappedView.tag == 0 {
                detailViewController.deadpool = deadpools[0]
            } else if tappedView.tag == 1 {
                detailViewController.deadpool = deadpools[0]
            } else if tappedView.tag == 2 {
                detailViewController.deadpool = deadpools[1]
            } else if tappedView.tag == 3 {
                detailViewController.deadpool = deadpools[2]
            } else {
                print("no Deadpool was tapped, please check your selection.")
            }
        }
    }
    
}

