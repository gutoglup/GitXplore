//
//  String+Extension.swift
//  GitXplore
//
//  Created by Augusto Cesar do Nascimento dos Reis on 14/12/20.
//

import Foundation

extension String {
    var dateIso8601: Date? {
        return self.date(withFormat: "yyyy-MM-dd'T'HH:mm:ssZ")
    }
}
