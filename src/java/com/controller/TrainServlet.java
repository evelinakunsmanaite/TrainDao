package com.controller;

import com.model.Train;
import java.io.IOException;
import java.util.Set;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "TrainServlet", urlPatterns = {"/trainServlet"})
public class TrainServlet extends InitServlet implements Jumpable {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        Set<Train> result = trainService.read();

        if (!result.isEmpty()) {
            //Получение результата по парметрам запроса
            request.setAttribute("result", result);

            jump("/WEB-INF/jsp/trainresult.jsp", request, response);
        } else {
            jump("/WEB-INF/jsp/error_1.jsp", request, response);

        }

    }
}
