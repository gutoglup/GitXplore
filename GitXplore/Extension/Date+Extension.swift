//
//  Date+Extension.swift
//  GitXplore
//
//  Created by Augusto Cesar do Nascimento dos Reis on 15/12/20.
//

import Foundation

extension Date {
    var dayMonthYearHourMinute: String? {
        return self.string(withFormat: "dd/MM/yyyy HH:mm")
    }
}
