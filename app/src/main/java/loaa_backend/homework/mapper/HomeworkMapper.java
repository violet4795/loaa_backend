package loaa_backend.homework.mapper;

import java.util.List;
import org.apache.ibatis.annotations.Mapper;
import loaa_backend.homework.model.Homework;

@Mapper
public interface HomeworkMapper {

	List<Homework> getHomeworkList();
}
