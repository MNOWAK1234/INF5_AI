public static enum Plec {NIEZNANA,MEZCZYZNA,KOBIETA};

public static class Osoba {
        public String imie;
        public Plec plec;

        public Osoba(String imie) {
                this.imie=imie;
                this.plec=Plec.NIEZNANA;
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
    }   

}
