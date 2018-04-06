import Foundation

func sum(a: Int, b: Int) -> Int{
    return a+b
}
func multiply(a: Int, b: Int) -> Int{
    return a*b
}
func divide(a: Int, b: Int) -> Int{
    return a/b
}
func substract(a: Int, b: Int) -> Int{
    return a-b
}

//Devolvendo funcoes como retorno de uma funcao

func getOperation(named operation: String) -> (Int, Int) -> Int{
    switch operation {
    case "sum":
        return sum
    case "divide":
        return divide
    case "substract":
        return substract
    default:
        return multiply
    }
}

let operation = getOperation(named: "sum")
operation(10,2)

//Recebendo funções como parametro de outra funcao

typealias Operation = (Int, Int) -> Int
func calculate(a: Int, b: Int, operation: Operation) -> Int{
    return operation(a,b)
}

calculate(a: 12, b: 3, operation: multiply)

//Clousure

//Sintaxe de uma funcao
/*
 func nome(param: tipo, param2: tipo2) -> TipoRetorno{
    //Codigo
    return TipoRetorno
 }
 */


//Sintaxe de uma Closure
/*
 {(param: tipo, param2: tipo2) -> TipoRetorno in
    //Codigo
    return TipoRetorno
 }
 */

calculate(a: 20, b: 6, operation: {(x: Int, y: Int) -> Int in
    return x % y
})

calculate(a: 20, b: 6, operation: {x, y -> Int in
    return x % y
})

calculate(a: 20, b: 6, operation: {x, y in
    return x % y
})

calculate(a: 20, b: 6, operation: {return $0 % $1})

calculate(a: 20, b: 6, operation: {$0 % $1})

calculate(a: 20, b: 6){$0 % $1}


let names: [String] = [
    "Eduardo",
    "Paulo",
    "Vilar",
    "Mariana",
    "Paloma",
    "Aristoteles",
    "Stevinho"
]
// transformando em upper case - metodo .map e .uppercased
var uppercasedNames = names.map{$0.uppercased()}

//filtrar os nomes que tenham menos de 5 ou 5 caracteres pelo metodo .fiter e .count
var names5 = names.filter{$0.count<=5}

// organizar os nomes de forma alfabetica pelo metodo .sorted
var sortedNames = names.sorted(by: <)

// organizar os nomes de forma nao alfabetica pelo metodo .sorted
var sortedNames1 = names.sorted(by: >)




// Tratamento de Erros

enum AcessError: Error{
    case wrongPassword, wrongUsername, wrongLogin
}

func login(name: String, password: String) throws -> String {
    let validName = "alunofiap"
    let validPassword = "123456"
    
    if name != validName && password != validPassword {
        throw AcessError.wrongLogin
    } else if name != validName{
        throw AcessError.wrongUsername
    } else if password != validPassword{
        throw AcessError.wrongPassword
    } else{
        return "Login efetuado com sucesso"
    }
}

do {
    let message = try login(name: "daniel", password: "123456")
    print(message)
} catch {
    switch error as! AcessError{
    case .wrongPassword:
        print("Senha invalida")
    case .wrongUsername:
        print("Usuario invalido")
    case .wrongLogin:
        print("Dados invalidos")
    }
}

// Generics

func swapValues<T>(_ a: inout T, _ b: inout T){
    let temp = a
    a = b
    b = temp
}

var x = "Vilar"
var y = "Paulo"

swapValues(&x, &y)
print(x)
print(y)







