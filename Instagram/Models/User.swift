//
//  User.swift
//  Instagram
//
//  Created by Thomas Garayua on 7/31/23.
//

import Foundation

struct User: Identifiable, Hashable, Codable {
    let id: String
    var username: String
    var profileImageUrl: String?
    var fullName: String?
    var bio: String?
    let email: String
}

extension User {
    static var MOCK_USERS: [User] = [
        .init(id: NSUUID().uuidString, username: "Superman", profileImageUrl: "Superman", fullName: "Clark Kent", bio: "Clark Joseph Kent (né Kal-El), best known by his superhero persona Superman, is a superhero in the DC Extended Universe series of films, based on the DC Comics character of the same name created by Jerry Siegel and Joe Shuster.", email: "superman@gmail.com"),
        .init(id: NSUUID().uuidString, username: "Spider-Man", profileImageUrl: "Spider-Man", fullName: "Peter Parker", bio: "Spider-Man is a superhero appearing in American comic books published by Marvel Comics. Created by writer-editor Stan Lee and artist Steve Ditko, he first appeared in the anthology comic book Amazing Fantasy #15 in the Silver Age of Comic Books.", email: "spider-man@mail.com"),
        .init(id: NSUUID().uuidString, username: "Batman", profileImageUrl: "Batman", fullName: "Bruce Wayne", bio: "Batman is a superhero appearing in American comic books published by DC Comics. The character was created by artist Bob Kane and writer Bill Finger, and debuted in the 27th issue of the comic book Detective Comics on March 30, 1939.", email: "batman@mail.com"),
        .init(id: NSUUID().uuidString, username: "Iron Man", profileImageUrl: "IronMan", fullName: "Tony Stark", bio: "Iron Man is a superhero appearing in American comic books published by Marvel Comics. Co-created by writer and editor Stan Lee, developed by scripter Larry Lieber, and designed by artists Don Heck and Jack Kirby, the character first appeared in Tales of Suspense #39, and received his own title in Iron Man #1.", email: "ironman@mail.com"),
        .init(id: NSUUID().uuidString, username: "Captain America", profileImageUrl: "CaptainAmericaHughes", fullName: "Steve Rogers", bio: "Captain America is a superhero created by Joe Simon and Jack Kirby who appears in American comic books published by Marvel Comics. The character first appeared in Captain America Comics #1, published on December 20, 1940 by Timely Comics, a corporate predecessor to Marvel.", email: "CaptainAmerica@mail.com")
    ]
}
