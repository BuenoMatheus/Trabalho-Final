<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            // Receber os dados alterados do formulário carregatarefa.jsp.
            int idusuario;
            String nome;
            String email;
            String empresa;
            String tarefa;
            idusuario = Integer.parseInt(request.getParameter("idusuario"));
            nome = request.getParameter("nome");
            email = request.getParameter("email");
            empresa = request.getParameter("empresa");
            tarefa = request.getParameter("tarefa");
             //Conexão com o banco
            Connection conecta;
            PreparedStatement st;
            Class.forName("com.mysql.cj.jdbc.Driver");
            conecta = DriverManager.getConnection("jdbc:mysql://localhost:3306/banco", "root", "");
            //Alterar os dados na tabela usuário do BD.
            st = conecta.prepareStatement("UPDATE usuario SET nome = ?, email = ?, empresa = ?, tarefa = ? WHERE idusuario = ?");
            st.setString(1, nome);
            st.setString(2, email);
            st.setString(3, empresa);
            st.setString(4, tarefa);
            st.setInt(5, idusuario);
            st.executeUpdate(); //Executa o UPDATE.
            out.print("Dados " + idusuario + "alterados com sucesso!");
        %>
    </body>
</html>
