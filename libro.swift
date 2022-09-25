import Foundation

class Libro: CustomStringConvertible {
    //Atributos
    var ISBN: String = ""
    var titulo: String = ""
    var autor: String = ""
    var paginas: Int = 0
    var description: String {
        return "\(titulo) de \(autor) "
    }
    //Constructor
    init(ISBN: String, titulo: String, autor: String, paginas: Int){
        self.ISBN=ISBN
        self.titulo=titulo
        self.autor=autor
        self.paginas=paginas
        
    }
    
}

//Instanciamos la clase
var libro = Libro(ISBN: "124234234-235223", titulo: "Cálculo infinitesimal de una Variable", autor: "Michael Spivak", paginas: 12314)
print(libro) //Imprime la descripción por el protocolo CustomStringConvertible
var libroref=libro
libroref.autor="J. Lay Devore" //Se modifica la variable original porque libroref es una referencia
print(libro)



