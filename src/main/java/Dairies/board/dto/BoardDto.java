package Dairies.board.dto;

import java.util.List;

import lombok.Data;

@Data
public class BoardDto {
	
	private int boardIdx;
	
	private String title;
	
	private String contents;
	
	private int hitCnt;
	
	private String creatorId;
	
	private String createdDatetime;
	
	private String updaterId;
	
	private String updatedDatetime;
	
	private int repRoot;
	
	private int repStep;
	
	private int repIndent;
	
	private String password;
	
	private String ip;
	
	private List<BoardFileDto> fileList;

}
