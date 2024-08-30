import UIKit

class ViewController: UIViewController {
    
    // Outlets for UI elements
    
    @IBOutlet weak var firstNumberTextField: UITextField!
    
    @IBOutlet weak var secondNumberTextField: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBOutlet weak var subLabel: UILabel!
    
    @IBAction func calculateBtn(_ sender: Any) {
        // Get input from text fields
        guard let firstNumberText = firstNumberTextField.text,
              let secondNumberText = secondNumberTextField.text,
              let firstNumber = Double(firstNumberText),
              let secondNumber = Double(secondNumberText) else {
            resultLabel.text = "Please enter valid numbers."
            return
        }
        
        // Print values for debugging
        print("First Number: \(firstNumber)")
        print("Second Number: \(secondNumber)")
        
        // Perform calculations
        let addition = firstNumber + secondNumber
        let subtraction = firstNumber - secondNumber
        let multiplication = firstNumber * secondNumber
        let division = secondNumber != 0 ? firstNumber / secondNumber : Double.nan
        
        // Print results for debugging
        print("Addition: \(addition)")
        print("Subtraction: \(subtraction)")
        print("Multiplication: \(multiplication)")
        print("Division: \(division.isNaN ? "Cannot divide by zero" : "\(division)")")
        
        // Display results
        resultLabel.text = """
        Addition: \(addition)
        
        Multiplication: \(multiplication)
        Division: \(division.isNaN ? "Cannot divide by zero" : "\(division)")
        """
        
        subLabel.text = """
      Subtraction: \(subtraction)
"""
    }
}
