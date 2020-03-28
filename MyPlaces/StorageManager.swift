//
//  StorageManager.swift
//  MyPlaces
//
//  Created by ADMIN on 28/03/2020.
//  Copyright © 2020 ADMIN. All rights reserved.
//

import RealmSwift

let realm = try! Realm ()

class StorageManager {
    static func saveObject(_ place: Place) {
        try! realm.write {
            realm.add(place)
        }
    }
}
