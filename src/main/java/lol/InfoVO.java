package lol;

import java.util.List;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@JsonIgnoreProperties(ignoreUnknown = true)
public class InfoVO {
	private int queueId;
	private String gameMode;
	private List<ParticipantsVO> participants;
	public int getQueueId() {
		return queueId;
	}
	public void setQueueId(int queueId) {
		this.queueId = queueId;
	}
	public String getGameMode() {
		return gameMode;
	}
	public void setGameMode(String gameMode) {
		this.gameMode = gameMode;
	}
	public List<ParticipantsVO> getParticipants() {
		return participants;
	}
	public void setParticipants(List<ParticipantsVO> participants) {
		this.participants = participants;
	}
}
