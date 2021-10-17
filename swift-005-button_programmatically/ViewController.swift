//
//  ViewController.swift
//  swift-005-button_programmatically
//
//  Created by Luiz Araujo on 17/10/21.
//

import UIKit

class ViewController: UIViewController {
    
    var indexForTheTextOfButtonYear: Int = 0
    var indexForTheTextOfButtonYear2: Int = 0
    var indexForTheTextOfButtonYear3: Int = 0
    
    
    let colorPrimary    = UIColor.systemFill
    let colorSecondary  = UIColor.secondarySystemFill
//    let colorBackground = UIColor.white
    let colorAuxiliary  = UIColor.tertiarySystemFill
    
    
    let typesOfCharts = ["Weekly", "Monthly", "Yearly"]
    let week          = ["Seg","Ter","Qua","Qui","Sex","Sab","Dom"]
    let month         = ["Jan","Fev","Mar","Abr","Mai","Jun","Jul","Ago","Set","Out","Nov","Dez"]
    let year          = ["2015","2016","2017","2018","2019","2020","2021"]
    
    
    private lazy var squareForTeste: UIView = {
        let square = UIView()
        square.backgroundColor = .blue
        return square
    }()
    
    private lazy var yearSelectionButtonShadowView: UIView = {
        let viewShadow = UIView()
        
        viewShadow.translatesAutoresizingMaskIntoConstraints = false
        viewShadow.layer.shadowColor    = UIColor.black.cgColor
        viewShadow.layer.shadowOpacity  = 0.25
        viewShadow.layer.shadowOffset   = CGSize(width: 4.0, height: 4.0)
        viewShadow.layer.shadowRadius   = 8
        viewShadow.backgroundColor      = .white
        viewShadow.layer.cornerRadius   = 13.0
        
        return viewShadow
    }()
    
    private lazy var yearSelectionButtonTextLabel: UILabel = {
        let textLabel = UILabel()
        
        textLabel.text = year[indexForTheTextOfButtonYear] //TODO: use userDefault
        textLabel.textColor = colorPrimary
        
        return textLabel
    }()
    
    private lazy var yearSelectionButtonDecrease: UIButton = {
        let btn = UIButton()
        
        if #available(iOS 15.0, *) {
            var normalConfig = UIImage.SymbolConfiguration(pointSize: 18, weight: .heavy, scale: .default)
            var highlightedConfig = UIImage.SymbolConfiguration(pointSize: 18, weight: .heavy, scale: .default)
            
            normalConfig = UIImage.SymbolConfiguration(paletteColors: [colorSecondary])
            highlightedConfig = UIImage.SymbolConfiguration(paletteColors: [colorPrimary])
            
            var largeBoldDoc = UIImage(systemName: "chevron.backward", withConfiguration: normalConfig)
            btn.setImage(largeBoldDoc, for: .normal)
            
            largeBoldDoc = UIImage(systemName: "chevron.backward", withConfiguration: highlightedConfig)
            btn.setImage(largeBoldDoc, for: .highlighted)
        } else {
            // Fallback on earlier versions
            btn.setTitle("<", for: .normal)
            btn.setTitleColor(colorSecondary, for: .normal)
            btn.setTitleColor(colorPrimary, for: .highlighted)
        }

        btn.setTitleColor(.gray, for: .disabled)
//        btn.titleLabel?.font = UIFontMetrics.default.scaledFont(for: fontSemibold)
        btn.titleLabel?.adjustsFontForContentSizeCategory = true
        
        // Actions
        btn.addTarget(self, action:#selector(self.buttonDecreaseClicked), for: .touchUpInside)

        
        btn.backgroundColor = .clear
        
        return btn
    }()
    
