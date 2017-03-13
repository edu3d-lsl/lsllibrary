// Progetto1.Script1.lslp 
// 2017-03-13 21:31:58 - LSLForge (0.1.9.3) generated


integer DEBUG = TRUE;
integer TIMER = 5;
string S_OWNER = "Sono stato toccato dal proprietario";
string S_NOT_OWNER = "Non sei il proprietario";

integer proprietario(){
  return (llDetectedKey(0) == llGetOwner());
}

debug(string str){
  if (DEBUG) llOwnerSay(str);
}
notifica(string str){
  llSay(0,str);
}


default {

    state_entry() {
    debug("script partito");
    llSetTimerEvent(TIMER);
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
