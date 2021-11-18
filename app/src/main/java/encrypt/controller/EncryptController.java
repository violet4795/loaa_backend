package encrypt.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import encrypt.services.EncryptService;

@RestController
public class EncryptController {
	@Autowired
	EncryptService service;

	@GetMapping("/encrypt")
	public String encrypt(String salt, String value, String algorithm) {
		return service.encrypt(salt, value, algorithm);
	}

	@GetMapping("/decrypt")
	public String decrypt(String salt, String value, String algorithm) {
		return service.decrypt(salt, value, algorithm);
	}
}