    private lazy var yearSelectionButtonIncrease: UIButton = {
        let btn = UIButton()
        
        if #available(iOS 15.0, *) {
            var normalConfig = UIImage.SymbolConfiguration(pointSize: 18, weight: .heavy, scale: .default)
            var highlightedConfig = UIImage.SymbolConfiguration(pointSize: 18, weight: .heavy, scale: .default)
            
            normalConfig = UIImage.SymbolConfiguration(paletteColors: [colorSecondary])
            highlightedConfig = UIImage.SymbolConfiguration(paletteColors: [colorPrimary])
            
            var largeBoldDoc = UIImage(systemName: "chevron.forward", withConfiguration: normalConfig)
            btn.setImage(largeBoldDoc, for: .normal)
            
            largeBoldDoc = UIImage(systemName: "chevron.forward", withConfiguration: highlightedConfig)
            btn.setImage(largeBoldDoc, for: .highlighted)
        } else {
            // Fallback on earlier versions
            btn.setTitle(">", for: .normal)
            btn.setTitleColor(colorSecondary, for: .normal)
            btn.setTitleColor(colorPrimary, for: .highlighted)
        }

        btn.setTitleColor(.gray, for: .disabled)
        btn.titleLabel?.adjustsFontForContentSizeCategory = true
        
        // Actions
        btn.addTarget(self, action:#selector(self.buttonIncreaseClicked), for: .touchUpInside)
        
        btn.backgroundColor = .clear
        
        return btn
    }()
    
    
    
    
    
    
    
    //MARK: TESTE
    
    
    
    private lazy var yearSelectionButtonShadowView2: UIView = {
        let viewShadow = UIView()
        
        viewShadow.translatesAutoresizingMaskIntoConstraints = false
        viewShadow.layer.shadowColor    = UIColor.black.cgColor
        viewShadow.layer.shadowOpacity  = 0.25
        viewShadow.layer.shadowOffset   = CGSize(width: 4.0, height: 4.0)
        viewShadow.layer.shadowRadius   = 8
        viewShadow.backgroundColor      = .white
        viewShadow.layer.cornerRadius   = 13.0
        
        return viewShadow
    }()
    
    private lazy var yearSelectionButtonTextLabel2: UILabel = {
        let textLabel = UILabel()
        
        textLabel.text = year[indexForTheTextOfButtonYear2] //TODO: use userDefault\
        textLabel.textColor = colorPrimary
        
        return textLabel
    }()
    
    private lazy var yearSelectionButtonDecrease2: UIButton = {
        let btn = UIButton()
        
        if #available(iOS 15.0, *) {
            var normalConfig = UIImage.SymbolConfiguration(pointSize: 18, weight: .heavy, scale: .default)
            var highlightedConfig = UIImage.SymbolConfiguration(pointSize: 18, weight: .heavy, scale: .default)
            
            normalConfig = UIImage.SymbolConfiguration(paletteColors: [colorSecondary])
            highlightedConfig = UIImage.SymbolConfiguration(paletteColors: [colorPrimary])
            
            var largeBoldDoc = UIImage(systemName: "chevron.backward", withConfiguration: normalConfig)
            btn.setImage(largeBoldDoc, for: .normal)
            
            largeBoldDoc = UIImage(systemName: "chevron.backward", withConfiguration: highlightedConfig)
            btn.setImage(largeBoldDoc, for: .highlighted)
        } else {
            // Fallback on earlier versions
            btn.setTitle("<", for: .normal)
            btn.setTitleColor(colorSecondary, for: .normal)
            btn.setTitleColor(colorPrimary, for: .highlighted)
        }

        btn.setTitleColor(.gray, for: .disabled)
        btn.titleLabel?.adjustsFontForContentSizeCategory = true
        
        // Actions
        btn.addTarget(self, action:#selector(self.buttonDecreaseClicked2), for: .touchUpInside)

        
        btn.backgroundColor = .clear
        
        return btn
    }()
    
    private lazy var yearSelectionButtonIncrease2: UIButton = {
        let btn = UIButton()
        
        if #available(iOS 15.0, *) {
            var normalConfig = UIImage.SymbolConfiguration(pointSize: 18, weight: .heavy, scale: .default)
            var highlightedConfig = UIImage.SymbolConfiguration(pointSize: 18, weight: .heavy, scale: .default)
            
            normalConfig = UIImage.SymbolConfiguration(paletteColors: [colorSecondary])
            highlightedConfig = UIImage.SymbolConfiguration(paletteColors: [colorPrimary])
            
            var largeBoldDoc = UIImage(systemName: "chevron.forward", withConfiguration: normalConfig)
            btn.setImage(largeBoldDoc, for: .normal)
            
            largeBoldDoc = UIImage(systemName: "chevron.forward", withConfiguration: highlightedConfig)
            btn.setImage(largeBoldDoc, for: .highlighted)
        } else {
            // Fallback on earlier versions
            btn.setTitle(">", for: .normal)
            btn.setTitleColor(colorSecondary, for: .normal)
            btn.setTitleColor(colorPrimary, for: .highlighted)
        }

