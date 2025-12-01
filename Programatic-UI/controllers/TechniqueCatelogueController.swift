//
//  ViewController.swift
//  Programatic-UI
//
//  Created by Ashfak Ahamed on 29/07/24.
//

import UIKit

class TechniqueCatelogueController: BaseViewController {
    
    private let tableView = UITableView()
    private var contents = ["Controller Navigation", "Foreground Refresh", "Combine", "MVVM"]
    let screens: [UIViewController?] = [
        DestinationVC()
    ]
    
    //Note I haven't used viewDidLoad method here because I want the BaseViewController's method to be executed.
    
    override func setupViews() {
        title = "Technique Catelogue"
        view.backgroundColor = .systemBackground
        navigationController?.navigationBar.prefersLargeTitles = true
        tableView.register(CatelogueCell.self, forCellReuseIdentifier: CatelogueCell.id)
        tableView.delegate = self
        tableView.dataSource = self
        view.addSubview(tableView)
    }
    
    override func setupConstraints(){
        tableView.translatesAutoresizingMaskIntoConstraints = false
        //        tableView.separatorStyle = .singleLine
        
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: view.topAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ])
    }
    
    //    @objc func navigateToSecondViewController(){
    //        let destinationVc = DestinationVC()
    //        destinationVc.title = "Second Screen"
    //        navigationController?.pushViewController(destinationVc, animated: true)
    //    }
}

extension TechniqueCatelogueController: UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        contents.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: CatelogueCell.id, for: indexPath) as? CatelogueCell else {
            return UITableViewCell()
        }
        cell.configure(title: contents[indexPath.row])
        return cell
    }
}

extension TechniqueCatelogueController: UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        guard indexPath.row < screens.count, let destinationVC = screens[indexPath.row] else {
            return
        }
        destinationVC.title = contents[indexPath.row]
        navigationController?.pushViewController(destinationVC, animated: true)
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
