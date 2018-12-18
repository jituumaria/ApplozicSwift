//
//  Message+Style.swift
//  ApplozicSwift
//
//  Created by Mukesh Thawani on 04/05/17.
//  Copyright © 2017 Applozic. All rights reserved.
//

import Foundation
public enum ALKMessageStyle {

    public static var displayName = Style(
        font: UIFont.font(.normal(size: 14)),
        text: .text(.gray9B)
    )

    //customfix
//    public static var message = Style(
//        font: UIFont.font(.normal(size: 14)),
//        text: .text(.black00)
//    )

    public static var sentMessage = Style(
        font: UIFont.font(.normal(size: 14)),
        text: .text(.black00)
    )
    
    public static var recievedMessage = Style(
        font: UIFont.font(.normal(size: 14)),
        text: .white
    )
    
    public static var defaultMessage = Style(
        font: UIFont.font(.normal(size: 14)),
        text: .text(.black00)
    )
    //end
    
    public static var playTime = Style(
        font: UIFont.font(.normal(size: 16)),
        text: .text(.black00)
    )

    public static var time = Style(
        font: UIFont.font(.italic(size: 12)),
        text: .text(.grayCC)
    )

    public enum BubbleStyle {
        case edge
        case round
    }

    public struct Bubble {

        /// Message bubble's background color.
        public var color: UIColor

        /// BubbleStyle of the message bubble.
        public var style: BubbleStyle

        /// Width padding which will be used for message view's
        /// right and left padding.
        public let widthPadding: Float

        public init(color: UIColor, style: BubbleStyle) {
            self.color = color
            self.style = style
            self.widthPadding = 10.0
        }
    }

    //customfix
//    public static var sentBubble = Bubble(color: UIColor(netHex: 0xF1F0F0), style: .edge)
//    public static var receivedBubble = Bubble(color: UIColor(netHex: 0xF1F0F0), style: .edge)
    public static var sentBubble = Bubble(color: UIColor(hexString: "#fff"), style: .edge)
    public static var receivedBubble = Bubble(color: UIColor(hexString: "#0181ca"), style: .edge)
    //end
}
