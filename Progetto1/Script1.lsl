// LSL script generated - LSLForge (0.1.6.5): Progetto1.Script1.lslp 
// 2017-03-13 18:27:59


string S_OWNER = "Sono stato toccato dal proprietario";
string S_NOT_OWNER = "Non sei il proprietario";

integer proprietario(){
    return llDetectedKey(0) == llGetOwner();
}

debug(string str){
    llOwnerSay(str);
}
notifica(string str){
    llSay(0,str);
}


default {

    state_entry() {
        debug("script partito");
        llSetTimerEvent(5);
    }

    touch_start(integer num_detected) {
        debug("touch start");
        if (proprietario()) {
            notifica(S_OWNER);
        }
        else  {
            notifica(S_NOT_OWNER);
        }
    }

    timer() {
        debug("scattato il timer");
    }
}