        btn.setTitleColor(.gray, for: .disabled)
        btn.titleLabel?.adjustsFontForContentSizeCategory = true
        
        // Actions
        btn.addTarget(self, action:#selector(self.buttonIncreaseClicked2), for: .touchUpInside)
        
        btn.backgroundColor = .clear
        
        return btn
    }()
    
    
    
    
    
    //MARK: FIM TESTE
    
    
    
    
    
    
    
    

    
    
    private lazy var yearSelectionButtonLastYear: UIButton = {
        let btn = UIButton()
        
        if #available(iOS 15.0, *) {
            var normalConfig = UIImage.SymbolConfiguration(pointSize: 18, weight: .heavy, scale: .default)
            var highlightedConfig = UIImage.SymbolConfiguration(pointSize: 18, weight: .heavy, scale: .default)
            
            normalConfig = UIImage.SymbolConfiguration(paletteColors: [colorSecondary])
            highlightedConfig = UIImage.SymbolConfiguration(paletteColors: [colorPrimary])
            
            var largeBoldDoc = UIImage(systemName: "chevron.forward.2", withConfiguration: normalConfig)
            btn.setImage(largeBoldDoc, for: .normal)
            
            largeBoldDoc = UIImage(systemName: "chevron.forward.2", withConfiguration: highlightedConfig)
            btn.setImage(largeBoldDoc, for: .highlighted)
        } else {
            // Fallback on earlier versions
            btn.setTitle(">>", for: .normal)
            btn.setTitleColor(colorSecondary, for: .normal)
            btn.setTitleColor(colorPrimary, for: .highlighted)
        }

        btn.setTitleColor(.gray, for: .disabled)
        btn.titleLabel?.adjustsFontForContentSizeCategory = true
        
        // Actions
        btn.addTarget(self, action:#selector(self.buttonLastYearClicked), for: .touchUpInside)
        
        btn.backgroundColor = .clear
        
        return btn
    }()
    
    private lazy var yearSelectionButtonFirstYear: UIButton = {
        let btn = UIButton()
        
        if #available(iOS 15.0, *) {
            var normalConfig = UIImage.SymbolConfiguration(pointSize: 18, weight: .heavy, scale: .default)
            var highlightedConfig = UIImage.SymbolConfiguration(pointSize: 18, weight: .heavy, scale: .default)
            
            normalConfig = UIImage.SymbolConfiguration(paletteColors: [colorSecondary])
            highlightedConfig = UIImage.SymbolConfiguration(paletteColors: [colorPrimary])
            
            var largeBoldDoc = UIImage(systemName: "chevron.backward.2", withConfiguration: normalConfig)
            btn.setImage(largeBoldDoc, for: .normal)
            
            largeBoldDoc = UIImage(systemName: "chevron.backward.2", withConfiguration: highlightedConfig)
            btn.setImage(largeBoldDoc, for: .highlighted)
        } else {
            // Fallback on earlier versions
            btn.setTitle("<<", for: .normal)
            btn.setTitleColor(colorSecondary, for: .normal)
            btn.setTitleColor(colorPrimary, for: .highlighted)
        }

        btn.setTitleColor(.gray, for: .disabled)
        btn.titleLabel?.adjustsFontForContentSizeCategory = true
        
        // Actions
        btn.addTarget(self, action:#selector(self.buttonFirstYearClicked), for: .touchUpInside)
        
        btn.backgroundColor = .clear
        
        return btn
    }()
    
    
    
    
    
    

    //MARK: TEST 3
    
    
    
