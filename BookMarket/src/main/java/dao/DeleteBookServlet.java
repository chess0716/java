package dao;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/deleteBook")
public class DeleteBookServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // 여기에 GET 요청에 대한 처리 로직을 추가
        // 예: 특정 도서 정보를 보여주는 페이지로 리다이렉트 또는 포워드
        response.sendRedirect("books.jsp");
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // 도서 ID 파라미터 받기
        String bookId = request.getParameter("id");

        // 기존의 BookRepository 인스턴스 가져오기
        BookRepository bookRepository = BookRepository.getInstance();

        // 도서 삭제 메서드 호출
        boolean isDeleted = bookRepository.deleteBook(bookId);

        if (isDeleted) {
            // 도서가 성공적으로 삭제되었을 경우
            response.sendRedirect("books.jsp");
        } else {
            // 도서 삭제에 실패한 경우
            response.sendRedirect("error.jsp"); // 실패 시 리다이렉트할 페이지 지정
        }
    }
}
