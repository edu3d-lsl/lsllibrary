// Progetto2.Script2.lslp 
// 2017-03-07 22:42:14 - LSLForge (0.1.9.3) generated

integer DEBUG = TRUE;

debug(string str){
  if (DEBUG) llOwnerSay(str);
}
notifica(string str){
  llSay(0,str);
}

default {

    state_entry() {
    llOwnerSay("Hello Scripter");
    debug("inizio calcolo");
    float valore = llAcos(0);
    notifica(("completato valore: " + ((string)valore)));
  }
}