    private lazy var yearSelectionButtonShadowView3: UIView = {
        let viewShadow = UIView()
        
        viewShadow.translatesAutoresizingMaskIntoConstraints = false
        viewShadow.layer.shadowColor    = UIColor.black.cgColor
        viewShadow.layer.shadowOpacity  = 0.25
        viewShadow.layer.shadowOffset   = CGSize(width: 4.0, height: 4.0)
        viewShadow.layer.shadowRadius   = 8
        viewShadow.backgroundColor      = .white
        viewShadow.layer.cornerRadius   = 13.0
        
        return viewShadow
    }()
    
    private lazy var yearSelectionButtonTextLabel3: UILabel = {
        let textLabel = UILabel()
        
        textLabel.text = year[indexForTheTextOfButtonYear] //TODO: use userDefault
        textLabel.textColor = colorPrimary
        
        return textLabel
    }()
    
    private lazy var yearSelectionButtonDecrease3: UIButton = {
        let btn = UIButton()
        
        if #available(iOS 15.0, *) {
            var normalConfig = UIImage.SymbolConfiguration(pointSize: 18, weight: .heavy, scale: .default)
            var highlightedConfig = UIImage.SymbolConfiguration(pointSize: 18, weight: .heavy, scale: .default)
            
            normalConfig = UIImage.SymbolConfiguration(paletteColors: [colorSecondary])
            highlightedConfig = UIImage.SymbolConfiguration(paletteColors: [colorPrimary])
            
            var largeBoldDoc = UIImage(systemName: "chevron.backward", withConfiguration: normalConfig)
            btn.setImage(largeBoldDoc, for: .normal)
            
            largeBoldDoc = UIImage(systemName: "chevron.backward", withConfiguration: highlightedConfig)
            btn.setImage(largeBoldDoc, for: .highlighted)
        } else {
            // Fallback on earlier versions
            btn.setTitle("<", for: .normal)
            btn.setTitleColor(colorSecondary, for: .normal)
            btn.setTitleColor(colorPrimary, for: .highlighted)
        }

        btn.setTitleColor(.gray, for: .disabled)
        btn.titleLabel?.adjustsFontForContentSizeCategory = true
        
        // Actions
        btn.addTarget(self, action:#selector(self.buttonDecreaseClicked3), for: .touchUpInside)

        
        btn.backgroundColor = .clear
        
        return btn
    }()
    
    private lazy var yearSelectionButtonIncrease3: UIButton = {
        let btn = UIButton()
        
        if #available(iOS 15.0, *) {
            var normalConfig = UIImage.SymbolConfiguration(pointSize: 18, weight: .heavy, scale: .default)
            var highlightedConfig = UIImage.SymbolConfiguration(pointSize: 18, weight: .heavy, scale: .default)
            
            normalConfig = UIImage.SymbolConfiguration(paletteColors: [colorSecondary])
            highlightedConfig = UIImage.SymbolConfiguration(paletteColors: [colorPrimary])
            
            var largeBoldDoc = UIImage(systemName: "chevron.forward", withConfiguration: normalConfig)
            btn.setImage(largeBoldDoc, for: .normal)
            
            largeBoldDoc = UIImage(systemName: "chevron.forward", withConfiguration: highlightedConfig)
            btn.setImage(largeBoldDoc, for: .highlighted)
        } else {
            // Fallback on earlier versions
            btn.setTitle(">", for: .normal)
            btn.setTitleColor(colorSecondary, for: .normal)
            btn.setTitleColor(colorPrimary, for: .highlighted)
        }

        btn.setTitleColor(.gray, for: .disabled)
        btn.titleLabel?.adjustsFontForContentSizeCategory = true
        
