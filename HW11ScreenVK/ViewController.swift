//
//  ViewController.swift
//  HW11ScreenVK
//
//  Created by Daniil Litvinov on 23.05.2022.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK: View Screen
    private lazy var screenStackViewScreen: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        return stackView
    }()
    
    private lazy var infoUserStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        return stackView
    }()
    
    private lazy var cityUsers: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        return stackView
    }()
    
    private lazy var actionsUser: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        return stackView
    }()
    
    private lazy var numberSubscribers: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        return stackView
    }()
    
    private lazy var placeWork: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        return stackView
    }()
    
    private var imageUser: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "C5D0AF07-52B6-4C7B-98BA-FB0B0232222A")
        image.clipsToBounds = true
        image.layer.cornerRadius = 50
        return image
    }()
    
    private var nameUser: UILabel = {
        let label = UILabel()
        label.text = "Danil Litvinov"
        label.textColor = .white
        label.font = .systemFont(ofSize: 25, weight: .bold)
        return label
    }()
    
    private var statusUser: UILabel = {
        let label = UILabel()
        label.text = "set status"
        label.textColor = .systemBlue
        label.font = .systemFont(ofSize: 15, weight: .light)
        return label
    }()
    
    private var statusInternet: UILabel = {
        let label = UILabel()
        label.text = "onlane"
        label.textColor = .systemBlue
        label.font = .systemFont(ofSize: 15, weight: .light)
        return label
    }()
    
    private var statusInternetImage: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(systemName: "iphone.homebutton")
        return image
    }()
    
    private var buttonEdit: UIButton = {
        let button = UIButton()
        button.backgroundColor = .systemGray
        button.setTitle("Edit", for: .normal)
        button.clipsToBounds = true
        button.layer.cornerRadius = 10
        return button
    }()
    
    private var cameraActions: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(systemName: "camera")
        image.clipsToBounds = true
        return image
    }()
    
    private var squareActions: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(systemName: "square.and.pencil")
        return image
    }()
    
    private var photoActions: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(systemName: "photo.artframe")
        return image
    }()
    
    private var clipsActions: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(systemName: "figure.wave")
        return image
    }()
    //MARK: info user
    
    private lazy var infoАccountStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        return stackView
    }()
    
    private lazy var cityImage: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(systemName: "house")
        image.tintColor = .blue
        return image
    }()
    
    private lazy var cityName: UILabel = {
        let label = UILabel()
        label.text = "Город: Москва"
        label.textColor = .blue
        return label
    }()
    
    private lazy var countSubscribersImage: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(systemName: "dot.radiowaves.up.forward")
        image.tintColor = .blue
        return image
    }()
    
    private lazy var ubscribers: UILabel = {
        let label = UILabel()
        label.text = "Количество подписчиков 35"
        label.textColor = .blue
        return label
    }()
    
    private lazy var imageWork: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(systemName: "bag")
        image.tintColor = .blue
        return image
    }()
    
    private lazy var labelWork: UILabel = {
        let label = UILabel()
        label.text = "Место работы"
        label.textColor = .blue
        return label
    }()
    
    
  
