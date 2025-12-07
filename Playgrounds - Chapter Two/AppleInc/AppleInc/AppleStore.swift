//
//  AppleStore.swift
//  AppleInc
//
//  Created by Paul Denlinger on 12/6/25.
//

public enum DeviceModel {
    case iPhone13
    case iPhone13Mini
    case iPhone13Pro
    case iPhone13ProMax
}

public class AppleiPhone {
    
    public let model: DeviceModel
    
    fileprivate init(model: DeviceModel) {
        self.model = model
    }
}

filePrivate class Factory {
    func makeiPhone(model: DeviceModel) -> AppleiPhone {
        return AppleiPhone(model: model)
    }
}

public class AppleStore {
    
    private var factory =  Factory()
    
    public func selliPhone(ofModel model: DeviceModel) -> AppleiPhone {
        return factory.makeiPhone(ofModel: model)
    }
}

