package com.controller;

import com.model.Train;
import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "TrainsServlet", urlPatterns = {"/trainsServlet"})
public class TrainsServlet extends InitServlet implements Jumpable {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String destination = request.getParameter("destination");
        String departureTime = request.getParameter("departureTime");

        List<Train> filteredTrains = trainService.filterTrainsByDestinationAndTime(destination, departureTime);
        
        if (!filteredTrains.isEmpty()) {
            //Получение результата по парметрам запроса
            request.setAttribute("result", filteredTrains);

            jump("/WEB-INF/jsp/trainresult.jsp", request, response);
        } else {
     
            jump("/WEB-INF/jsp/error_1.jsp", request, response);
        }
        
    }
}
