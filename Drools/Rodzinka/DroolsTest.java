package com.sample;

import org.kie.api.KieServices;
import org.kie.api.runtime.KieContainer;
import org.kie.api.runtime.KieSession;
import org.kie.api.logger.*;
import java.util.List;
import java.util.ArrayList;


public class DroolsTest {

	public static final void main(String[] args) {
        try {
            // load up the knowledge base
	        KieServices ks = KieServices.Factory.get();
    	    KieContainer kContainer = ks.getKieClasspathContainer();
        	KieSession kSession = kContainer.newKieSession("ksession-rules");
        	KieRuntimeLogger kLogger = ks.getLoggers().newFileLogger(kSession,  "test");
            // go !
            kSession.fireAllRules();
            kLogger.close();
        } catch (Throwable t) {
            t.printStackTrace();
        }
    }
    
	public static enum Plec {NIEZNANA,MEZCZYZNA,KOBIETA};

	public static class Osoba {
	        public String imie;
	        public Plec plec;
	        public List<Relacja> relacje;

	        public Osoba(String imie) {
	            this.imie = imie;
	            this.plec = Plec.NIEZNANA;
	            this.relacje = new ArrayList<>();
	        }

	        public void dodajRelacje(Relacja relacja) {
	            this.relacje.add(relacja);
	        }

	        public String toString() {
	            return imie;
	        }
	}

	public static class Relacja {

	    public Osoba[] osoby=new Osoba[2];
	    public String relacja;

	    public Relacja(Osoba o1, Osoba o2, String relacja) {
	        this.osoby[0]=o1;
	        this.osoby[1]=o2;
	        this.relacja=relacja;
	        o1.dodajRelacje(this);
	        o2.dodajRelacje(this);
	    }   

	}

}
