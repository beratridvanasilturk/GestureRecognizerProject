//
//  ViewController.swift
//  GestureRecognizerProject
//
//  Created by Berat Rıdvan Asiltürk on 24.08.2023.
//

import UIKit

class ViewController: UIViewController {
    //MARK: -Outlets
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var myLabel: UILabel!
    
    //MARK: -Variables
    var isChanged = false
    
    //MARK: -Funcs
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // image'in tiklanabilirligini kontrol eder
        imageView?.isUserInteractionEnabled = true
        // Jest Algilayicisi olusturup action'da yapilmasini istedigimiz methodu kendi istegimize gore duzenledik
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(changeImage))
        // Olusturdugumuz jesti image'e ekleyen methodu cagirdik
        imageView.addGestureRecognizer(gestureRecognizer)
    }

    @objc func changeImage() {
        
        // isChange booleani ile ayni imageview'a her tiklandiginda image'i guncelleme ozelligi eklendi
        if isChanged == false {
            imageView.image = UIImage(systemName: "appletv")
            myLabel.text = "Wellcome to AppleTV"
            isChanged = true
        } else {
            imageView.image = UIImage(systemName: "face.smiling")
            myLabel.text = "Hello again :)"
            isChanged = false
        }
    }

}

