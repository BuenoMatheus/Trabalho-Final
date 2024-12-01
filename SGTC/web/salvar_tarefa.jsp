<%-- 
    Document   : salvar_usuario
    Created on : 28 de nov. de 2024, 19:22:48
    Author     : Rafael
--%>

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
            // Receber os dados do formulário cadUsuario.
            int idusuario;
            String nome;
            String email;
            String empresa;
            String tarefa;
            String descricao;
            idusuario = Integer.parseInt(request.getParameter("idusuario"));
            nome = request.getParameter("nome");
            email = request.getParameter("email");
            empresa = request.getParameter("empresa");
            tarefa = request.getParameter("tarefa");

            try {

                // conecção com o banco de dados
                Connection conecta;
                PreparedStatement st;
                Class.forName("com.mysql.cj.jdbc.Driver");
                conecta = DriverManager.getConnection("jdbc:mysql://localhost:3306/banco", "root", "");

                // Inserir dados na tabela cadastro no banco de dados.
                st = conecta.prepareStatement("INSERT INTO usuario VALUES(?, ?, ?, ?, ?)");
                st.setInt(1, idusuario);
                st.setString(2, nome);
                st.setString(3, email);
                st.setString(4, empresa);
                st.setString(5, tarefa);
                st.executeUpdate(); // Executa o comando INSERT.
                out.print("<p style='color:blue; fomt-size:20px'>Tarefa Criada com sucesso!</p>");

            } catch (Exception x) {
                String erro = x.getMessage();
                if (erro.contains("Duplicate entry")) {
                    out.print("<p style='color:red; fomt-size:20px'>Tarefa existente!</p>");
                } else {
                    out.print("<p style='color:red; fomt-size:20px'>Mensagem de erro:" + erro + "</p>");
                }
            }
        %>
    </body>
</html>
