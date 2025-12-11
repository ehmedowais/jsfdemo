package com.ows.jsfdemo;

import jakarta.annotation.ManagedBean;
import jakarta.faces.view.ViewScoped;

import java.io.Serializable;

@ManagedBean
@ViewScoped
public class NextPageBean implements Serializable {
    private String message;  // auto-filled by f:viewParam

    public void setId(String message) { this.message = message; }
    public String getId() { return message; }
}

