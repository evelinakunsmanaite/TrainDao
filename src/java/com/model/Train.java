package com.model;

public class Train {

    private final int id;
    private final String punktotpravleniya;
    private final String punktpribitiya;
    private final int number;
    private final String time;
    private final int objie;
    private final int kupe;
    private final int plackart;
    private final int lux;

    public Train(int id, String punktotpravleniya, String punktpribitiya, int number, String time, int objie, int kupe, int plackart, int lux) {
        this.id = id;
        this.punktotpravleniya = punktotpravleniya;
        this.punktpribitiya = punktpribitiya;
        this.number = number;
        this.time = time;
        this.objie = objie;
        this.kupe = kupe;
        this.plackart = plackart;
        this.lux = lux;
    }

    public int getId() {
        return id;
    }

    public String getPunktotpravleniya() {
        return punktotpravleniya;
    }
    
    public String getPunktpribitiya() {
        return punktpribitiya;
    }

    public int getNumber() {
        return number;
    }

    public String getTime() {
        return time;
    }

    public int getSeatsObjie() {
        return objie;
    }

    public int getSeatsKupe() {
        return kupe;
    }

    public int getSeatsPlackart() {
        return plackart;
    }

    public int getSeatsLux() {
        return lux;
    }

    public boolean isAvailable() {
        // Check if there are any available seats in the train
        return (objie > 0 || kupe > 0 || plackart > 0 || lux > 0);
    }
}
