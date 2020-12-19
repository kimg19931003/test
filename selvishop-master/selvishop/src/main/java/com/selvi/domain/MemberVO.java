package com.selvi.domain;

public class MemberVO {
	/*
	 * CREATE TABLE `entry1` ( `eid` int(11) NOT NULL, `id` varchar(50) DEFAULT
	 * NULL, `pass` varchar(50) DEFAULT NULL, `name` varchar(50) DEFAULT NULL,
	 * `date` varchar(50) DEFAULT NULL, `call1` varchar(50) DEFAULT NULL,
	 * `pass_cert` varchar(50) DEFAULT NULL, `bank_agree` varchar(50) NOT NULL
	 * DEFAULT 'n', `email` varchar(200) DEFAULT NULL, `email_ok` varchar(200) NOT
	 * NULL DEFAULT 'n', `email_pass` varchar(200) DEFAULT NULL, `person_num`
	 * varchar(100) DEFAULT NULL, `pass_change_state` varchar(30) NOT NULL DEFAULT
	 * 'n', `user_name` varchar(100) DEFAULT NULL, `bank_name` varchar(100) DEFAULT
	 * NULL, `bank_num` varchar(100) DEFAULT NULL, `bank_insert_clear` varchar(100)
	 * DEFAULT NULL, `bank_refund_wait` varchar(100) DEFAULT NULL,
	 * `bank_refund_total_price` varchar(100) DEFAULT NULL, `ftime` varchar(100)
	 * DEFAULT NULL, `realtime` varchar(100) DEFAULT NULL, `tax_agree` varchar(30)
	 * NOT NULL DEFAULT 'n', `bank_policy_agree` varchar(30) NOT NULL DEFAULT 'n',
	 * `product_no` varchar(100) DEFAULT NULL, `deleted` varchar(30) NOT NULL
	 * DEFAULT 'n', PRIMARY KEY (`eid`) ) ENGINE=InnoDB DEFAULT CHARSET=utf8
	 */

	// MemberBean 역할
	private Integer eid;
	private String id;
	private String pass;
	private String name;
	private String date;
	private String call1;
	private String pass_cert;
	private String bank_agree;
	private String email;
	private String email_ok;
	private String email_pass;
	private String person_num;
	private String pass_change_state;
	private String user_name;
	private String bank_name;
	private String bank_num;
	private String bank_insert_clear;
	private String bank_refund_wait;
	private String bank_refund_total_price;
	private String ftime;
	private String realtime;
	private String tax_agree;
	private String bank_policy_agree;
	private String product_no;
	private String deleted;

	// set/get , toString()
	public Integer getEid() {
		return eid;
	}

	public void setEid(Integer eid) {
		this.eid = eid;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPass() {
		return pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getCall1() {
		return call1;
	}

	public void setCall1(String call1) {
		this.call1 = call1;
	}

	public String getPass_cert() {
		return pass_cert;
	}

	public void setPass_cert(String pass_cert) {
		this.pass_cert = pass_cert;
	}

	public String getBank_agree() {
		return bank_agree;
	}

	public void setBank_agree(String bank_agree) {
		this.bank_agree = bank_agree;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getEmail_ok() {
		return email_ok;
	}

	public void setEmail_ok(String email_ok) {
		this.email_ok = email_ok;
	}

	public String getEmail_pass() {
		return email_pass;
	}

	public void setEmail_pass(String email_pass) {
		this.email_pass = email_pass;
	}

	public String getPerson_num() {
		return person_num;
	}

	public void setPerson_num(String person_num) {
		this.person_num = person_num;
	}

	public String getPass_change_state() {
		return pass_change_state;
	}

	public void setPass_change_state(String pass_change_state) {
		this.pass_change_state = pass_change_state;
	}

	public String getUser_name() {
		return user_name;
	}

	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}

	public String getBank_name() {
		return bank_name;
	}

	public void setBank_name(String bank_name) {
		this.bank_name = bank_name;
	}

	public String getBank_num() {
		return bank_num;
	}

	public void setBank_num(String bank_num) {
		this.bank_num = bank_num;
	}

	public String getBank_insert_clear() {
		return bank_insert_clear;
	}

	public void setBank_insert_clear(String bank_insert_clear) {
		this.bank_insert_clear = bank_insert_clear;
	}

	public String getBank_refund_wait() {
		return bank_refund_wait;
	}

	public void setBank_refund_wait(String bank_refund_wait) {
		this.bank_refund_wait = bank_refund_wait;
	}

	public String getBank_refund_total_price() {
		return bank_refund_total_price;
	}

	public void setBank_refund_total_price(String bank_refund_total_price) {
		this.bank_refund_total_price = bank_refund_total_price;
	}

	public String getFtime() {
		return ftime;
	}

	public void setFtime(String ftime) {
		this.ftime = ftime;
	}

	public String getRealtime() {
		return realtime;
	}

	public void setRealtime(String realtime) {
		this.realtime = realtime;
	}

	public String getTax_agree() {
		return tax_agree;
	}

	public void setTax_agree(String tax_agree) {
		this.tax_agree = tax_agree;
	}

	public String getBank_policy_agree() {
		return bank_policy_agree;
	}

	public void setBank_policy_agree(String bank_policy_agree) {
		this.bank_policy_agree = bank_policy_agree;
	}

	public String getProduct_no() {
		return product_no;
	}

	public void setProduct_no(String product_no) {
		this.product_no = product_no;
	}

	public String getDeleted() {
		return deleted;
	}

	public void setDeleted(String deleted) {
		this.deleted = deleted;
	}
}