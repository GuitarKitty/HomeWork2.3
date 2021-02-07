//
//  UserData.swift
//  HomeWork2.3
//
//  Created by Admin on 07.02.2021.
//

import Foundation

struct UserData {
    var userName: String
    var userPassword: String
}

struct UserGeneralInfo {
    var name: String
    var lastName: String
    var patronymic: String
    var age: Int
    var city: String
    var about: String
}

struct UserSkills {
    var majorSkill: String
    var minorSkill: String
}

struct UserWorkCompany {
    var companyName: String
    var roleInCompany: String
    var yearsInCompany: String
}

extension UserData {
    static func getUserData() ->  UserData {
        let user1Data = UserData(
            userName: "User",
            userPassword: "Password"
        )
        return user1Data
    }
}

extension UserGeneralInfo{
    static func getUserGeneralInfo() -> UserGeneralInfo{
        let user1Info = UserGeneralInfo(
            name: "Vyacheslav",
            lastName: "Efimenko",
            patronymic: "Sergeevich",
            age: 22,
            city: "Yuzhno-Sakhalinsk",
            about: "IT Project Manager"
        )
        return user1Info
    }
}

extension UserSkills{
    static func getUserSkills() -> UserSkills{
        let user1Skills = UserSkills(
            majorSkill: "I help people within the team to find a common language with each other in order to avoid loss of communication",
            minorSkill: "understand business processes and can competently manage limited resources"
        )
        return user1Skills
    }
}

extension UserWorkCompany{
    static func getUserWorkCompany() -> UserWorkCompany{
        let user1WorkCompany = UserWorkCompany(
            companyName: "MEGABERCH.COM LLS",
            roleInCompany: "IT Project Manager",
            yearsInCompany: "1 year"
        )
        return user1WorkCompany
    }
}
