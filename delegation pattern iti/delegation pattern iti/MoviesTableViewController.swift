

import UIKit

class MoviesTableViewController: UITableViewController {
var movies = [Movie]()
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // table view functions
    

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = movies[indexPath.row].title
        return cell
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc  = segue.destination as? AddMovieViewController
        vc?.addmovieDelgate = self
    }
    
}
extension MoviesTableViewController:AddMovieProtocol{
    
    func addMovie(movie: Movie) {
        movies.append(movie)
        self.tableView.reloadData()
    }
    
    
    
}
