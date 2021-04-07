import UIKit
import Foundation
/*:
# Playground - Actividad 6
* Operadores personalizados
* Subscripts
* Control de errores

*/


/*: 
### Operadores personalizados
A) Crear el operador para realizar la potencia de el valor "a" a la potencia "b" en valores enteros
*/
infix operator ^^
func ^^(a:Double,b:Double)->Double
{
    
    return pow(a,b)
}
5^^2
//: B) Crear el operador |> para ordenar la colección [2,5,3,4] de menor a mayor
var values=[2,5,3,4]
postfix operator |>
postfix func |> (values:[Int])->[Int]
{
     return values.sorted()
}
values|>

var newValues = values|>
/*:
### Subscripts
A) Del conjunto de datos en el Array [2,3,4,5], crear el subscript para modificar los valores multiplicados por el valor 2 y extraer al valor dado un índice.
*/
class Multiplicar{
    var valores:[Int]
    init(v:[Int]) {
        self.valores=v
    }
    subscript(index:Int)->Int{
        get{
            return valores[index]
        }
        set{
            valores[index]=valores[index]*2
        }
    }
    
}
var M = Multiplicar(v:newValues)

M[2]=2
M[0]=0
newValues
M.valores

/*:
### Control de Errores
A) Crear la función ExisteValor en la cual se reciba como parámetro el valor a buscar dentro de un colección ["A":1, "B":2,"C":3]
*/
let exiValor = ["A":1,"B":2,"C":3]
func ExisteValor(idx:String)
{
    guard let exi = exiValor[idx] else{
        print("No existe")
        return
    }
    print("existe \(exi)")
}

ExisteValor(idx:"D")
ExisteValor(idx: "A")
