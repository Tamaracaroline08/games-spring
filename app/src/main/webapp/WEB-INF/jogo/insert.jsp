<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="UTF-8" />
        <title>Novo Jogo</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" />
    </head>
    <body>
        <div class="container">
            <h1>Novo Jogo</h1>
            <form action="/jogo/insert" method="post">
                <div class="form-group mb-3">
                    <label for="titulo">Título:</label>
                    <input type="text" name="titulo" class="form-control" required />
                </div>
                <div class="form-group mb-3">
                    <label for="categoria">Categoria:</label>
                    <select name="categoria" class="form-select" required>
                        <c:forEach var="c" items="${categorias}">
                            <option value="${c.id}">${c.nome}</option>
                        </c:forEach>
                    </select>
                </div>
                <div class="form-group mb-3">
                    <label>Plataforma(s):</label>
                    <c:forEach var="p" items="${plataformas}">
                        <div class="form-check">
                            <input type="checkbox" class="form-check-input" name="plataformas" value="${p.id}" id="plataforma-${p.id}" />
                            <label class="form-check-label" for="plataforma-${p.id}">${p.nome}</label>
                        </div>
                    </c:forEach>
                </div>
                <br />
                <a href="/jogo/list" class="btn btn-primary">Voltar</a>
                <button type="submit" class="btn btn-success">Salvar</button>
            </form>
        </div>
    </body>
</html>