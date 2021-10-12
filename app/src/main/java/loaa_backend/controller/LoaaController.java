package loaa_backend.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import loaa_backend.model.Dungeon;


@RestController
public class LoaaController {

	@GetMapping("/")
	public String home() {
		return "HELLO WORLD";//new Dungeon();
	}

	@GetMapping("/dungeonList")
	public Dungeon greeting(@RequestParam(value = "name", defaultValue = "World") String name) {
		return new Dungeon("aa11", "aab2", "aa22");
	}
}
