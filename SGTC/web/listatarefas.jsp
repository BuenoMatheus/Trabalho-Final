<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista de Tarefas</title>
        <<link rel="stylesheet" href="tabela.css"/>
        <meta charset="utf-8">
    </head>
    <body>
        <%
            try {

                // conecção com o banco de dados
                Connection conecta;
                PreparedStatement st;
                Class.forName("com.mysql.cj.jdbc.Driver");
                conecta = DriverManager.getConnection("jdbc:mysql://localhost:3306/banco", "root", "");

                // listar dados da tabela usuario no banco de dados.
                st = conecta.prepareStatement("SELECT * FROM usuario");
                ResultSet rs = st.executeQuery();
                %>
                <<table>
                    <tr>
                        <th>Empresa</th><th>Crachá</th><th>Nome</th><th>E-mail</th><th>Tarefa</th><th>Exclusão</th>
                    </tr>
                <%
                while (rs.next()) {
                %>
                    <tr>
                        <td><%= rs.getString("empresa")%></td>
                        <td><%= rs.getString("idusuario")%></td>
                        <td><%= rs.getString("nome")%></td>
                        <td><%= rs.getString("email")%></td>
                        <td><%= rs.getString("tarefa")%></td>
                        <td><a href="exctarefas.jsp?idusuario=<%= rs.getString("idusuario")%>">Excluir</a></td>
                    </tr>
                <% 
                }
                %>
                </table>
                <%

            }
            catch (Exception e

                    
                ) {
        System.out.print("Erro:" + e.getMessage());
            }

        %>
    </body>
</html>
