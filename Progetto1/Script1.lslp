
$import Libreria.Costanti.lslm;
$import Libreria.Proprietario.lslm;
$import Libreria.Comunicazioni.lslm(DEBUG=DEBUG);


default {
    state_entry() {
        debug("script partito");
        llSetTimerEvent(TIMER);
    }
    touch_start(integer num_detected) {
    	debug("touch start");
    	if(proprietario()){
    		notifica(S_OWNER);
    	} else {
    		notifica(S_NOT_OWNER);
    	}
    }
    timer() {
    	debug("scattato il timer");
    }
}
