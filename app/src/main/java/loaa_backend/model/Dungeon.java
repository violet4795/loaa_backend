package loaa_backend.model;

import lombok.Getter;

@Getter
public class Dungeon {
	String dungeonName;
	String dungeonCode;
	String dungeonLevel;
	public Dungeon(String dungeonName, String dungeonCode, String dungeonLevel) {
		this.dungeonCode = dungeonCode;
		this.dungeonLevel = dungeonLevel;
		this.dungeonName = dungeonName;
	}
}
