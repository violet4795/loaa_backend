package loaa_backend.homework.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import loaa_backend.common.model.CharacterModel;
import loaa_backend.homework.mapper.HomeworkMapper;
import loaa_backend.homework.model.HomeworkModel;

@Service
public class HomeworkService {

	@Autowired
	private HomeworkMapper mapper;


	public List<HomeworkModel> getHomeworkList(){
		final List<HomeworkModel> homeworkList = mapper.getHomeworkList();
		return homeworkList;
	}

	public List<CharacterModel> getCharacterList(){
		final List<CharacterModel> characterList = mapper.getCharacterList();
		return characterList;
	}

}
