<%-- 
    Document   : cadastroTarefa
    Created on : 22 de nov. de 2024, 00:11:24
    Author     : Rafael
--%>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Criar Tarefa</title>
    <link rel="stylesheet" href="styles.css"> <!-- Link para o arquivo de estilos -->
</head>
<body>
    <div class="container">
        <header>
            <h1>Criar Nova Tarefa</h1>
        </header>

        <main>
            <form action="CadastroTarefaServlet" method="post">
                <div class="form-group">
                    <label for="titulo">Título da Tarefa:</label>
                    <input type="text" id="titulo" name="titulo" required>
                </div>

                <div class="form-group">
                    <label for="descricao">Descrição:</label>
                    <textarea id="descricao" name="descricao" required></textarea>
                </div>

                <div class="form-group">
                    <label for="usuario_atribuido">Atribuir a Usuário:</label>
                    <select id="usuario_atribuido" name="usuario_atribuido_id" required>
                        <option value="1">João</option>
                        <option value="2">Maria</option>
                        <option value="3">José</option>
                    </select>
                </div>

                <div class="form-group">
                    <button type="submit">Criar Tarefa</button>
                </div>
            </form>

            <a href="index.html">Voltar para a página inicial</a>
        </main>

        <footer>
            <p>&copy; 2024 Gestão de Tarefas - Todos os direitos reservados.</p>
        </footer>
    </div>
</body>
</html>
