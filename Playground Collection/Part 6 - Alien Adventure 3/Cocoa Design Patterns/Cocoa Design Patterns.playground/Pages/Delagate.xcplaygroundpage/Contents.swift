//: [Previous](@previous)
/*:
## Design Pattern: Delegate
*/
import UIKit

class DataSourceExample: NSObject, UITableViewDataSource {
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCellStyle.Subtitle, reuseIdentifier: "")
        let description = "Row \(indexPath.row) Section \(indexPath.section)"
        cell.textLabel?.text = "It's a cell!"
        cell.detailTextLabel?.text = description
        
        return cell
    }
}

let tableView = UITableView(frame: CGRect(x: 0, y: 0, width: 320, height: 480))
let dataSource = DataSourceExample()

// Let's delegate the tableView's dataSource responsibilites to the dataSource object.
tableView.dataSource = dataSource

tableView.reloadData()
tableView
//: [Next](@next)
