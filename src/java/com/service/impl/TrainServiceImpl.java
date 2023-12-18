/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.service.impl;

import com.dao.TrainDao;
import com.model.Train;
import com.service.TrainService;
import java.util.List;
import java.util.Set;
import java.util.stream.Collectors;

/**
 *
 * @author Administrator
 */
public class TrainServiceImpl implements TrainService{
        TrainDao dao;

    public TrainServiceImpl(TrainDao dao) {
        this.dao = dao;
    }
    @Override
    public Set<Train> read() {
        return dao.read();
    }
    
    @Override
    public List<Train> filterTrainsByDestination(String destination) {
    return dao.read().stream()
        .filter(train -> train.getPunktpribitiya().equalsIgnoreCase(destination))
        .collect(Collectors.toList());
}
    
    @Override
    public List<Train> filterTrainsByDestinationAndTime(String destination, String departureTime) {
    return dao.read().stream()
        .filter(train -> train.getPunktpribitiya().equals(destination)
                && train.getTime().equals(departureTime))
        .collect(Collectors.toList());
}
    
    @Override
    public List<Train> filterTrainsByDestinationAndSeatsType(String destination, String seatsType) {
    return dao.read().stream()
        .filter(train -> train.getPunktpribitiya().equalsIgnoreCase(destination)
                && checkSeatsAvailability(train, seatsType))
        .collect(Collectors.toList());
}

private boolean checkSeatsAvailability(Train train, String seatsType) {
            return switch (seatsType) {
                case "Общие" -> train.getSeatsObjie() > 0;
                case "Купе" -> train.getSeatsKupe() > 0;
                case "Люкс" -> train.getSeatsLux() > 0;
                case "Плацкарт" -> train.getSeatsPlackart() > 0;
                default -> false;
            };
}


}
