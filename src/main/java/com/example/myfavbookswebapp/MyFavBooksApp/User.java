package com.example.myfavbookswebapp.MyFavBooksApp;

public class User {
    private String name;
    private String email;
    int booksRead;

    public User(String name, String email, int booksRead) {
        this.name = name;
        this.email = email;
        this.booksRead = booksRead;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public int getBooksRead() {
        return booksRead;
    }

    public void setBooksRead(int booksRead) {
        this.booksRead = booksRead;
    }

    @Override
    public String toString() {
        return "User{" +
                "name='" + name + '\'' +
                ", email='" + email + '\'' +
                ", booksRead=" + booksRead +
                '}';
    }
}
