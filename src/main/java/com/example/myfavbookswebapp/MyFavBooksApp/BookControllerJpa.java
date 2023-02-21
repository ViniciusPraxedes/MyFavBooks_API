package com.example.myfavbookswebapp.MyFavBooksApp;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.SessionAttributes;

@Controller
@SessionAttributes("name")
public class BookControllerJpa {

    private BookRepository bookRepository;

    public BookControllerJpa (BookRepository bookRepository) {
        this.bookRepository = bookRepository;
    }

    //List books


}
