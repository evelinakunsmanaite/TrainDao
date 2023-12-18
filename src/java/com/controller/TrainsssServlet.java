package com.controller;

import com.model.Train;
import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "TrainsssServlet", urlPatterns = {"/trainsssServlet"})
public class TrainsssServlet extends InitServlet implements Jumpable {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String destination = request.getParameter("destination");
        String seatsType = request.getParameter("seatsType");

        List<Train> filteredTrains = trainService.filterTrainsByDestinationAndSeatsType(destination, seatsType);
      
        
        if (!filteredTrains.isEmpty()) {
            //Получение результата по парметрам запроса
            request.setAttribute("result", filteredTrains);
            request.setAttribute("seatsType", seatsType);

            jump("/WEB-INF/jsp/trainresult_1.jsp", request, response);
        } else {
     
            jump("/WEB-INF/jsp/error_1.jsp", request, response);
        }

    }
}
