//
//  DocksTableViewController.swift
//  TestProject
//
//  Created by Іван Штурхаль on 20.07.2023.
//

import UIKit

class DocksTableViewController: UITableViewController {
    // створити змінну для отримання даних з моделі
        var trackList = Track.getTrackList()
        
        
        override func viewDidLoad() {
            super.viewDidLoad()
//            Helpers.addVerticalGradientLayer(topColor: .purple, bottomColor: .lightGray, view: view)
           
        }
        
    }

    extension DocksTableViewController {
        // MARK: функція для встановлення кількості рядків(ROW) в таблиці
        override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            let cell = trackList.count
            return cell
        }
        // MARK: функція для встановлення ячійки (CELL) у рядок (ROW)
        override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            // вставляємо значення в ячійку
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
            // створюємо значення з моделі з даними
            let track = trackList[indexPath.row]
            // встановлюємо текст ячійки
            cell.textLabel?.text = track.song.uppercased()
            // встановлюємо детальний текст ячійки
            cell.detailTextLabel?.text = track.artist
            // встановлюємо зображення зі значення в моделі по назві
            cell.imageView?.image = UIImage(named: track.track)
            
            // повертаємо оброблену ячійку
            return cell
        }
        // MARK: функція для встановлення висоти рядка
        override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
            100
        }
        // MARK: функція підготовки для короткотривалої передачі даних
        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            let VC = segue.destination as! AccessViewController
            guard let indexPath = tableView.indexPathForSelectedRow else { return }
            VC.track = trackList[indexPath.row]
        }
        // MARK: функція для редагування рядків (видалення, додавання, тощо)
        override func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {
            .none
        }
        // MARK: функція для редагування рядків - чи потрібно рухати рядок для редагування
        override func tableView(_ tableView: UITableView, shouldIndentWhileEditingRowAt indexPath: IndexPath) -> Bool {
            false
        }
        // MARK: функція для переміщення рядків за допомогою кнопки для редагування
        override func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
            let currentTrack = trackList.remove(at: sourceIndexPath.row) // запамʼятати та видалити
            trackList.insert(currentTrack, at: destinationIndexPath.row) // переміщене помістити сюди
            
            
        }
        
        

    }


