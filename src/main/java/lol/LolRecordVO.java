package lol;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@JsonIgnoreProperties(ignoreUnknown = true)
public class LolRecordVO {
	private InfoVO info;

	public InfoVO getInfo() {
		return info;
	}

	public void setInfo(InfoVO info) {
		this.info = info;
	}

	
}