        // Actions
        btn.addTarget(self, action:#selector(self.buttonIncreaseClicked3), for: .touchUpInside)
        
        btn.backgroundColor = .clear
        
        return btn
    }()
    
    
    
    
    private lazy var yearSelectionButtonLastYear3: UIButton = {
        let btn = UIButton()
        
        if #available(iOS 15.0, *) {
            var normalConfig = UIImage.SymbolConfiguration(pointSize: 18, weight: .heavy, scale: .default)
            var highlightedConfig = UIImage.SymbolConfiguration(pointSize: 18, weight: .heavy, scale: .default)
            
            normalConfig = UIImage.SymbolConfiguration(paletteColors: [colorSecondary])
            highlightedConfig = UIImage.SymbolConfiguration(paletteColors: [colorPrimary])
            
            var largeBoldDoc = UIImage(systemName: "chevron.forward.2", withConfiguration: normalConfig)
            btn.setImage(largeBoldDoc, for: .normal)
            
            largeBoldDoc = UIImage(systemName: "chevron.forward.2", withConfiguration: highlightedConfig)
            btn.setImage(largeBoldDoc, for: .highlighted)
        } else {
            // Fallback on earlier versions
            btn.setTitle(">>", for: .normal)
            btn.setTitleColor(colorSecondary, for: .normal)
            btn.setTitleColor(colorPrimary, for: .highlighted)
        }

        btn.setTitleColor(.gray, for: .disabled)
        btn.titleLabel?.adjustsFontForContentSizeCategory = true
        
        // Actions
        btn.addTarget(self, action:#selector(self.buttonLastYearClicked3), for: .touchUpInside)
        
        btn.backgroundColor = .clear
        
        return btn
    }()
    
    private lazy var yearSelectionButtonFirstYear3: UIButton = {
        let btn = UIButton()
        
        if #available(iOS 15.0, *) {
            var normalConfig = UIImage.SymbolConfiguration(pointSize: 18, weight: .heavy, scale: .default)
            var highlightedConfig = UIImage.SymbolConfiguration(pointSize: 18, weight: .heavy, scale: .default)
            
            normalConfig = UIImage.SymbolConfiguration(paletteColors: [colorSecondary])
            highlightedConfig = UIImage.SymbolConfiguration(paletteColors: [colorPrimary])
            
            var largeBoldDoc = UIImage(systemName: "chevron.backward.2", withConfiguration: normalConfig)
            btn.setImage(largeBoldDoc, for: .normal)
            
            largeBoldDoc = UIImage(systemName: "chevron.backward.2", withConfiguration: highlightedConfig)
            btn.setImage(largeBoldDoc, for: .highlighted)
        } else {
            // Fallback on earlier versions
            btn.setTitle("<<", for: .normal)
            btn.setTitleColor(colorSecondary, for: .normal)
            btn.setTitleColor(colorPrimary, for: .highlighted)
        }

        btn.setTitleColor(.gray, for: .disabled)
        btn.titleLabel?.adjustsFontForContentSizeCategory = true
        
        // Actions
        btn.addTarget(self, action:#selector(self.buttonFirstYearClicked3), for: .touchUpInside)
        
        btn.backgroundColor = .clear
        
        return btn
    }()
    
    
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //huhuuhu
//        view.addSubview(squareForTeste)
        view.addSubview(yearSelectionButtonShadowView)
        yearSelectionButtonShadowView.addSubview(yearSelectionButtonTextLabel)
        yearSelectionButtonShadowView.addSubview(yearSelectionButtonDecrease)
        yearSelectionButtonShadowView.addSubview(yearSelectionButtonIncrease)
        
        
        
        
        
        view.addSubview(yearSelectionButtonShadowView2)
        yearSelectionButtonShadowView2.addSubview(yearSelectionButtonTextLabel2)
        yearSelectionButtonShadowView2.addSubview(yearSelectionButtonDecrease2)
        yearSelectionButtonShadowView2.addSubview(yearSelectionButtonIncrease2)
        
        yearSelectionButtonShadowView2.addSubview(yearSelectionButtonFirstYear)
        yearSelectionButtonShadowView2.addSubview(yearSelectionButtonLastYear)
        
        
        
        
        view.addSubview(yearSelectionButtonShadowView3)
        yearSelectionButtonShadowView3.addSubview(yearSelectionButtonTextLabel3)
        yearSelectionButtonShadowView3.addSubview(yearSelectionButtonDecrease3)
        yearSelectionButtonShadowView3.addSubview(yearSelectionButtonIncrease3)
        
        yearSelectionButtonShadowView3.addSubview(yearSelectionButtonFirstYear3)
        yearSelectionButtonShadowView3.addSubview(yearSelectionButtonLastYear3)
        
        
        
        
        
//        view.backgroundColor = colorBackground
        