//MARK: life cicle
    override func viewDidLoad() {
        super.viewDidLoad()
        setupHerarchy()
        setupView()
        setupLayuot()
    }
    
    func setupHerarchy(){
        view.addSubview(screenStackViewScreen)
        screenStackViewScreen.addSubview(infoUserStackView)
        
        infoUserStackView.addSubview(imageUser)
        infoUserStackView.addSubview(nameUser)
        infoUserStackView.addSubview(statusUser)
        infoUserStackView.addSubview(statusInternet)
        infoUserStackView.addSubview(statusInternetImage)
        
        screenStackViewScreen.addSubview(buttonEdit)
        screenStackViewScreen.addSubview(actionsUser)
    
        actionsUser.addSubview(cameraActions)
        actionsUser.addSubview(squareActions)
        actionsUser.addSubview(photoActions)
        actionsUser.addSubview(clipsActions)
        
        screenStackViewScreen.addSubview(infoАccountStackView)
        infoАccountStackView.addSubview(cityUsers)
        cityUsers.addSubview(cityImage)
        cityUsers.addSubview(cityName)
        
        infoАccountStackView.addSubview(numberSubscribers)
        numberSubscribers.addSubview(countSubscribersImage)
        numberSubscribers.addSubview(ubscribers)
        
        infoАccountStackView.addSubview(placeWork)
        placeWork.addSubview(imageWork)
        placeWork.addSubview(labelWork)
    }
    
    func setupView(){
        view.backgroundColor = .black
        
        screenStackViewScreen.translatesAutoresizingMaskIntoConstraints = false
        screenStackViewScreen.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor).isActive = true
        screenStackViewScreen.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor).isActive = true
        screenStackViewScreen.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
        screenStackViewScreen.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true

        imageUser.translatesAutoresizingMaskIntoConstraints = false
        imageUser.widthAnchor.constraint(equalToConstant: 100).isActive = true
        imageUser.heightAnchor.constraint(equalToConstant: 100).isActive = true
        imageUser.centerYAnchor.constraint(equalTo: infoUserStackView.centerYAnchor, constant: 50).isActive = true
        imageUser.centerXAnchor.constraint(equalTo: infoUserStackView.centerXAnchor, constant: 80).isActive = true
        
        nameUser.translatesAutoresizingMaskIntoConstraints  = false
        nameUser.centerYAnchor.constraint(equalTo: infoUserStackView.centerYAnchor, constant: 20).isActive = true
        nameUser.centerXAnchor.constraint(equalTo: infoUserStackView.centerXAnchor, constant: 235).isActive = true
        
        statusUser.translatesAutoresizingMaskIntoConstraints  = false
        statusUser.centerYAnchor.constraint(equalTo: infoUserStackView.centerYAnchor, constant: 50).isActive = true
        statusUser.centerXAnchor.constraint(equalTo: infoUserStackView.centerXAnchor, constant: 190).isActive = true
        
        statusInternet.translatesAutoresizingMaskIntoConstraints  = false
        statusInternet.centerYAnchor.constraint(equalTo: infoUserStackView.centerYAnchor, constant: 80).isActive = true
        statusInternet.centerXAnchor.constraint(equalTo: infoUserStackView.centerXAnchor, constant: 200).isActive = true
        
        statusInternetImage.translatesAutoresizingMaskIntoConstraints  = false
        statusInternetImage.centerYAnchor.constraint(equalTo: infoUserStackView.centerYAnchor, constant: 80).isActive = true
        statusInternetImage.centerXAnchor.constraint(equalTo: infoUserStackView.centerXAnchor, constant: 163).isActive = true
        
        buttonEdit.translatesAutoresizingMaskIntoConstraints = false
        buttonEdit.widthAnchor.constraint(equalToConstant: 350).isActive = true
        buttonEdit.centerYAnchor.constraint(equalTo: screenStackViewScreen.centerYAnchor, constant: -200).isActive = true
        buttonEdit.centerXAnchor.constraint(equalTo: screenStackViewScreen.centerXAnchor).isActive = true
        
        actionsUser.translatesAutoresizingMaskIntoConstraints = false
        actionsUser.centerYAnchor.constraint(equalTo: screenStackViewScreen.centerYAnchor).isActive = true
        
        cameraActions.translatesAutoresizingMaskIntoConstraints = false
        cameraActions.widthAnchor.constraint(equalToConstant: 50).isActive = true
        cameraActions.heightAnchor.constraint(equalToConstant: 40).isActive = true
        cameraActions.centerYAnchor.constraint(equalTo: actionsUser.centerYAnchor, constant: -140).isActive = true
        cameraActions.centerXAnchor.constraint(equalTo: actionsUser.centerXAnchor, constant: 42).isActive = true
        
        squareActions.translatesAutoresizingMaskIntoConstraints = false
        squareActions.widthAnchor.constraint(equalToConstant: 50).isActive = true
        squareActions.heightAnchor.constraint(equalToConstant: 40).isActive = true
        squareActions.centerYAnchor.constraint(equalTo: actionsUser.centerYAnchor, constant: -140).isActive = true
        squareActions.centerXAnchor.constraint(equalTo: actionsUser.centerXAnchor, constant: 142).isActive = true
        
        photoActions.translatesAutoresizingMaskIntoConstraints = false
        photoActions.widthAnchor.constraint(equalToConstant: 50).isActive = true
        photoActions.heightAnchor.constraint(equalToConstant: 40).isActive = true
        photoActions.centerYAnchor.constraint(equalTo: actionsUser.centerYAnchor, constant: -140).isActive = true
        photoActions.centerXAnchor.constraint(equalTo: actionsUser.centerXAnchor, constant: 242).isActive = true
        
        clipsActions.translatesAutoresizingMaskIntoConstraints = false
        clipsActions.widthAnchor.constraint(equalToConstant: 50).isActive = true
        clipsActions.heightAnchor.constraint(equalToConstant: 40).isActive = true
        clipsActions.centerYAnchor.constraint(equalTo: actionsUser.centerYAnchor, constant: -140).isActive = true
        clipsActions.centerXAnchor.constraint(equalTo: actionsUser.centerXAnchor, constant: 345).isActive = true
        
        cityUsers.translatesAutoresizingMaskIntoConstraints = false
        cityUsers.leadingAnchor.constraint(equalTo: screenStackViewScreen.leadingAnchor, constant: 20).isActive = true
        cityUsers.centerYAnchor.constraint(equalTo: screenStackViewScreen.centerYAnchor).isActive = true
        
        cityImage.translatesAutoresizingMaskIntoConstraints = false
        cityImage.centerXAnchor.constraint(equalTo: cityUsers.centerXAnchor).isActive = true
        cityImage.bottomAnchor.constraint(equalTo: cityUsers.centerYAnchor).isActive = true
        
        cityName.translatesAutoresizingMaskIntoConstraints = false
        cityName.centerXAnchor.constraint(equalTo: cityUsers.centerXAnchor, constant: 80).isActive = true
        cityName.bottomAnchor.constraint(equalTo: cityUsers.centerYAnchor).isActive = true
        
        numberSubscribers.translatesAutoresizingMaskIntoConstraints = false
        numberSubscribers.leadingAnchor.constraint(equalTo: screenStackViewScreen.leadingAnchor, constant: 20).isActive = true
        numberSubscribers.centerYAnchor.constraint(equalTo: screenStackViewScreen.centerYAnchor, constant: 40).isActive = true
        
        countSubscribersImage.translatesAutoresizingMaskIntoConstraints = false
        countSubscribersImage.centerXAnchor.constraint(equalTo: numberSubscribers.centerXAnchor).isActive = true
        countSubscribersImage.bottomAnchor.constraint(equalTo: numberSubscribers.centerYAnchor).isActive = true
        
        ubscribers.translatesAutoresizingMaskIntoConstraints = false
        ubscribers.centerXAnchor.constraint(equalTo: numberSubscribers.centerXAnchor, constant: 135).isActive = true
        ubscribers.bottomAnchor.constraint(equalTo: numberSubscribers.centerYAnchor).isActive = true
        
        placeWork.translatesAutoresizingMaskIntoConstraints = false
        placeWork.leadingAnchor.constraint(equalTo: screenStackViewScreen.leadingAnchor, constant: 20).isActive = true
        placeWork.centerYAnchor.constraint(equalTo: screenStackViewScreen.centerYAnchor, constant: 80).isActive = true
        
        imageWork.translatesAutoresizingMaskIntoConstraints = false
        imageWork.centerXAnchor.constraint(equalTo: placeWork.centerXAnchor).isActive = true
        imageWork.bottomAnchor.constraint(equalTo: placeWork.centerYAnchor).isActive = true
        
        labelWork.translatesAutoresizingMaskIntoConstraints = false
        labelWork.leadingAnchor.constraint(equalTo: placeWork.leadingAnchor, constant: 20).isActive = true
        labelWork.bottomAnchor.constraint(equalTo: placeWork.centerYAnchor).isActive = true
    }
    
    func setupLayuot(){
        
    }
}

