//
//  ALKPaymentModel.swift
//  ApplozicSwift
//
//  Created by Sunil on 16/01/18.
//

import Foundation


open class ALKPaymentModel: NSObject{

open var usersRequested: NSMutableArray?


open var userId: String?
open var groupId: NSNumber?
open var messageKey: String?

/// Text to display.
open var paymentType: String?

open var paymentAmount: String?

open var paymentSubject: String?


open var cancelFlag: Bool = false
}