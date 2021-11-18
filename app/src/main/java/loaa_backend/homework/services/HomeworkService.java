package loaa_backend.homework.services;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import loaa_backend.homework.mapper.HomeworkMapper;
import loaa_backend.homework.model.Homework;

@Service
public class HomeworkService {

	@Autowired
	private HomeworkMapper mapper;


	public List<Homework> getHomeworkList(){
		final List<Homework> homeworkList = mapper.getHomeworkList();
		return homeworkList;
	}

}
