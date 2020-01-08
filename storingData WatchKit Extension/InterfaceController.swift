//
//  InterfaceController.swift
//  storingData WatchKit Extension
//
//  Created by Armando Carrillo on 06/01/20.
//  Copyright © 2020 Armando Carrillo. All rights reserved.
//

import WatchKit
import Foundation
let defaults = UserDefaults.standard

class InterfaceController: WKInterfaceController {

    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        testUserDefaults()//escribe datos del usuario porque no encontro una cadena
        testUserDefaults()// lee datos del ususario que nosotros ingresamos
        }
    
    func testUserDefaults() {
    // get hold of our app's user defaults let defaults = UserDefaults.standard
    if let contents = defaults.string(forKey: "shared_default") { //unwrap para recuperar una string de "shared_default"
          // saved data was found!
    print("Reading from defaults") //imprime en consola esta leyenda
          print(contents)// imprime la caadena que encontro
       } else { //si no exixte una cadena
    // no saved data – create it!
    print("Writing to defaults")//imprime en consola
    defaults.set("This is the saved default.", forKey: "shared_default") //con metodo set recupera CUALQUIER dato
    } }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
