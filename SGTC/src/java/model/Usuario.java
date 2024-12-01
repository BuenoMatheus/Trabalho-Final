package model;

/**
 *
 * @author Rafael
 */


import java.util.Date;

public class Usuario {
    private int id;
    private String nomeUsuario;
    private String senha;
    private String cargo;
    private String fotoPerfil;
    private Date criadoEm;

    // Getters e Setters

    public int getId() {
        return id;
    }

    public String getNomeUsuario() {
        return nomeUsuario;
    }

    public String getSenha() {
        return senha;
    }

    public String getCargo() {
        return cargo;
    }

    public String getFotoPerfil() {
        return fotoPerfil;
    }

    public Date getCriadoEm() {
        return criadoEm;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setNomeUsuario(String nomeUsuario) {
        this.nomeUsuario = nomeUsuario;
    }

    public void setSenha(String senha) {
        this.senha = senha;
    }

    public void setCargo(String cargo) {
        this.cargo = cargo;
    }

    public void setFotoPerfil(String fotoPerfil) {
        this.fotoPerfil = fotoPerfil;
    }

    public void setCriadoEm(Date criadoEm) {
        this.criadoEm = criadoEm;
    }
 }

   
