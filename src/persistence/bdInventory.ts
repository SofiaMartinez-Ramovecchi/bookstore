import { BookInterface } from "../domain/interfacebook";
/* aquí deberia importar CreateConnection? */
export interface BdInventory {

    
    saveBook( argBook : BookInterface  ) : boolean   
    selectBook( argBook : BookInterface  ) : boolean 
    updateBook( argBook : BookInterface  ) : boolean 

}

