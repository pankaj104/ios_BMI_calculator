
import UIKit

class CalculateViewController: UIViewController {
    var calculatorBrain  = CalculatorBrain()
    @IBOutlet weak var weightLable: UILabel!
    @IBOutlet weak var heightLable: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    
    @IBAction func heightSliderChanged(_ sender: UISlider) {
    heightLable.text = "\(String(format: "%.2f", sender.value))m"

    }
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        weightLable.text = "\( String(format: "%.0f", sender.value))kg"
    }


    override func viewDidLoad() {
        super.viewDidLoad()
                
    }

    @IBAction func claculatePressed(_ sender: UIButton) {
     let height = heightSlider.value
        let weight = weightSlider.value
        
        calculatorBrain.calculateBMI(height: height , weight: weight)
        self.performSegue(withIdentifier: "goToResult", sender: self)
    
    
    
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmiValue = calculatorBrain.getBMIValue()
            destinationVC.advice = calculatorBrain.getAdvice()
            destinationVC.color =  calculatorBrain.getColor()

        }
    }
}

