//
//  Dog.swift
//  Dog Data


import Foundation
import RealmSwift

class Dog: Object {
    
    static let instance = Dog()
    private var namePrivate = ""
    private var agePrivate = 0
    
    
    dynamic var name: String  {
        return namePrivate
    }
    
    dynamic var age: Int {
        return agePrivate
    }
    
    required init() {
        super.init()
    }
    
    init(name: String, age: Int) {
        super.init()
        self.namePrivate = name
        self.agePrivate = age
    }


    func createItem(item: Dog) {
        do {
            
            let realm = try Realm()
            try realm.write {
                realm.add(item)
            }
        } catch {}
    }
    
    
    func deleteItem(item: Dog) {
        do {
            
            let realm = try Realm()
            try realm.write {
                realm.delete(item)
            }
        } catch {}
    }
    
    
}