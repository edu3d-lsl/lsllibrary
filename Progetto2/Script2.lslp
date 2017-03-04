$import Libreria.Costanti.lslm;
$import Libreria.Comunicazioni.lslm(DEBUG=DEBUG);

default {
    state_entry() {
        llOwnerSay("Hello Scripter");
        debug("inizio calcolo");
        
        float valore = llAcos(0);
        
        notifica("completato valore: "+(string)valore);
    }
    
}
