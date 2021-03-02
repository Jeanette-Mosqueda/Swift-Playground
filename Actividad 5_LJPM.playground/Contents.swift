import UIKit
/*:
# Playground - Actividad 5
* Class y Struct
* Extension
* Optional
*/


/*: 
### Actividad Class y Struct
A) Diseñar la clase Persona que contenga dos metodos, el primero "Saludar" que reciba el parámetro nombre y regrese el mensaje el nombre mas el texto "mucho gusto", el segundo metodo "Caminar" que reciba como parámetro un tipo de dato Int y regrese un tipo de dato String indicando el numero de pasos caminados.
*/
class Persona{
    var nombre : String, saludo=""
    var camino=0

    init(nombre:String) {
        self.nombre = nombre
    }
    func Saludar(mensaje:String){
        self.saludo = mensaje
    }
    func Caminar(pasos:Int) {
        self.camino = pasos
    }
}
var les = Persona(nombre:"Leslie")
les.Saludar(mensaje: "mucho gusto")
les.Caminar(pasos: 52)
print("Mucho gusto \(les.nombre)")
print("Caminaste \(les.camino) pasos")

//: B) Diseñar el struct "Pantalla" la cual recibirá como como parametros el ancho y alto de una pantalla como tipo de datos Int con un constructor, para inicializar la estructura.
struct Pantalla{
    var ancho:Int
    var alto:Int
    
    init(ancho:Int, alto:Int) {
        self.ancho = ancho
        self.alto = alto
    }
}
/*:
### Extensions
A) Diseñar un extensión del tipo de dato Int que represente las horas y que pueda regresar los segundos correspondientes (puedes utilizar una función o una variable computada)
*/
extension Int{
    var horas : Int{
        return self*25*60
    }
}
3.horas
//: B) Diseñar una extensión del tipo de dato String que represente un día de la semana y regrese el numero correspondiente iniciando con Domingo = 1 y finalizando Sábado = 7
extension String{
    var dias:String{
        switch self {
        case "Domingo":
            return String(1)
        case "Lunes":
            return String(2)
        case "Martes":
            return String(3)
        case "Miercoles":
            return String(4)
        case "Jueves":
            return String(5)
        case "Viernes":
            return String(6)
        case "Sabado":
            return String(7)
        default:
            return "Dia no valido"
        }
    }
}
"Domingo".dias
"Miercoles".dias
/*:
### Optionals
A) Diseñar una variable optional para recibir el tipo de dato Int en caso de que exista.
*/
var existe:Int?
//: B) Para la colección let dias = ["GDL":120, "PUE":300, "MTY":100, "CDMX":200] diseñar una variable opcional para recibir el valor de dias["DF"]
let dias = ["GDL":120, "PUE":300, "MTY":100, "CDMX":200]

existe = dias["DF"]
existe = dias["GDL"]
if dias["DF"] != nil{
    print("Si existe")
}else{
    print("No existe")
}




