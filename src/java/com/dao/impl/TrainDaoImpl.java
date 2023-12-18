/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.dao.impl;

import com.dao.TrainDao;
import com.model.Train;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.HashSet;
import java.util.Set;
import javax.sql.DataSource;

/**
 *
 * @author Administrator
 */
public class TrainDaoImpl implements TrainDao {

    private final DataSource dataSource;

    public TrainDaoImpl(DataSource dataSource) {
        this.dataSource = dataSource;
    }

    @Override
    public Set<Train> read() {
        String req = "Select * from trains";
        Set<Train> train;
        try (Connection conn = dataSource.getConnection()) {
            try (Statement statement = conn.createStatement(); ResultSet resultSet = statement.executeQuery(req)) {
                train = new HashSet<>();
                while (resultSet.next()) {//пока есть записи 
                    int id = resultSet.getInt("id");
                    String punktotpravleniya = resultSet.getString("punktotpravleniya");
                    String punktpribitiya = resultSet.getString("punktpribitiya");
                    int number = resultSet.getInt("number");
                    String time = resultSet.getString("time");
                    int objie = resultSet.getInt("objie");
                    int kupe = resultSet.getInt("kupe");
                    int plackart = resultSet.getInt("plackart");
                    int lux = resultSet.getInt("lux");

                    train.add(new Train(id, punktotpravleniya, punktpribitiya, number, time, objie, kupe, plackart, lux));
                }
            }
            return train;
        } catch (SQLException ex) {
            ex.printStackTrace();
            return null;
        }
    }
}
