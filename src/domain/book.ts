import { BookInterface } from "../domain/interfacebook";

export class Book implements BookInterface{

    title: string;
    content: string;
    author: string;
    genre: string;
    
    constructor(title : string, author: string, genre : string, content : string) {
      
        this.title = title;
        this.content = content;
        this.author = author;
        this.genre = genre;

    }

    readTitle() : boolean{
        console.log(this.title);
        return true;
    }
    readContent() : boolean{
        console.log(this.title);
        return true;
    }
    readAuthor() : boolean{
        console.log(this.title);
        return true;
    }
    readGenre() : boolean{
        console.log(this.title);
        return true;
    }


}