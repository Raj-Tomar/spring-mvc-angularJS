package com.raj.controller;

import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.raj.service.ItemService;


@Controller
@RequestMapping("/item")
public class ItemController {

    @Autowired
    ItemService itemService;  //Service which will do all data retrieval/manipulation work
    private static Logger logger = Logger.getLogger(ItemController.class);
 
	@SuppressWarnings("rawtypes")
	@RequestMapping(value="/computers")
    public ResponseEntity<List> listAllComputers() {
		logger.info("ListAllComputers");
    	List items = 	itemService.findItemsByCategory("computers");
        if(items.isEmpty()){
            return new ResponseEntity<List>(HttpStatus.NO_CONTENT);//You many decide to return HttpStatus.NOT_FOUND
        }
        return new ResponseEntity<List>(items, HttpStatus.OK);
    }

	@RequestMapping(value="/computers/{id}")
    public ResponseEntity<Object> findSpecificComputer(@PathVariable("id") long id) {
		logger.info("findSpecificComputer");
    	Object item = 	itemService.findItemById(id, "computers");
        if(item == null){
            return new ResponseEntity<Object>(HttpStatus.NO_CONTENT);//You many decide to return HttpStatus.NOT_FOUND
        }
        return new ResponseEntity<Object>(item, HttpStatus.OK);
    }

	
	@SuppressWarnings("rawtypes")
	@RequestMapping(value="/phones")
    public ResponseEntity<List> listAllPhones() {
		logger.info("ListAllPhones");
    	List items = 	itemService.findItemsByCategory("phones");
        if(items.isEmpty()){
            return new ResponseEntity<List>(HttpStatus.NO_CONTENT);//You many decide to return HttpStatus.NOT_FOUND
        }
        return new ResponseEntity<List>(items, HttpStatus.OK);
    }

	@RequestMapping(value="/phones/{id}")
    public ResponseEntity<Object> findSpecificPhone(@PathVariable("id") long id) {
		logger.info("findSpecificPhone");
    	Object item = 	itemService.findItemById(id, "phones");
        if(item == null){
            return new ResponseEntity<Object>(HttpStatus.NO_CONTENT);//You many decide to return HttpStatus.NOT_FOUND
        }
        return new ResponseEntity<Object>(item, HttpStatus.OK);
    }

	@SuppressWarnings("rawtypes")
	@RequestMapping(value="/printers")
    public ResponseEntity<List> listAllPrinters() {
		logger.info("ListAllPrinters");
    	List items = 	itemService.findItemsByCategory("printers");
        if(items.isEmpty()){
            return new ResponseEntity<List>(HttpStatus.NO_CONTENT);//You many decide to return HttpStatus.NOT_FOUND
        }
        return new ResponseEntity<List>(items, HttpStatus.OK);
    }

	@RequestMapping(value="/printers/{id}")
    public ResponseEntity<Object> findSpecificPrinter(@PathVariable("id") long id) {
		logger.info("findSpecificPrinter");
    	Object item = 	itemService.findItemById(id, "printers");
        if(item == null){
            return new ResponseEntity<Object>(HttpStatus.NO_CONTENT);//You many decide to return HttpStatus.NOT_FOUND
        }
        return new ResponseEntity<Object>(item, HttpStatus.OK);
    }

}
