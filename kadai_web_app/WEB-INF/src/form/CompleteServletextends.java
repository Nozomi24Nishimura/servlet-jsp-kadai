package form;

import java.io.IOException;
import java.util.Objects;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class CompleteServletextends extends HttpServlet {

	public void doPost(HttpServletRequest request,
	        HttpServletResponse response)
	        throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");

		// 入力されたデータのバリデーションチェック

		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String address = request.getParameter("address");
		String phone_number = request
		        .getParameter("phone_number");

		name = Objects.toString(name, "");
		email = Objects.toString(email, "");
		address = Objects.toString(address, "");
		phone_number = Objects.toString(phone_number, "");

		// 拡張予定ーーーーーーーーーー
		// DBに登録など
		// ーーーーーーーーーーーーーー

		request.setAttribute("message", "個人情報入力が完了しました");

		request.getRequestDispatcher("/pages/completePage.jsp")
		        .forward(request, response);

	}
}
