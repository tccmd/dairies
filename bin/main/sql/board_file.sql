create table board_file(
	idx int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '일련번호',
	board_idx int(10) unsigned NOT NULL COMMENT '게시글 번호',
	original_file_name varchar(255) NOT NULL COMMENT '원본 파일 이름',
	stored_file_path varchar(500) NOT NULL COMMENT '파일 저장 경로',
	file_size int(15) unsigned NOT NULL COMMENT '파일 크기',
	creator_id varchar(50) NOT NULL COMMENT '작성자 아이디',
    created_datetime datetime NOT NULL COMMENT '작성시간',
	updator_id varchar(50) DEFAULT NULL COMMENT '수정자 아이디',
	updated_datetime datetime DEFAULT NULL COMMENT '수정시간',
	deleted_yn char(1) NOT NULL DEFAULT 'N' COMMENT '삭제 여부',
	PRIMARY KEY (idx)
);