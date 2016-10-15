//
//  ViewController.swift
//  Drawit
//
//  Created by Benobab on 14/10/2016.
//  Copyright © 2016 Protup. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //OUTLETS FROM VIEW
    @IBOutlet weak var generatorButton: UIButton!
    @IBOutlet weak var changeCategoryButton: UIButton!
    
    //VARIABLES
    var currentCategory:Int = 0 // allant de 0 à 3
    
    var categories:Array<String> = ["action","expression","object","animal"]
    
    var actions:Array<String> = [
        "Faire une bataille de boule de neige",
        "Faire les courses",
        "Manger des spaghettis",
        "Faire l'amour",
        "Eternuer",
        "Travailler",
        "Passer devant un buibui",
        "Voyager",
        "Devenir Millionnaire",
        "Fumer",
        "Danser",
        "Boire du champagne"
    ];
    var animals:Array<String> = [
        "Chauve souris",
        "Piranha",
        "Poisson-chat",
        "Limace",
        "Chihuahua",
        "Phoque",
        "Pieuvre",
        "Pigeon",
        "Araignée",
        "Dinosaure",
        "Pingouin",
        "Autruche",
        "Singe",
        "Poule",
        "Panda",
        "Crocodile",
        "Golden"
    ];
    var expressions:Array<String> = [
        "Pierre qui roule n'amasse pas mousse",
        "Prendre son pied",
        "Pisser dans un violon",
        "Prendre des vessies pour des lanternes",
        "Tomber dans les pommes",
        "Couper les cheveux en quatre",
        "Avoir le cul bordé de nouilles",
        "Les doigts dans le nez",
        "Tomber dans les pommes",
        "Pisser dans un violon",
        "Poser un lapin",
        "Prendre son pied",
        "Tremper son biscuit",
        "L'habit ne fait pas le moine"
    ];
    var objects:Array<String> = [
        "Cabine téléphonique",
        "Sac à dos",
        "Lime à ongles",
        "Panneau",
        "Café",
        "Prise de courant",
        "Lumière",
        "Système solaire",
        "Porte parapluie",
        "Éventail",
        "WC",
        "Machine à laver",
        "Poubelle",
        "Porte monnaie",
        "Tapis",
        "un disque compact/ un CD",
        "un dictionnaire",
        "un magazine",
        "un journal",
        "une montre",
        "un portefeuille",
        "un poster",
        "une radio",
        "un roman",
        "un ipod",
        "un portable"
    ];
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.generatorButton.setBackgroundImage(UIImage(named:self.categories[self.currentCategory]), for: .normal)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    //ACTIONS FROM VIEW
    
    @IBAction func generatorButtonClicked(_ sender: UIButton) {
        //TODO: 
        //get current category
        //generer un nombre aléatoire entre 0 et la taille du tableau - 1
        // afficher une popup avec la chaine de caractère trouvée
        var randomNumber:Int = 0
        
        if(self.currentCategory == 0){ // action
            randomNumber = Int(arc4random_uniform(UInt32(actions.count)))
            displayAlert(message: actions[randomNumber])
        }else if(self.currentCategory == 1){ // expression
            randomNumber = Int(arc4random_uniform(UInt32(expressions.count)))
            displayAlert(message: expressions[randomNumber])
        }else if(self.currentCategory == 2){ // objet
            randomNumber = Int(arc4random_uniform(UInt32(objects.count)))
            displayAlert(message: objects[randomNumber])
        }else if(self.currentCategory == 3){ // animal
            randomNumber = Int(arc4random_uniform(UInt32(animals.count)))
            displayAlert(message: animals[randomNumber])
        }
    }
    
    func displayAlert(message:String){
        //Display an alert with the message
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let OKAction = UIAlertAction(title: "Aha je vais essayer !", style: .default, handler: nil)
        alertController.addAction(OKAction)
        self.present(alertController, animated: true, completion: nil)
    }
    
    
    @IBAction func changeCategoryButtonClicked(_ sender: UIButton) {
        //changer de catégorie courrante
        if(self.currentCategory == 0){ // action
            self.currentCategory = 1
        }else if(self.currentCategory == 1){ // expression
            self.currentCategory = 2
        }else if(self.currentCategory == 2){ // objet
            self.currentCategory = 3
        }else if(self.currentCategory == 3){ // animal
            self.currentCategory = 0
        }
        //Changement de l'image du bouton générateur
        self.generatorButton.setBackgroundImage(UIImage(named:self.categories[self.currentCategory]), for: .normal)
    }
    
    


}