        setConstraintsToView()
    }
    
    //MARK: ACTIONS
    @objc func buttonIncreaseClicked(sender:UIButton) {
        print("buttonIncreaseClicked \(sender.tag) clicked")
        if indexForTheTextOfButtonYear == year.count - 1 {
            indexForTheTextOfButtonYear = 0
        } else {
            indexForTheTextOfButtonYear += 1
        }
        
        yearSelectionButtonTextLabel.text = year[indexForTheTextOfButtonYear]
    }
    
    @objc func buttonDecreaseClicked(sender:UIButton) {
        print("buttonDecreaseClicked \(sender.tag) clicked")
        if indexForTheTextOfButtonYear == 0 {
            indexForTheTextOfButtonYear = year.count - 1
        } else {
            indexForTheTextOfButtonYear -= 1
        }
        
        yearSelectionButtonTextLabel.text = year[indexForTheTextOfButtonYear]
    }
    
    
    
    
    
    //MARK: Button 2
    
    @objc func buttonIncreaseClicked2(sender:UIButton) {
        print("buttonIncreaseClicked \(sender.tag) clicked")
        if indexForTheTextOfButtonYear2 == year.count - 1 {
            indexForTheTextOfButtonYear2 = 0
        } else {
            indexForTheTextOfButtonYear2 += 1
        }
        
        yearSelectionButtonTextLabel2.text = year[indexForTheTextOfButtonYear2]
    }
    
    @objc func buttonDecreaseClicked2(sender:UIButton) {
        print("buttonDecreaseClicked \(sender.tag) clicked")
        if indexForTheTextOfButtonYear2 == 0 {
            indexForTheTextOfButtonYear2 = year.count - 1
        } else {
            indexForTheTextOfButtonYear2 -= 1
        }
        
        yearSelectionButtonTextLabel2.text = year[indexForTheTextOfButtonYear2]
    }
    
    
    
    
    @objc func buttonFirstYearClicked(sender:UIButton) {
        print("buttonFirstYearClicked \(sender.tag) clicked")
        indexForTheTextOfButtonYear2 = 0
        
        yearSelectionButtonTextLabel2.text = year[indexForTheTextOfButtonYear2]
    }
    
    @objc func buttonLastYearClicked(sender:UIButton) {
        print("buttonLastYearClicked \(sender.tag) clicked")
        indexForTheTextOfButtonYear2 = year.count - 1
        
        yearSelectionButtonTextLabel2.text = year[indexForTheTextOfButtonYear2]
    }
    
    
    
    
    
    //MARK: Button 3
    
    @objc func buttonIncreaseClicked3(sender:UIButton) {
        print("buttonIncreaseClicked3 \(sender.tag) clicked")
        if indexForTheTextOfButtonYear3 == year.count - 1 {
            indexForTheTextOfButtonYear3 = 0
        } else {
            indexForTheTextOfButtonYear3 += 1
        }
        
        yearSelectionButtonTextLabel3.text = year[indexForTheTextOfButtonYear3]
    }
    
    @objc func buttonDecreaseClicked3(sender:UIButton) {
        print("buttonDecreaseClicked3 \(sender.tag) clicked")
        if indexForTheTextOfButtonYear3 == 0 {
            indexForTheTextOfButtonYear3 = year.count - 1
        } else {
            indexForTheTextOfButtonYear3 -= 1
        }
        
        yearSelectionButtonTextLabel3.text = year[indexForTheTextOfButtonYear3]
    }
    
    
    
    
    @objc func buttonFirstYearClicked3(sender:UIButton) {
        print("buttonFirstYearClicked3 \(sender.tag) clicked")
        indexForTheTextOfButtonYear3 = 0
        
        yearSelectionButtonTextLabel3.text = year[indexForTheTextOfButtonYear3]
    }
    
    @objc func buttonLastYearClicked3(sender:UIButton) {
        print("buttonLastYearClicked3 \(sender.tag) clicked")
        indexForTheTextOfButtonYear3 = year.count - 1
        
        yearSelectionButtonTextLabel3.text = year[indexForTheTextOfButtonYear3]
    }
    
    
    
    
    
    
    
    
    private func setConstraintsToView(){
//        squareForTeste.addConstraintAndConstant(with: view, centerX: 0, centerY: 0, width: 250, height: 250)
        yearSelectionButtonShadowView.addConstraintAndConstant(with: view, centerY: 0, leading: 27.5, trailing: -27.5, height: 36)
        yearSelectionButtonTextLabel.addConstraintAndConstant(with: yearSelectionButtonShadowView, centerX: 0, centerY: 0)
        yearSelectionButtonDecrease.addConstraintAndConstant(with: yearSelectionButtonShadowView, centerY: 0, leading: 27.5, width: 20, height: 36)
        yearSelectionButtonIncrease.addConstraintAndConstant(with: yearSelectionButtonShadowView, centerY: 0, trailing: -27.5, width: 20, height: 36)
        
        
        yearSelectionButtonShadowView2.addConstraintAndConstant(with: view, centerY: 100, leading: 27.5, trailing: -27.5, height: 36)
        yearSelectionButtonTextLabel2.addConstraintAndConstant(with: yearSelectionButtonShadowView2, centerX: 0, centerY: 0)
        yearSelectionButtonFirstYear.addConstraintAndConstant(with: yearSelectionButtonShadowView2, centerY: 0, leading: 27.5, width: 20, height: 36)
        yearSelectionButtonLastYear.addConstraintAndConstant(with: yearSelectionButtonShadowView2, centerY: 0, trailing: -27.5, width: 20, height: 36)
        
        yearSelectionButtonDecrease2.addConstraintAndConstant(with: yearSelectionButtonFirstYear, centerY: 0, leading: 55, width: 20, height: 36)
        yearSelectionButtonIncrease2.addConstraintAndConstant(with: yearSelectionButtonLastYear, centerY: 0, trailing: -55, width: 20, height: 36)
        
        
        
        yearSelectionButtonShadowView3.addConstraintAndConstant(with: view, centerY: 200, leading: 27.5, trailing: -27.5, height: 36)
        yearSelectionButtonTextLabel3.addConstraintAndConstant(with: yearSelectionButtonShadowView3, centerX: 0, centerY: 0)
        yearSelectionButtonFirstYear3.addConstraintAndConstant(with: yearSelectionButtonShadowView3, centerY: 0, leading: 27.5, width: 20, height: 36)
        yearSelectionButtonLastYear3.addConstraintAndConstant(with: yearSelectionButtonShadowView3, centerY: 0, trailing: -27.5, width: 20, height: 36)
        
        yearSelectionButtonDecrease3.addConstraintAndConstant(with: yearSelectionButtonFirstYear3, centerY: 0, leading: 27.5, width: 20, height: 36)
        yearSelectionButtonIncrease3.addConstraintAndConstant(with: yearSelectionButtonLastYear3, centerY: 0, trailing: -27.5, width: 20, height: 36)
        
        
        
    }
}



