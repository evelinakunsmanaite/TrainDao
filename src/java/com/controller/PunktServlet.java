package com.controller;

import com.model.Train;
import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "PunktServlet", urlPatterns = {"/punktServlet"})
public class PunktServlet extends InitServlet implements Jumpable {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Получение списка поездов
        String Punkt = request.getParameter("punkt");

        // Фильтрация поездов до определенного пункта назначения
        List<Train> result = trainService.filterTrainsByDestination(Punkt);

        if (!result.isEmpty()) {
            //Получение результата по парметрам запроса
            request.setAttribute("result", result);

            jump("/WEB-INF/jsp/trainresult.jsp", request, response);
        } else {
     
            jump("/WEB-INF/jsp/error_1.jsp", request, response);
        }
    }
}
