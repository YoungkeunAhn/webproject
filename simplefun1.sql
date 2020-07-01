
/* Create Tables */

CREATE TABLE MOD_Manager
(
	manager_id varchar2(20) NOT NULL,
	manager_passwd varchar2(20) NOT NULL,
	authority number(3,0) DEFAULT 1, -- 1:�Ϲݰ����� 2:���۰�����
	PRIMARY KEY (manager_id)
);


CREATE TABLE MOD_MissionCategory
(
	mission_category_id varchar2(30) NOT NULL,
	large_category varchar2(20) NOT NULL UNIQUE,
	small_category varchar2(20),
	category_image varchar2(1000), -- ��з��� �̹��� �ֱ�
	PRIMARY KEY (mission_category_id)
);


CREATE TABLE MOD_MissionInfo
(
	mission_info_id varchar2(30) NOT NULL,
	mission_title varchar2(100) NOT NULL,
	mission_level number(3,0), -- normal 1,2,3 / challenge:99
	mission_category_id varchar2(20),
	mission_accept_count number(10,0) DEFAULT 0, -- �̼� �¶� +1
	mission_reject_count number(10,0) DEFAULT 0, -- �̼� ���� +1
	mission_location varchar2(10) ,
	mission_avg_score number(2,2) DEFAULT 0, -- �̼ǿ� ���� �� ���(����)
	mission_contents varchar2(1000),
	PRIMARY KEY (mission_info_id)
);


CREATE TABLE MOD_MissionState
(
	mission_state_id varchar2(30) NOT NULL,
	mission_info_id varchar2(30) NOT NULL,
	user_nickname varchar2(20) NOT NULL,
	mission_start_date varchar2(30) DEFAULT to_char(sysdate,'yyyy/mm/dd hh24:mi') NOT NULL,
	upload_image varchar2(1000),
	upload_video varchar2(1000),
	upload_public_availability number(3,0) DEFAULT 1, -- ����: 1 �����: 0
	mission_state number(3,0) DEFAULT 1, -- 1.�̼��� 2.���� 3.���� 4.�̼������� 5. �ߵ�����
	mission_giveup_reason varchar2(200),
	mission_evaluation_count number(3,0) DEFAULT 0, -- �̼� �򰡸� ���� �����
	successed_count number(3,0) DEFAULT 0, -- ���� ��ư�� ���� ��� ��(>=6 :����)
	PRIMARY KEY (mission_state_id)
);


CREATE TABLE MOD_Notes --���� ���̺�
(
	notes_id varchar2(30) NOT NULL,
	received_nickname varchar2(20) NOT NULL, -- �޴� ����� ������
	sent_nickname varchar2(20) NOT NULL, -- �����ڴ� id / ������ nickname
	notes_contents varchar2(1000),
	send_date varchar2(30) DEFAULT to_char(sysdate,'yyyy/mm/dd hh24:mi') NOT NULL,
	read_check number(3,0) DEFAULT 0,
	PRIMARY KEY (notes_id)
);


CREATE TABLE MOD_Reply
(
	reply_id varchar2(30) NOT NULL,
	success_board_id varchar2(30),
	user_nickname varchar2(20) NOT NULL UNIQUE,
	reply_contents varchar2(200),
	reply_date varchar2(30) DEFAULT to_char(sysdate,'yyyy/mm/dd hh24:mi') NOT NULL,
	reference number(10,0),
    reply_step number(10,0),
	reply_level number(10,0),
	PRIMARY KEY (reply_id)
);


CREATE TABLE MOD_ReportBoard
(
	report_board_id varchar2(30) NOT NULL, 
	user_nickname varchar2(20) NOT NULL,  -- �Ű�Խ��� �ۼ���
	reported_nickname varchar2(20) NOT NULL, -- �Ű���� �г���
	report_reason varchar2(500),
	reported_board_id varchar2(30),
	reported_reply_id varchar2(30),
	report_date varchar2(30) DEFAULT to_char(sysdate,'yyyy/mm/dd hh24:mi'),
	PRIMARY KEY (report_board_id)
);