extension UIView {
    
    
    
    
    /**
     Receives CGFLOAT, can be a 0 (zero) or any value that you might need to set the especific constraint.
     If you need a relationship a little bit different, topAnchor of some View and bottomAnchor of another view, should use the conventional way
       - Parameters:
             - view:
             - centerXAnchor: need some kind of View and a CGFloat, 0 and negative number are allowed;
             - centerYAnchor: need some kind of View and a CGFloat, 0 and negative number are allowed;
             - topAnchor: need some kind of View and a CGFloat, 0 and negative number are allowed;
             - leadingAnchor: need some kind of View and a CGFloat, 0 and negative number are allowed;
             - leftAnchor: need some kind of View and a CGFloat, 0 and negative number are allowed;
             - bottomAnchor: need some kind of View and a CGFloat, 0 and negative number are allowed;
             - trailingAnchor: need some kind of View and a CGFloat, maybe you should insert a Negative Number
             - rightAnchor: need some kind of View and a CGFloat, maybe you should insert a Negative Number
             - widthAnchor: a CGFloat, doesn't need a View
             - heightAnchor: a CGFloat, doesn't need a View
             - firstBaselineAnchor: TODO
             - lastBaselineAnchor:  TODO
       - Returns: a collection" of constraints.
    */
    func addConstraintAndConstant(with view: UIView? = nil,
                                  centerX: CGFloat? = nil, centerY: CGFloat? = nil,
                                  top: CGFloat? = nil, bottom: CGFloat? = nil,
                                  leading: CGFloat? = nil, left: CGFloat? = nil,
                                  trailing: CGFloat? = nil, right: CGFloat? = nil,
                                  width: CGFloat? = nil, height: CGFloat? = nil
//                                  firstBaseline: CGFloat? = nil, lastBaseline: CGFloat? = nil
                                ) {
        var countConstraintAdded: Int = 0
        
        if translatesAutoresizingMaskIntoConstraints != false{
            translatesAutoresizingMaskIntoConstraints = false
        }
        
        if let viewArgs = view {
            if let centerXArgs = centerX {
                centerXAnchor.constraint(equalTo: viewArgs.centerXAnchor, constant: centerXArgs).isActive = true
                countConstraintAdded += 1
            }
            
            if let centerYArgs = centerY {
                centerYAnchor.constraint(equalTo: viewArgs.centerYAnchor, constant: centerYArgs).isActive = true
                countConstraintAdded += 1
            }
            
            if let topArgs = top {
                topAnchor.constraint(equalTo: viewArgs.topAnchor, constant: topArgs).isActive = true
                countConstraintAdded += 1
            }
            
            if let bottomArgs = bottom {
                bottomAnchor.constraint(equalTo: viewArgs.bottomAnchor, constant: bottomArgs).isActive = true
                countConstraintAdded += 1
            }
            
            if let leadingArgs = leading {
                leadingAnchor.constraint(equalTo: viewArgs.leadingAnchor, constant: leadingArgs).isActive = true
                countConstraintAdded += 1
            }
            
            if let leftArgs = left {
                leftAnchor.constraint(equalTo: viewArgs.leftAnchor, constant: leftArgs).isActive = true
                countConstraintAdded += 1
            }
            
            if let trailingArgs = trailing {
                trailingAnchor.constraint(equalTo: viewArgs.trailingAnchor, constant: trailingArgs).isActive = true
                countConstraintAdded += 1
            }
            
            if let rightArgs = right {
                rightAnchor.constraint(equalTo: viewArgs.rightAnchor, constant: rightArgs).isActive = true
                countConstraintAdded += 1
            }
            
            //Check if there is a constraint and a view in the parameters
            if countConstraintAdded == 0{
                print("\tError! \nYou passed some kind of View, but you should also\npass at least one type of constraint.")
                return
            }
            
        } else {
            if (centerX != nil || centerY != nil || top != nil || bottom != nil || leading != nil || left != nil || trailing != nil || right != nil) {
                print("\tError! \nYou passed a kind of Constraintt, \nbut you should also pass a View.")
                return
            }
        }
        
        if let widthArgs = width {
            widthAnchor.constraint(equalToConstant: widthArgs).isActive = true
            countConstraintAdded += 1
        }
        
        if let heightArgs = height {
            heightAnchor.constraint(equalToConstant: heightArgs).isActive = true
            countConstraintAdded += 1
        }
        
        
        //Check if there is a constraint and a view in the parameters
        if countConstraintAdded == 0{
            print("\tError! \nYou got to pass at least one type of constraint and \nmaybe a View, depending on the type of constraint.")
        }
        
    }


}

extension NSLayoutConstraint {
    
    /// Returns the constraint sender with the passed priority.
    ///
    /// - Parameter priority: The priority to be set.
    /// - Returns: The sended constraint adjusted with the new priority.
    func usingPriority(_ priority: UILayoutPriority) -> NSLayoutConstraint {
        self.priority = priority
        return self
    }
}

extension UILayoutPriority {
    
    /// Creates a priority which is almost required, but not 100%.
    static var almostRequired: UILayoutPriority {
        return UILayoutPriority(rawValue: 999)
    }
    
    /// Creates a priority which is not required at all.
    static var notRequired: UILayoutPriority {
        return UILayoutPriority(rawValue: 0)
    }
}

