package com.example.myfavbookswebapp.MyFavBooksApp;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.Id;

@Entity
public class Book {
    @Id
    @GeneratedValue
    private int id;
    private String username;
    private String author;
    private String description;
    private int numberOfPages;
    private int yearOfRelease;

    public Book(String username, String author, String description, int numberOfPages, int yearOfRelease, int id) {
        this.username = username;
        this.author = author;
        this.description = description;
        this.numberOfPages = numberOfPages;
        this.yearOfRelease = yearOfRelease;
        this.id = id;
    }

    public Book() {

    }

    @Override
    public String toString() {
        return "Book{" +
                "username='" + username + '\'' +
                ", author='" + author + '\'' +
                ", description='" + description + '\'' +
                ", numberOfPages=" + numberOfPages +
                ", yearOfRelease=" + yearOfRelease +
                '}';
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public int getNumberOfPages() {
        return numberOfPages;
    }

    public void setNumberOfPages(int numberOfPages) {
        this.numberOfPages = numberOfPages;
    }

    public int getYearOfRelease() {
        return yearOfRelease;
    }

    public void setYearOfRelease(int yearOfRelease) {
        this.yearOfRelease = yearOfRelease;
    }
}
