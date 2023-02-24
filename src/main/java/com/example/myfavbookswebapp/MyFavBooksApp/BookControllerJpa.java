package com.example.myfavbookswebapp.MyFavBooksApp;

import jakarta.validation.Valid;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@SessionAttributes("name")
public class BookControllerJpa {

    private BookRepository bookRepository;

    public BookControllerJpa (BookRepository bookRepository) {
        this.bookRepository = bookRepository;
    }

    //List books
    @RequestMapping("/dashboard")
    public String listBooks(ModelMap model){
        String username = getLoggedInUsername(model);
        List<Book> books = bookRepository.findByUsername(username);
        model.addAttribute("books", books);
        return "DashBoardPage";
    }

    //Show addNewBookPage
    @RequestMapping(value = "/addBook", method = RequestMethod.GET)
    public String showAddBookPage(ModelMap model) {
        String username = getLoggedInUsername(model);
        Book book = new Book(0,username,"","","",0,0);
        model.put("book",book);
        return "AddNewBookPage";
    }

    //Add book/save book to database if everything went well
    @RequestMapping(value = "/addBook", method = RequestMethod.POST)
    public String submitForm(ModelMap model, @Valid @ModelAttribute("book") Book book, BindingResult bindingResult){
        if(bindingResult.hasErrors()){
            return "AddNewBookPage";
        }
        String username = getLoggedInUsername(model);
        book.setUsername(username);
        bookRepository.save(book);
        System.out.println(book);
    return "BookSuccessfullyAdded";
    }

    private String getLoggedInUsername(ModelMap model) {
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        return authentication.getName();
    }


}
