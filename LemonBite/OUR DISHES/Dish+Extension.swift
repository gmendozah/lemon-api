import Foundation
import CoreData


extension Dish {

    static func exists(name: String, _ context: NSManagedObjectContext) -> Bool {
        let request = Dish.fetchRequest()
        request.predicate = NSPredicate(format: "name == %@", name)
        do {
            let count = try context.count(for: request)
            return count > 0
        } catch {
            return false
        }
    }

    static func createDishesFrom(menuItems:[MenuItem],
                                 _ context:NSManagedObjectContext) {
        for menuItem in menuItems {
            if !exists(name: menuItem.title, context) {
                let dish = Dish(context: context)
                dish.name = menuItem.title
                if let price = Float(menuItem.price) {
                    dish.price = price
                }
            }
        }
    }
    
}
