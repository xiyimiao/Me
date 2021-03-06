package com.ll.action;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import net.sf.json.JSONArray;

import com.ll.entity.Question;
import com.ll.service.QuestionService;

public class IndexmainAction extends HttpServlet {

	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		doPost(req, resp);
	}

	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {

//		System.out.println("进入传统模式后台");
		resp.setCharacterEncoding("utf-8");
		String classify = req.getParameter("classify");
		QuestionService questionService = new QuestionService();
		HttpSession session = req.getSession();
		List<Question> list = (List<Question>)session.getAttribute("questionList");
		if(list != null){
			List<Question> list1 = questionService.getAllQuestion(classify);
			session.setAttribute("questionList",list1);
		}
		resp.sendRedirect("index.jsp");
	}

}
