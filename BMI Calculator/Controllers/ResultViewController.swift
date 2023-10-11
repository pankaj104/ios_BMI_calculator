

import UIKit

class ResultViewController: UIViewController {
    
    var bmiValue: String?
    var advice: String?
    var color: UIColor?

    @IBOutlet weak var bmiLable: UILabel!
    @IBOutlet weak var adviceLable: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        bmiLable.text =  bmiValue
        adviceLable.text = advice
        view.backgroundColor = color
        print(bmiValue)

      
    }
    
    @IBAction func reCalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    
}
