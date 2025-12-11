package com.ows.jsfdemo;


import jakarta.enterprise.context.RequestScoped;
import jakarta.inject.Named;
import java.io.Serializable;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

@Named("demoBean")
@RequestScoped

public class DemoBean implements Serializable {

    private static final long serialVersionUID = 1L;

    private String name;
    private String message ="Hello World of JSF";

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public String getServerTime() {
        return LocalDateTime.now()
                .format(DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss"));
    }

    public void submit() {
        if (name != null && !name.trim().isEmpty()) {
            this.message = "Hello, " + name + "! Welcome to Tomcat 11 + JSF 4.0!";
        } else {
            this.message = "Please enter your name.";
        }
    }
    public String goToNextPage() {
        // Data 'name' is already available in this bean instance
        return "nextPage?faces-redirect=true";
    }
}