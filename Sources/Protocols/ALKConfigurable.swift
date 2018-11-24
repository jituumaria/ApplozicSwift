//
//  ALKConfigurable.swift
//  ApplozicSwift
//
//  Created by Mukesh Thawani on 13/06/18.
//

import Foundation

public protocol ALKConfigurable {

    /// If enabled then tapping on navigation bar in
    /// conversation view will open the group detail screen.
    /// - NOTE: Only works in case of groups.
    var isTapOnNavigationBarEnabled: Bool { get set }
    
    /// If enabled then tapping on the user's profile
    /// icon in group chat will open a thread with that user.
    /// - NOTE: You will see the previous messages(if there are any).
    var isProfileTapActionEnabled: Bool { get set }
    
    /// The background color of the ALKConversationViewController.
    var backgroundColor: UIColor { get set }
    
    /// Hides the bottom line in the navigation bar.
    /// It will be hidden in all the ViewControllers where
    /// navigation bar is visible. Default value is true.
    var hideNavigationBarBottomLine: Bool { get set }
    
    /// Navigation bar's background color. It will be used in all the
    /// ViewControllers where navigation bar is visible.
    var navigationBarBackgroundColor: UIColor { get set }
    
    /// Navigation bar's tint color. It will be used in all the
    /// ViewControllers where navigation bar is visible.
    var navigationBarItemColor: UIColor { get set }
    
    /// ChatBar's bottom view color. This is the view which contains
    /// all the attachment and other options.
    var chatBarAttachmentViewBackgroundColor: UIColor { get set }
    
    /// If true then all the media options in Chat bar will be hidden.
    var hideAllOptionsInChatBar: Bool { get set }
    
    /// If true then audio option in chat bar will be hidden.
    var hideAudioOptionInChatBar: Bool { get set }
    
    /// If true then the start new chat button will be hidden.
    var hideStartChatButton: Bool { get set }
    
    /// Pass the name of Localizable Strings file
    var localizedStringFileName: String  { get set }
    
    /// Send message icon in chat bar.
    var sendMessageIcon: UIImage? { get set }
    
    /// Image for navigation bar right side icon in conversation view.
    var rightNavBarImageForConversationView: UIImage?  { get set }
    
    /// System icon for right side navigation bar in conversation view.
    var rightNavBarSystemIconForConversationView: UIBarButtonItem.SystemItem  { get set }
    
    /// If true then right side navigation icon in conversation view will be hidden.
    var hideRightNavBarButtonForConversationView: Bool { get set }
    
    /// conversationlist view navigation icon for right side.
    /// By default, create group icon image will be used.
    var rightNavBarImageForConversationListView: UIImage? { get set }
    
    /// If true then click action on navigation icon in conversation list view will be handled from outside
    var handleNavIconClickOnConversationListView: Bool { get set }
    
    /// Notification name for navigation icon click in conversation list
    var nsNotificationNameForNavIconClick: String { get set }
    
    /// If true then line between send button and text view will be hidden.
    var hideLineImageFromChatBar: Bool { get set }
    
    /// If true then typing status will show user names.
    var showNameWhenUserTypesInGroup: Bool { get set }
    
}
