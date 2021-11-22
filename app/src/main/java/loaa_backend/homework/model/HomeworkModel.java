package loaa_backend.homework.model;

import lombok.Getter;

@Getter
public class HomeworkModel {
	String homeworkId;
	String homeworkName;
	String startLevel;
	String isCommander;
	String limitGoldLevel;
	String endLevel;
	String cycle;


/*
  `homework_id` VARCHAR(30) NOT NULL,
  `homework_name` VARCHAR(30) NOT NULL,
  `start_level` INT NULL,
  `is_commander` TINYINT(1) NOT NULL COMMENT 'is it commander dungeon ?',
  `limit_gold_level` INT NULL,
  `end_level` INT NULL,
  `cycle` INT NOT NULL COMMENT 'daily, weekly',
 *
 */
	public HomeworkModel(String homeworkId, String homeworkName,	String startLevel, String isCommander, String limitGoldLevel,
			String endLevel, String cycle) {
		this.homeworkId = homeworkId;
		this.homeworkName = homeworkName;
		this.startLevel = startLevel;
		this.isCommander = isCommander;
		this.limitGoldLevel = limitGoldLevel;
		this.endLevel = endLevel;
		this.cycle = cycle;
	}
}
