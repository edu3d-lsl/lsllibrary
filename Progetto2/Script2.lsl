// LSL script generated - LSLForge (0.1.6.5): Progetto2.Script2.lslp 
// 2017-03-13 18:10:59


debug(string str){
    llOwnerSay(str);
}
notifica(string str){
    llSay(0,str);
}

default {

    state_entry() {
        llOwnerSay("Hello Scripter");
        debug("inizio calcolo");
        float valore = 1.5707963267948966;
        notifica("completato valore: " + (string)valore);
    }
}