CREATE TABLE MOD_SuccessBoard
(
	success_board_id varchar2(30) NOT NULL,
	mission_state_id varchar2(30) NOT NULL,
	user_nickname varchar2(20) NOT NULL,
	success_board_contents varchar2(1000),
	mission_info_id varchar2(30) ,
	likecount number(10,0) DEFAULT 0 ,
	views number(10,0) DEFAULT 0 ,
	board_register_date varchar2(30) DEFAULT to_char(sysdate,'yyyy/mm/dd hh24:mi') ,
	PRIMARY KEY (success_board_id)
);


CREATE TABLE MOD_Users
(
	user_nickname varchar2(20) NOT NULL,
	user_email varchar2(50) NOT NULL UNIQUE, -- īī������ �޾ƿ��� ����
	user_passwd varchar2(20) NOT NULL,
	gender varchar2(10), -- īī�� ����(female/male)
	-- īī�� ����
	-- 1~9
	-- 10~14
	-- 15~19
	-- 20~29
	-- 30~39
	-- 40~49
	-- 50~59
	-- 60~69
	-- 70~79
	-- 80~89
	-- 90~
	age_group varchar2(10),
	date_of_birth date NOT NULL, -- ���� �޾ƿ���
	kakao_birthday varchar2(10), -- īī���� ���� �޾ƿ� / ����, MMDD ����
	location varchar2(10) NOT NULL,
	intresting1_large_category varchar2(20) NOT NULL, -- ��з�
	intresting2_large_category varchar2(20),
	intresting3_large_category varchar2(20),
	intresting4_large_category varchar2(20),
	job varchar2(20),
	token varchar2(100),
	sign_up_date varchar2(30) DEFAULT to_char(sysdate,'yyyy/mm/dd hh24:mi') NOT NULL,
	withdrawal_date varchar2(30),
	score number(10,0),
	profile_picture varchar2(1000),
	PRIMARY KEY (user_nickname)
);



/* Create Foreign Keys */

ALTER TABLE MOD_MissionInfo
	ADD FOREIGN KEY (mission_category_id)
	REFERENCES MOD_MissionCategory (mission_category_id)
;


ALTER TABLE MOD_MissionState
	ADD FOREIGN KEY (mission_info_id)
	REFERENCES MOD_MissionInfo (mission_info_id)
;


ALTER TABLE MOD_SuccessBoard
	ADD FOREIGN KEY (mission_info_id)
	REFERENCES MOD_MissionInfo (mission_info_id)
;


ALTER TABLE MOD_SuccessBoard
	ADD FOREIGN KEY (mission_state_id)
	REFERENCES MOD_MissionState (mission_state_id)
;


ALTER TABLE MOD_ReportBoard
	ADD FOREIGN KEY (reported_reply_id)
	REFERENCES MOD_Reply (reply_id)
;


ALTER TABLE MOD_Reply
	ADD FOREIGN KEY (success_board_id)
	REFERENCES MOD_SuccessBoard (success_board_id)
;


ALTER TABLE MOD_ReportBoard
	ADD FOREIGN KEY (reported_board_id)
	REFERENCES MOD_SuccessBoard (success_board_id)
;


ALTER TABLE MOD_MissionState
	ADD FOREIGN KEY (user_nickname)
	REFERENCES MOD_Users (user_nickname)
;

/*sequence ����(��������: seq_�÷�(id�� ����))*/

create sequence seq_mission_category start with 1 increment by 1;
create sequence seq_mission_info start with 1 increment by 1;
create sequence seq_mission_state start with 1 increment by 1;
create sequence seq_notes start with 1 increment by 1;
create sequence seq_reply start with 1 increment by 1;
create sequence seq_report_board start with 1 increment by 1;
create sequence seq_success_board start with 1 increment by 1;


