package encrypt.services;

import org.jasypt.encryption.pbe.StandardPBEStringEncryptor;
import org.springframework.stereotype.Service;

@Service
public class EncryptService {

	public String encrypt(String salt, String value, String algorithm) {

		if(salt == null) return "please input salt";
		else if(value == null) return "please input value";

		StandardPBEStringEncryptor jasypt = new StandardPBEStringEncryptor();

		jasypt.setPassword(salt);      //��ȣȭ Ű(password)

		if(algorithm == null || "".equals(algorithm)) jasypt.setAlgorithm("PBEWithMD5AndDES");
		else jasypt.setAlgorithm(algorithm);

		String encryptedText = jasypt.encrypt(value);    //��ȣȭ

		return encryptedText;
	}

	public String decrypt(String salt, String encryptValue, String algorithm) {

		if(salt == null) return "please input salt";
		else if(encryptValue == null) return "please input value";

		StandardPBEStringEncryptor jasypt = new StandardPBEStringEncryptor();
		jasypt.setPassword(salt);      //��ȣȭ Ű(password)

		if(algorithm == null || "".equals(algorithm)) jasypt.setAlgorithm("PBEWithMD5AndDES");
		else jasypt.setAlgorithm(algorithm);

		String plainText = jasypt.decrypt(encryptValue);  //��ȣȭ

		return plainText;
	}

}
