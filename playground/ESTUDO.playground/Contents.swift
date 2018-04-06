//: Playground - noun: a place where people can play

import UIKit

//***********VARIAVEIS***********//
var accountValue = 250.00 //VARIAVEL
let name = "Joao Felipe" //CONSTANTE
var age: Int = 20 //VARIAVEL COM TIPO EXPLICITO
var x=0, y=1, z=12 //MULTIPLAS DECLARACOES

//***********TIPOS***********//
//Int
//UInt
//Double
//Float
//String
//Character
//Bool

let dolar: Float = 3.25
var lastName = "Alves" //String por inferencia
var month = 7 //Int por inferencia
var myAge: UInt8 = 25
var gender: Character = "M"
var latitude: Double = -23.534535
var longitude = -25.324234 //Double por inferencia

//CONCATENANDO STRINGS
var firstName = "Dani"
var lastName = "Alves"
var fullName = firstName + " " + lastName

//INTERPOLACAO DE STRINGS
var name = "\(firstName) \(lastName)"

//***********TIPOS COMPOSTOS***********//
//TUPLAS
var address: (String, Int, String) = ("Av. Paulista", 1000, "01310-000")

//TUPLA COM ELEMENTOS NOMEADOS
var student: (name: String, age: Int, grade: Double) = ("Paulo Filho", 33, 10.0)

//ACESSANDO UMA TUPLA PELA LOCALIZACAO DO ELEMENTO
print("O cep da fiap paulista eh \(address.2)")

//ACESSANDO UMA TUPLA PELO NOME DO ELEMENTO
print("A nota do \(student.name) foi \(student.grade)")

//DECOMPONDO UMA TUPLA EM VARIAVEIS")
let (street, numberm, zipcode) = address
print("Fiap: \(street) numero \(number), cep: \(zipcode)")

//SE NAO DESEJARMOS ALGUM DOS ELEMENTOS, USAMOS _
let (name, _, grade) = student

//***********OPTIONAL***********//

//OPTIONAL DE STRING COM VALOR NULO
var address: String?

//ATRIBUINDO VALOR A UM OPTIONAL
address = "Meu endereco"

//RECUPERANDO VALOR DE UM OPTIONAL (FORMA NAO EH SEGURA)
var totalBooks: Int? = 14
var newTotal = totalBooks! + 1 // Usamos o ! ao lado da variavel

//OPTIONAL BINDING: TESTANDO O VALOR DE UM OPTIONAL
// E ATRIBUINDO A UMA VARIAVEL DE MANEIRA SEGURA
if let totalBooksValue = totalBooks {
    print("Eu tenho \(totalBooks)")
}else{
    print("totalBook nao contem valor")
}

//OPTIONAL COM ABERTURA IMPLICITA (IMPLICITY UNWRAPPED OPTIONAL)
var euro: Double! = 3.95
var ticket: Double = 800.0
let ticketInReal = ticket * euro


//***********OPERADORES***********//
/*
§ Atribuição: =
§ Aritméticos: +, -, *, /, % (módulo)
§ Compostos: +=, -=, *=, /=, %=
§ Lógicos: &&, ||, ! (negação)
§ Comparação: >, <, >=, <=, ==, !=
§ Identidade (usado em classes): ===, !===
§ Ternário: (booleano) ? “resultado true” : “resultado false” § Coalescência nula: valor1 ?? Valor2
§ Closed Range: 1...100
§ Half-Open Range: 1..<100
*/

//***********ENUM***********//
enum CompassPoint {
    case north
    case south
    case east
    case west
}

//***********STRUCT***********//
struct Resolution {
    var width = 0
    var height = 0
}
class VideoMode {
    var resolution = Resolution()
    var interlaced = false
    var frameRate = 0.0
    var name: String?
}

//***********IF/ELSE***********//

let grade = 7.0
if grade >= 7.0{
    print("Aprovado")
}else{
    print("Reprovado")
}

//***********SWITCH***********//
var letter = "O", letterType =""
switch letter.lowercased() {
case "a","e","i","o","u":
    letterType = "vogal"
default:
    letterType = "consoante"
}

//***********WHILE***********//
var count = 1
while count <= 15{
    print("count is \(count)")
    count += 1
}

//***********FOR***********//
let names = ["Paulo", "Maria", "Joao", "Carla", "Felipe"]

//ARRAYS
for name in names {
    print("Nome: ", name)
}

//USANDO RANGE
for index in 1...5{
    print("\(index) multiplicado por 5 eh \(index * 5)")
}













