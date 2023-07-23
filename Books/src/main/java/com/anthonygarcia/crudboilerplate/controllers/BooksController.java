package com.anthonygarcia.crudboilerplate.controllers;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.anthonygarcia.crudboilerplate.models.Book;
import com.anthonygarcia.crudboilerplate.services.BookService;

@Controller
public class BooksController {
    private final BookService bookService;
    public BooksController(BookService bookService){
        this.bookService = bookService;
    }
    
    @RequestMapping("/books")
    public List<Book> index() { //eventuall ywill be return type string for rendering jsp page
        return bookService.allBooks();
        //return "index.jsp"
    }
    
    @RequestMapping(value="/books/create", method=RequestMethod.POST)
    public Book create(@RequestParam(value="title") String title, //eventually will be return type string
    @RequestParam(value="description") String desc, 
    @RequestParam(value="language") String lang, 
    @RequestParam(value="pages") Integer numOfPages) {
        Book book = new Book(title, desc, lang, numOfPages);
        return bookService.createBook(book);
        //return "redirect:/books"...
    }
    
    @RequestMapping(value="/books/{id}/update", method=RequestMethod.PUT)
    public Book update( //eventually this will return String and redirect..
    		@PathVariable("id") Long id, 
    		@RequestParam(value="title") String title, 
    		@RequestParam(value="description") String desc, 
    		@RequestParam(value="language") String lang,
    		@RequestParam(value="pages") Integer numOfPages) {
        Book book = new Book (title, desc, lang, numOfPages);// Create a new Book object
        book.setId(id); // Set the ID to the existing ID received from the path variable
        Book updatedBook = bookService.updateBook(book); // Call the service method
        return updatedBook;
        //return "redirect:/books ....
    }
    
    @RequestMapping("/books/{id}")
    public String show(Model model, @PathVariable("id") Long id) {
        Book book = bookService.findBook(id);
        model.addAttribute("book", book); // first is what we will refer to it when we call it in our jsp page, second is coming from line 47.
        return "show.jsp";
    }
    
    @RequestMapping(value="/books/{id}/delete", method=RequestMethod.DELETE)
    public void destroy(@PathVariable("id") Long id) {
        bookService.deleteBook(id);
    }
}