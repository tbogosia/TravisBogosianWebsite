import Vapor

/// Register your application's routes here.
public func routes(_ router: Router) throws {

    router.get() { req in
        return try req.view().render("home")
    }

    router.get("json") { req in
        return Person(name: "Travis Bogosian", age: 27)
    }

}

struct Person: Content {
    var name: String
    var age: Int
}
