import Foundation


/// **Funciones**

print("Welcome to my app!")
print("By default This prints out a conversion")
print("chart from centimeters to inches, but you")
print("can also set a custom range if you want.")

 // de este modo podemo hacer una funcion con el codigo de arriba.
func showWelcome() {
    print("Welcome to my app!")
    print("By default This prints out a conversion")
    print("chart from centimeters to inches, but you")
    print("can also set a custom range if you want.")
}

/*Vamos a desglosar eso...
 
 1.Comienza con la palabra clave func, que marca el inicio de una función.
 2.Estamos nombrando la función showWelcome. Este puede ser cualquier nombre que quieras, pero trata de hacerlo memorable: printInstructions(), displayHelp(), etc. son buenas opciones.
 3.El cuerpo de la función está contenido dentro de las llaves abiertas y cerradas, al igual que el cuerpo de bucles y el cuerpo de condiciones.*/

showWelcome()

let number = 139

if number.isMultiple(of: 2) {
    print("Even")
} else {
    print("Odd")
}


let roll = Int.random(in: 1...20)

//Podemos hacer nuestras propias funciones que estén abiertas a la configuración, todo poniendo código adicional entre los paréntesis cuando creamos nuestra función. A esto se le debe dar un solo número entero, como 8, y calcular las tablas de multiplicación para el del 1 al 12.
func printTimesTables(number: Int) {
    for i in 1...12 {
        print("\(i) x \(number) is \(i * number)")
    }
}

printTimesTables(number: 5)

//Esta denominación de parámetros se vuelve aún más importante cuando tienes varios parámetros. Por ejemplo, si quisiéramos personalizar lo alto que fueron nuestras tablas de multiplicar, podríamos hacer que el final de nuestro rango se establezca utilizando un segundo parámetro, como este.
func printTimeTables(number: Int, end: Int) {
    for i in 1...end {
        print("\(i) x \(number) is \(i * number)")
    }
}

printTimeTables(number: 5, end: 20)

//Ahora eso toma dos parámetros: un entero llamado número y un punto final llamado final. Ambos deben nombrarse específicamente cuando se ejecuta printTimesTables(), y espero que puedas ver ahora por qué son importantes.

//La función sqrt() acepta un parámetro, que es el número del que queremos calcular la raíz cuadrada, y seguirá adelante y hará el trabajo y luego devolverá la raíz cuadrada.
let root = sqrt(169)
print(root)


/*Si quieres devolver tu propio valor de una función, tienes que hacer dos cosas:
 
 1.Escriba una flecha y luego un tipo de datos antes de la llave de apertura de su función, que le dice a Swift qué tipo de datos se devolverán.
 2.Utilice la palabra clave 'return' para devolver sus datos.*/

//Por ejemplo, tal vez quieras tirar un dado en varias partes de tu programa, pero en lugar de forzar siempre la tirada de dados a usar un dado de 6 lados, podrías convertirlo en una función.
func rollDice() -> Int {
    return Int.random(in: 1...6)
}

let result = rollDice()
print(result)

func areLettersIdentical(string1: String, string2: String) -> Bool {
    let first = string1.sorted()
    let second = string2.sorted()
    return first == second
}

// este codigo hace lo mismo que el de arriba pero mas optimizado.
func areLettersIdentical2(string1: String, string2: String) -> Bool {
    return string1.sorted() == string2.sorted()
}

//Eso es menos código, pero podemos hacerlo aún mejor. Verás, le hemos dicho a Swift que esta función debe devolver un booleano, y debido a que solo hay una línea de código en la función, Swift sabe que es la que debe devolver datos. Debido a esto, cuando una función tiene solo una línea de código, podemos eliminar la palabra clave de retorno por completo, así:⬇️
func areLettersIndentical3(string1: String, string2: String) -> Bool {
    string1.sorted() == string2.sorted()
}

//También podemos volver atrás y hacer lo mismo con la función rollDice().
func rollDice2() -> Int {
    Int.random(in: 1...6)
}

//Vamos a probar un tercer ejemplo. ¿Recuerdas el teorema de Pitágoras de la escuela? Establece que si tienes un triángulo con un ángulo recto en el interior, puedes calcular la longitud de la hipotenusa cuadrando ambos lados, sumándolos y luego calculando la raíz cuadrada del resultado.

//Ya hemos aprendido a usar sqrt(), para que podamos construir una función pythagoras() que acepte dos números decimales y devuelva otro, lo hacemos asi:

func pythagoras(a: Double, b: Double) -> Double {
    let input = a * a + b * b
    let root = sqrt(input)
    return root
}

let c = pythagoras(a: 3, b: 4)
print(c)
//Por lo tanto, esa es una función llamada pythagoras(), que acepta dos parámetros 'Double' y devuelve otro 'Double'. En su interior, cuadra a y b, los suma, luego los pasa a sqrt() y devuelve el resultado.


//Esa función también se puede reducir a una sola línea y eliminar su palabra clave return.

func pythagoras2(a: Double, b: Double) {
    sqrt(a * a + b * b)
}


//Cuando desea devolver un solo valor de una función, escribe una flecha y un tipo de datos antes de la llave de apertura de su función, de la siguiente manera:
func isUppercase(string: String) -> Bool {
    string == string.uppercased()
}

//Si quieres devolver dos o más valores de una función, podrías usar una matriz. Por ejemplo, aquí hay uno que devuelve los detalles de un usuario.
func getUser() -> [String] {
    ["Taylor", "Swift"]
}

let user = getUser()
print("Name: \(user[0]) \(user[1])")


//Podríamos usar un diccionario en su lugar, pero eso tiene sus propios problemas:
func getUser2() -> [String: String] {
    ["firstName": "Taylor", "lastName": "Swift"]
}


let user2 = getUser2()
print("Name: \(user2["firstName", default: "Anonymous"]) \(user2)")

//Ambas soluciones son bastante malas, pero Swift tiene una solución en forma de tuplas. Al igual que las matrices, los diccionarios y los conjuntos, las tuplas nos permiten poner múltiples piezas de datos en una sola variable, pero a diferencia de esas otras opciones, las tuplas tienen un tamaño fijo y pueden tener una variedad de tipos de datos.


//Así es como se ve nuestra función cuando devuelve una tupla:
func getUser3() -> (fisrtName3: String, lastName3: String) {
    (fisrtName3: "Taylor", lastName3: "Swift")
}

let user3 = getUser3()
print("Name: \(user3.fisrtName3) \(user3.lastName3)")


/*Hay otras tres cosas que es importante saber cuando se usan tuplas.

En primer lugar, si devuelves una tupla de una función, Swift ya sabe los nombres que le das a cada elemento de la tupla, por lo que no necesitas repetirlos cuando uses return. Por lo tanto, este código hace lo mismo que nuestra tupla anterior.*/
func getUser4() -> (firstName4)
