package model;

/**
 *
 * @author Rafael
 */

import java.util.Date;

public class Comentario {
    private int id;
    private int tarefaId;
    private int usuarioId;
    private String comentario;
    private Date criadoEm;

    // Getters e Setters

    public int getId() {
        return id;
    }

    public int getTarefaId() {
        return tarefaId;
    }

    public int getUsuarioId() {
        return usuarioId;
    }

    public String getComentario() {
        return comentario;
    }

    public Date getCriadoEm() {
        return criadoEm;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setTarefaId(int tarefaId) {
        this.tarefaId = tarefaId;
    }

    public void setUsuarioId(int usuarioId) {
        this.usuarioId = usuarioId;
    }

    public void setComentario(String comentario) {
        this.comentario = comentario;
    }

    public void setCriadoEm(Date criadoEm) {
        this.criadoEm = criadoEm;
    }
}

