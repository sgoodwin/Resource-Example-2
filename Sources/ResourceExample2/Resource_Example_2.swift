import CoreData

class LongTermStorage {
    let context: NSManagedObjectContext
    
    init(context: NSManagedObjectContext) {
        self.context = context
    }
    
    func totalCount() -> Int {
        return try! context.count(for: Entry.fetchRequest())
    }
    
    func addOne() {
        let entry = Entry(context: context)
        entry.timestamp = Date()
        try! context.save()
    }
}
