import { BookInterface } from "../domain/interfacebook";
import { Book } from '../domain/book';



function ViewTitle( obj : BookInterface ){
    obj.readTitle();
}

let book1 = new Book("Revelión en la granja", "George Orwell", "Alegoria", "Blablabla");


ViewTitle(book1);