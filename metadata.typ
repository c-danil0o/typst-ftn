#let format_strane = "iso-b5"         // могуће вредности: iso-b5, a4
#let naslov = "Дизајн и имплементација система за управљање теретанама"
#let autor = "Данило Цвијетић"

// На енглеском
#let naslov_eng = "Design and Implementation of a Gym Management System"
#let autor_eng = "Danilo Cvijetić"

#let indeks = "SV25/2021"

// Име и презиме ментора
#let mentor = "Игор Дејановић"
// Звање: редовни професор, ванредни професор, доцент
#let mentor_zvanje = "редовни професор"

// Скинути коментаре са одговарајућих линија
#let studijski_program = "Софтверско инжењерство и информационе технологије"
//#let studijski_program = "Рачунарство и аутоматика"
// #let stepen = "Мастер академске студије"
#let stepen = "Основне академске студије"

#let godina = [#datetime.today().year()]

// FIXME: Аутоматизовати бројање цитата и прилога
// За сада унети ручно број референци из поглавља Литература.
#let broj_citata = 18
// Такође унети ручно и број прилога.
#let broj_priloga = 2

// Попунити кључне речи и апстракт и не српском и на енглеском!
#let kljucne_reci = "Шаблон, завршни рад, упутство"
#let apstrakt = [
     Овај документ представља упутство за писање завршних радова на Факултету
     техничких наука Универзитета у Новом Саду. У исто време је и шаблон за Typst.
]

// На енглеском
#let kljucne_reci_eng = "Template, thesis, tutorial"
#let apstrakt_eng = [
     This document provides guidelines for writing final theses at the Faculty
     of Technical Sciences, University of Novi Sad. At the same time, it serves
     as a Typst template.
]

// TODO: Текст задатка добијате од ментора. Заменити доле #lorem(100) са текстом задатка.
#let zadatak = [
    Дизајнирати и имплементирати систем за управљање теретанама. Систем треба да
    буде реализован као десктоп апликација која омогућава рад без интернет
    конекције. Такође, треба имплементирати мобилну апликацију за кориснике теретане
    која ће податке преузимати из онлајн базе која се аутоматски синхронизује са
    радном базом десктоп апликације.

    У изради користити препоручену праксу из области софтверског инжењерства.
    Детаљно документовати решење.
]

// Одбрана
#let datum_odbrane = "27.10.2025"
// Комисија
#let komisija_predsednik = "Бранко Милосављевић"
#let komisija_predsednik_zvanje = "редовни професор"
#let komisija_clan = "Мирослав Зарић"
#let komisija_clan_zvanje = "редовни професор"

// На енглеском уписати чланове на латиници
#let komisija_predsednik_eng = "Branko Milosavljević"
#let komisija_clan_eng = "Miroslav Zarić"
#let mentor_eng = "Igor Dejanović"


// Ово даље углавном не треба мењати.

#let zvanje_eng = (
     "редовни професор": "full professor",
     "ванредни професор": "assoc. professor",
     "доцент": "asist. professor",
)
#let komisija_predsednik_zvanje_eng = zvanje_eng.at(komisija_predsednik_zvanje)
#let komisija_clan_zvanje_eng = zvanje_eng.at(komisija_clan_zvanje)
#let mentor_zvanje_eng = zvanje_eng.at(mentor_zvanje)


#let vrsta_rada = if stepen == "Мастер академске студије" {
    "Дипломски - мастер рад"
} else {
    "Дипломски - бечелор рад"
}

#let oblast = "Електротехничко и рачунарско инжењерство"
#let oblast_eng = "Electrical and Computer Engineering"
#let disciplina = "Примењене рачунарске науке и информатика"
#let disciplina_eng = "Applied computer science and informatics"

#import "funkcije.typ": *
// Поглавља/страна/цитата/табела/слика/графика/прилога
#let fizicki_opis = physical(broj_citata, broj_priloga)
