package loaa_backend.common.model;

import lombok.Getter;

@Getter
public class CharacterModel {
	String characterName;
	String characterKey;
	String characterLevel;
	String userExpeditionId;

/*
  characterName;
  characterKey;
  characterLevel;
  userExpeditionId
 */

	public CharacterModel(String characterKey, String characterName, String characterLevel, String userExpeditionId) {
		this.characterName =    characterName;
		this.characterKey =     characterKey;
		this.characterLevel  =   characterLevel;
		this.userExpeditionId = userExpeditionId;
	}
}
