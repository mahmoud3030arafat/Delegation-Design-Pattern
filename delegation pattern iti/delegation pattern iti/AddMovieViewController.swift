
import UIKit

class AddMovieViewController: UIViewController {
    var addmovieDelgate : AddMovieProtocol?
    @IBOutlet weak var movieTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    

    @IBAction func addMoviePressed(_ sender: Any) {
        var myMovie = Movie(movie: movieTextField.text!)
        if !myMovie.title.isEmpty{
            addmovieDelgate?.addMovie(movie: myMovie)
           }
        self.navigationController?.popViewController(animated: true)
        
    }
    

}
