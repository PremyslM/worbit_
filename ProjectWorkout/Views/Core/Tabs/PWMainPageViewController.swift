//
//  PWMainPageView.swift
//  ProjectWorkout
//
//  Created by Přemysl Mikulenka on 24.05.2023.
//

import UIKit

// TODO: - Create a ViewController from this UIView PWMAinPageView
/// This PWProgrammaticUIView class represents One of futere pages that will be loaded in ViewController to display them.
final class PWMainPageViewController: UIViewController {
    
    let vc = PWMainPageViewModel()
    
    private lazy var infoContainer: PWPrimaryContainerView = {
        let _infoContainer = PWPrimaryContainerView()
        _infoContainer.layer.cornerRadius = 16
        _infoContainer.backgroundColor = .theme.lightGray?.withAlphaComponent(0.25)
        return _infoContainer
    }()
    
    private lazy var activityStatsView: PWActivityStatsView = {
        let _activityStatsView = PWActivityStatsView()
        
        return _activityStatsView
    }()
    
    private lazy var progressStackView: PWProgressBarStackView = PWProgressBarStackView()    
    
    
    // REdesign views
    private lazy var dailyProgressBarView: PWProgressBarView = PWProgressBarView()
    private lazy var quoteBlockView: PWQuoteBlockView = PWQuoteBlockView()
    private lazy var timelineView: WOTimelineView = WOTimelineView()
    
    
    override func loadView() {
        super.loadView()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
                        
        setConfig()
        setConstraints()
        
        infoContainer.setActivity(activity: vc.activity)
    }
            
        
}


private extension PWMainPageViewController {
    
    func setConfig() {
        dailyProgressBarView.setContent(Constants.Title.dailyProgress, value: 0.4)
        dailyProgressBarView.delegate = self
        
        self.view.addConstrainedSubViews(dailyProgressBarView, quoteBlockView, timelineView)
    }
    
    func setConstraints() {
        NSLayoutConstraint.activate([
            dailyProgressBarView.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: 20),
            dailyProgressBarView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 20),
            dailyProgressBarView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -20),
            
            quoteBlockView.topAnchor.constraint(equalTo: dailyProgressBarView.bottomAnchor, constant: 200), // TODO: Issue #45
            quoteBlockView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 20),
            quoteBlockView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -20),
            
            timelineView.topAnchor.constraint(equalTo: quoteBlockView.bottomAnchor, constant: 20),
            timelineView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 20),
            timelineView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -20),
            //timelineView.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor),
        ])
        
    }
            
    
}


extension PWMainPageViewController: PWProgressBarViewDataSource {
    
    func setProgressValue() -> Float {
        return 0.5
    }
    
    
}
