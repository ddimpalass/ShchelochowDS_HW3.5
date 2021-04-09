//
//  ModelView.swift
//  ShchelochowDS_HW3.5
//
//  Created by Apple on 08.04.2021.
//

import Foundation

class DataManager {
    static func createContactList() -> [Person] {
        var persons: [Person] = []
        
        let nameArray = ["Петя",
                         "Вася",
                         "Лиза",
                         "Инна",
                         "Егор",
                         "Стас",
                         "Катя",
                         "Света",
                         "Миша",
                         "Игорь"]
        let surnameArray = ["Завъялов(а)",
                            "Зайцев(а)",
                            "Суспицин(а)",
                            "Фролов(а)",
                            "Яйкин(а)",
                            "Кузнецов(а)",
                            "Климов(а)",
                            "Дружинин(а)",
                            "Петров(а)",
                            "Прохоров(а)"]
        let numberArray = ["+7(916)234-32-32",
                          "+7(999)637-21-68",
                          "+7(925)274-24-11",
                          "+7(960)457-99-00",
                          "+7(916)164-36-62",
                          "+7(920)500-34-01",
                          "+7(916)896-33-43",
                          "+7(926)254-85-23",
                          "+7(916)964-43-86",
                          "+7(917)567-98-30"]
        let emailArray = ["cat666@ya.ru",
                          "gender@mail.ru",
                          "slicer67@yahoo.com",
                          "12boss@inbox.ru",
                          "Pro100@mail.ru",
                          "MyMail@yandex.ru",
                          "Cheba1987@gmail.ru",
                          "3211230@gmail.com",
                          "secretName@yandex.ru",
                          "love100@mail.ru"]
        
        let nameArrayShuffled = nameArray.shuffled()
        let surnameArrayShuffled = surnameArray.shuffled()
        let numberArrayShuffled = numberArray.shuffled()
        let emailArrayShuffled = emailArray.shuffled()
        
        for index in 0..<nameArray.count {
            persons.append(Person(name: nameArrayShuffled[index],
                                  surname: surnameArrayShuffled[index],
                                  number: numberArrayShuffled[index],
                                  email: emailArrayShuffled[index])
            )
        }
        
        return persons
    }
}
