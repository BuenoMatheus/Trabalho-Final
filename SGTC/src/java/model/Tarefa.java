package model;

/**
 *
 * @author Rafael
 */

import java.util.Date;

public class Tarefa {
    private int id;
    private String titulo;
    private String descricao;
    private String status; // Pendente, Em andamento, Concluída
    private int usuarioAtribuidoId;
    private Date criadoEm;
    private Date atualizadoEm;

    // Getters e Setters

    public int getId() {
        return id;
    }

    public String getTitulo() {
        return titulo;
    }

    public String getDescricao() {
        return descricao;
    }

    public String getStatus() {
        return status;
    }

    public int getUsuarioAtribuidoId() {
        return usuarioAtribuidoId;
    }

    public Date getCriadoEm() {
        return criadoEm;
    }

    public Date getAtualizadoEm() {
        return atualizadoEm;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public void setUsuarioAtribuidoId(int usuarioAtribuidoId) {
        this.usuarioAtribuidoId = usuarioAtribuidoId;
    }

    public void setCriadoEm(Date criadoEm) {
        this.criadoEm = criadoEm;
    }

    public void setAtualizadoEm(Date atualizadoEm) {
        this.atualizadoEm = atualizadoEm;
    }
}
