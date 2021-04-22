//
//  EggPlantEggTableViewController.swift
//  EggPlantEggVideo
//
//  Created by 粘辰晧 on 2021/4/18.
//

import UIKit
import SafariServices

class EggPlantEggTableViewController: UITableViewController {

    var eggPlantEggTopic = [
        EggPlantEgg(topic: "茄子蛋熱門歌曲第一名", intro: "浪子回頭", videoPhoto: "eggPlantEgg0.jpg", videoUrl: URL(string: "https://youtu.be/x3bDhtuC5yk")!),
        EggPlantEgg(topic: "茄子蛋熱門歌曲第二名", intro: "這款自作多情", videoPhoto: "eggPlantEgg1.jpeg", videoUrl: URL(string: "https://youtu.be/UocMW7BG0ls")!),
        EggPlantEgg(topic: "茄子蛋熱門歌曲第三名", intro: "浪流連", videoPhoto: "eggPlantEgg2.png", videoUrl: URL(string: "https://youtu.be/3Y0Ut5ozaKs")!),
        EggPlantEgg(topic: "茄子蛋熱門歌曲第四名", intro: "親愛的無情孫小美", videoPhoto: "eggPlantEgg3.jpeg", videoUrl: URL(string: "https://youtu.be/UXHTGeGkZwU")!),
        EggPlantEgg(topic: "茄子蛋熱門歌曲第五名", intro: "日常", videoPhoto: "eggPlantEgg4.jpeg", videoUrl: URL(string: "https://youtu.be/_vGN_dFtAQI")!),
        EggPlantEgg(topic: "茄子蛋熱門歌曲第六名", intro: "愛情你比我想的閣較偉大", videoPhoto: "eggPlantEgg5.jpeg", videoUrl: URL(string: "https://youtu.be/0rp3pP2Xwhs")!),
        EggPlantEgg(topic: "茄子蛋熱門歌曲第七名", intro: "窒息", videoPhoto: "eggPlantEgg6.jpeg", videoUrl: URL(string: "https://youtu.be/caITRQWpBHs")!)
    
    
    
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.rowHeight = 180
        tableView.estimatedRowHeight = 0
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return eggPlantEggTopic.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "eggPlantEggCell", for: indexPath) as! EggPlantEggTableViewCell
        
        let song = eggPlantEggTopic[indexPath.row]
        cell.eggPlantEggLabel.text = song.topic
        cell.eggPlantEggIntro.text = song.intro
        cell.eggPlantEggImageView.image = UIImage(named: song.videoPhoto)
        // Configure the cell...

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let indexPath = self.tableView.indexPathForSelectedRow {
            let eggPlantEggVideo = eggPlantEggTopic[indexPath.row]
            let url = eggPlantEggVideo.videoUrl
            let safariVC = SFSafariViewController(url: url)
            
            present(safariVC, animated: true, completion: nil)
        }
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
