package loaa_backend.homework.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import loaa_backend.homework.model.Homework;
import loaa_backend.homework.services.HomeworkService;


@RestController
public class HomeworkController {

	@Autowired
	HomeworkService service;

	@GetMapping("/")
	public String home() {
		return "HELLO WORLD";//new Dungeon();
	}

	@GetMapping("/homeworkList")
	public List<Homework> greeting(@RequestParam(value = "name", defaultValue = "World") String name) {
		return service.getHomeworkList();
	}
}
