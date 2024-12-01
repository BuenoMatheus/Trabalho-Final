<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>Alteração de Tarefa</title>
    </head>
    <body>
        <%
            //Recebe o código da tarefa a ser alterada.
            int c;
            c = Integer.parseInt(request.getParameter("idusuario"));
            //Conexão com o banco
            Connection conecta;
            PreparedStatement st;
            Class.forName("com.mysql.cj.jdbc.Driver");
            conecta = DriverManager.getConnection("jdbc:mysql://localhost:3306/banco", "root", "");
            //Buscar a tarefa a tarefa pelo crachá recebido.
            st = conecta.prepareStatement("SELECT * FROM usuario WHERE idusuario = ?");
            st.setInt(1, c);
            ResultSet resultado = st.executeQuery(); //Executa o Select
            //verifica se a tarefa foi encontrada.
            if (!resultado.next()) { //Se não encontrar.
                out.print("Tarefa não encontrada!");
            } else { //Se encontrar.
%>
        <form method="post" action="alterar_tarefa.jsp">
            <p>
                <label for="empresa"> Empresa:</label><br>
                <input type="text" name="empresa" id="empresa" size="30" maxlength="30" value="<%= resultado.getString("empresa")%>" ><br><br>


                <label for="idusuario">crachá :</label><br>
                <input type="number" name="idusuario" id="idusuario" value="<%= resultado.getString("idusuario")%>" readonly><br><br>

                <label for="nome">Nome:</label><br>
                <input type="text" name="nome" id="nome" size="50" maxlength="50" value="<%= resultado.getString("nome")%>" ><br><br>

                <label for="email">E-mail:</label><br>
                <input type="text" name="email" id="email" size="50" maxlength="50" value="<%= resultado.getString("email")%>"><br><br>

                <label for="tarefa">Tarefa:</label><br>
                <input type="text" name="tarefa" id="tarefa" size="50" maxlength="50" value="<%= resultado.getString("tarefa")%>"><br><br>



                <input type="submit" value="Alterar">
            </p>
        </form>
        <%
            }
        %>
    </body>
</html>
