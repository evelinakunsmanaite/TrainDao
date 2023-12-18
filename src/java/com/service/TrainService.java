/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.service;

import com.model.Train;
import java.util.List;
import java.util.Set;

/**
 *
 * @author Administrator
 */
public interface TrainService {
    Set<Train> read();
    List<Train> filterTrainsByDestination(String destination);
    List<Train> filterTrainsByDestinationAndTime(String destination, String departureTime);
    List<Train> filterTrainsByDestinationAndSeatsType(String destination, String seatsType);
}
