package sj;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class LingServlet extends HttpServlet {

	public void doGet(HttpServletRequest req,
	        HttpServletResponse res)
	        throws IOException, ServletException {

		// リクエストのエンコード設定
		req.setCharacterEncoding("UTF-8");

		String message = "Servletからテータを受信しました：侍太郎さん、こんにちは！";
		req.setAttribute("message", message);

		// 取得したデータの表示
		RequestDispatcher dispatcher = req
		        .getRequestDispatcher("index.jsp");
		dispatcher.forward(req, res);

	}
}
