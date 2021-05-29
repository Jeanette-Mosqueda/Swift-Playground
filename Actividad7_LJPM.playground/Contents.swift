import UIKit
/*:
# Playground - Actividad 7
* Valor por tipo y por referencia
* Funciones personalizadas Y Genericos
* Funciones de la biblioteca Swift para Arreglos
*/


/*:
### Valor por tipo y por referencia
A) Para la colección "var costo_referencia:[Float] = [8.3,10.5,9.9]", aplicar el impuesto del 16% a través de recorrer la colección "costo_referencia" para aplicar el impuesto a cada cantidad, crear una función Impuesto que recibe como parámetro la colección y regrese aplicado el impuesto a cada cantidad.
*/
var costo_referencia:[Float] = [8.3,10.5,9.9]
var indice:Int = 0
for i in costo_referencia
{
    costo_referencia[indice] = i*0.16
    indice += 1
}
costo_referencia
func Impuesto(arreglo:[Float]) -> [Float]
{
    var result:[Float]=[]
    for i in arreglo
    {
        result.append(i + (i*16))
    }
    return result
}
Impuesto(arreglo:costo_referencia)
costo_referencia

/*:
### Funciones personalizadas y Genéricos

 
 A) Generics: Crear la función genérica para intercambiar valores entre dos variables del mismo tipo.
*/
let Suma = {(x:Int, y:Int)-> Int in return x+y}
Suma(3,3)

func SumaTres(a:Int,b:Int,c:Int) -> Int
{
    return Suma (a,b) + c
}

SumaTres(a: 3, b: 6, c: 2)
//: B) Función personalizada: Crear la función "Transformar" que reciba como parámetro una colección de tipo Int  "var datos = [3,7,9,2]" y una función que transforme cada valor de la coleción en una operación definida fuera de la función, regresando una colección transformada.
extension Array
{
    func SAcumulado<T> (inicial:T, acumula:(T, Element)->T)->T
    {
        var res:T = inicial
        for val in self
        {
            res = acumula(res,val)
        }
        return res
    }
}

/*:
### Biblioteca de Swift
A) Aplicar la función de librería de Swift "map" para la colección var precios = [4.2, 5.3, 8.2, 4.5] y aplicar el impuesto de 16% y asignarla a la variable "impuesto"
*/


//: B) Aplicar la función de la librería de Swift "filter" para la colección resultante "impuesto" del paso A, en donde se obtengas solo los precios mayores a 6.0 y asignarlos a la variable "precio_menor"
let datos = [3,4,5,6,1,0]
var sumados = datos.map{a in return a + 2}

var precios = [4.2,5.3,8.2,4.5]
var masiva = precios.map{a in return a + (a * 0.16)}
sumados
masiva

var filtro = datos.filter{ a in a > 3}
filtro

var filtrodos = masiva.filter{ a in a > 6.0}
filtrodos

var acumulado = datos.reduce(0){(a,b) in a + b}
acumulado

var orden = datos.sorted{(a,b)-> Bool in a > b}
orden

var filtroAcumulado = datos.map{a in a * 2}.filter{a in a > 3}.reduce(0){(a,b) in a + b}
filtroAcumulado






