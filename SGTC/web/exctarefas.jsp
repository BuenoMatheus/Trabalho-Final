<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Excluir tarefas</title>
    </head>
    <body>
        <%
            //Recebendo dadods da tabela exctarefas.html
            int cod;
            cod = Integer.parseInt(request.getParameter("idusuario"));
            // Conexão com o banco de dados
            Class.forName("com.mysql.cj.jdbc.Driver");
                      //variável
            Connection conecta = DriverManager.getConnection("jdbc:mysql://localhost:3306/banco", "root", "");
            //Excluem as tarefas
            PreparedStatement st = conecta.prepareStatement("DELETE FROM usuario WHERE idusuario=?");
            st.setInt(1, cod);
            //Variável resultado: Se excluir encontra o número 1.
            //Se não encontrar encontra o 0 e exibe uma mensagem.
            int resultado = st.executeUpdate(); //Executa o comando DELETE
            //Verifica se foi excluido
            if (resultado == 0) {
                out.print("Essa tarefa não foi criada!");
            } else {
                out.print("A tarefa vinculada ao Crachá " + cod + " foi excluida com sucesso!");
            }
        %>
    </body>
</html>
