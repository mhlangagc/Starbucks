//
//  ViewController.swift
//  Starbucks
//
//  Created by Reuben Simphiwe Kuse on 2024/04/25.
//

import UIKit

class HomeViewController: UIViewController {
    
    lazy var logoImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "homeLogo.")
        imageView.layer.cornerRadius = 15
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    lazy var advertView: AdvertContainerView = {
        let view = AdvertContainerView()
        //view.backgroundColor = .cyan
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    override func viewDidLoad() {
        //view.backgroundColor = .white
        super.viewDidLoad()
        setupUI()
        setupNavigationBar()
        
        func setupUI() {
            
            view.addSubview(advertView)
            view.addSubview(logoImageView)
            
            advertView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
            advertView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
            advertView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 14).isActive = true
            advertView.heightAnchor.constraint(equalToConstant: 140.0).isActive = true
            
        }
        
        func setupNavigationBar() {
            navigationItem.titleView = logoImageView
            
            logoImageView.heightAnchor.constraint(equalToConstant: 30).isActive = true
            logoImageView.widthAnchor.constraint(equalToConstant: 30).isActive = true
            
        }
        
        
    }
    
}
