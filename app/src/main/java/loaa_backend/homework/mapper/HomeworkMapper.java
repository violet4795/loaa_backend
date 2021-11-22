package loaa_backend.homework.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import loaa_backend.common.model.CharacterModel;
import loaa_backend.homework.model.HomeworkModel;

@Mapper
public interface HomeworkMapper {

	List<HomeworkModel> getHomeworkList();
	List<CharacterModel> getCharacterList();
}
