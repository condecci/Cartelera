//
//  SecondViewController.swift
//  MPOO-Collection
//
//  Created by JM on 10/8/19.
//  Copyright © 2019 iosLab. All rights reserved.
//

import UIKit
class SecondViewController: UIViewController, UIPickerViewDataSource,UIPickerViewDelegate {
    var vista1: ViewController!
    @IBOutlet weak var picker1: UIPickerView!
    @IBOutlet weak var simpleStepper: UIStepper!
    @IBOutlet weak var simpleLabel: UILabel!
    @IBOutlet weak var simpleStepper2: UIStepper!
    @IBOutlet weak var simpleLabel2: UILabel!
    @IBOutlet weak var mensaje1: UILabel!
    @IBOutlet weak var mensaje2: UILabel!
    @IBOutlet weak var mensaje3: UILabel!
    @IBOutlet weak var logo1: UIButton!
    @IBOutlet weak var logo2: UIButton!
    @IBOutlet weak var logo3: UIButton!
    @IBOutlet weak var cupo: UILabel!
    
    var datos = [ ["Lunes","Martes","Miércoles","Jueves","Viernes","Sábado","Domingo"],
                  ["11:30","12:30","1:30","2:30","3:30","4:30", "5:30","6:30","7:30","8:30","9:30"]
    ]
    var dia: String = " "
    var hora: String = " "
    var bol1: Double = 0.0
    var bol2: Double = 0.0
    var tboletos: Double = 0.0
    var pago: Double = 0.0
    var res: Double = 0.0
    var cupos: Double = 100
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        picker1.dataSource = self
        picker1.delegate = self
        dia = datos [0][0]
        hora = datos [1][0]
       
        
        logo1.setImage(UIImage(named: "ban")?.withRenderingMode(.alwaysOriginal), for: .normal)
        logo1.setImage(UIImage(named: "ban")?.withRenderingMode(.alwaysOriginal), for: .highlighted)
        logo2.setImage(UIImage(named: "american")?.withRenderingMode(.alwaysOriginal), for: .normal)
        logo2.setImage(UIImage(named: "american")?.withRenderingMode(.alwaysOriginal), for: .highlighted)
        logo3.setImage(UIImage(named: "hsbc")?.withRenderingMode(.alwaysOriginal), for: .normal)
        logo3.setImage(UIImage(named: "hsbc")?.withRenderingMode(.alwaysOriginal), for: .highlighted)
         cupo.text = "Cupo de sala \(cupos)"
    
        
    }

    @IBAction func ationTriggered (sender: AnyObject){
        
        let value1 = simpleStepper.value
        simpleLabel.text = " " + String(value1)
        bol1 = value1
        
    }
    @IBAction func actionTriggered (sender: AnyObject){
        let value2 = simpleStepper2.value
        simpleLabel2.text = " " + String(value2)
        bol2 = value2
    }
    @IBAction func atras(_ sender: UIButton){
        dismiss(animated: true, completion: nil)
    }
    
 
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return datos.count
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return datos[component].count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return datos [component][row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        if component == 0{
            dia = datos[0][row]
        }else{
            hora = datos[1][row]
        }
    
        mensaje1.text = "Elegiste el día: \(dia) a las \(hora) horas"
        tboletos = bol1+bol2
        res = cupos-tboletos
        
        pago = ((35*bol1)+(75*bol2))
        
        mensaje2.text = "Total de boletos: \(tboletos)"
        mensaje3.text = "Cantidad a pagar: $\(pago)"
        cupo.text = "Cupo de sala: \(res)"
        
        
        
    }
    override func didReceiveMemoryWarning (){
        super.didReceiveMemoryWarning ()
        
    
    }
    

}
