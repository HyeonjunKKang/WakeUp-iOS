//
//  AgoraRtcEngineDelegateProxy.swift
//  MeetingFeature
//
//  Created by 강현준 on 2023/09/04.
//  Copyright © 2023 WakeUp. All rights reserved.
//

import AgoraRtcKit
import Foundation
import RxCocoa
import RxSwift

extension AgoraRtcEngineKit: HasDelegate {
    public typealias Delegate = AgoraRtcEngineDelegate
}

class AgoraRtcEngineDelegateProxy: DelegateProxy<AgoraRtcEngineKit, AgoraRtcEngineDelegate>, DelegateProxyType {
    
    private(set) weak var engineKit: AgoraRtcEngineKit?

    let didJoinChannelSubject = PublishSubject<(channel: String, uid: UInt)>()
    let didLeaveChannelSubject = PublishSubject<AgoraChannelStats>()
    let didOccurErrorSubject = PublishSubject<AgoraErrorCode>()

    deinit {
        didJoinChannelSubject.onCompleted()
        didLeaveChannelSubject.onCompleted()
        didOccurErrorSubject.onCompleted()
    }

    init(engineKit: ParentObject) {
        self.engineKit = engineKit
        super.init(parentObject: engineKit, delegateProxy: AgoraRtcEngineDelegateProxy.self)
    }

    static func registerKnownImplementations() {
        register { AgoraRtcEngineDelegateProxy(engineKit: $0) }
    }
}

extension AgoraRtcEngineDelegateProxy: AgoraRtcEngineDelegate {
    
    func rtcEngine(_ engine: AgoraRtcEngineKit, didJoinChannel channel: String, withUid uid: UInt, elapsed: Int) {
        didJoinChannelSubject.onNext((channel: channel, uid: uid))
    }

    func rtcEngine(_ engine: AgoraRtcEngineKit, didLeaveChannelWith stats: AgoraChannelStats) {
        didLeaveChannelSubject.onNext(stats)
    }

    func rtcEngine(_ engine: AgoraRtcEngineKit, didOccurError errorCode: AgoraErrorCode) {
        if errorCode.rawValue != 0 {
            didOccurErrorSubject.onNext(errorCode)
        }
    }
}
