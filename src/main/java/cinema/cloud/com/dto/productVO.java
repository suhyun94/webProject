package cinema.cloud.com.dto;
// 상품 VO
public class productVO {
	
	private int p_code,p_price;
	private String p_name,p_content,p_type,p_validate;
	                                       // 나중에 날짜 형식으로 바꿀지 안바꿀지?
	
	public int getP_code() {
		return p_code;
	}
	public void setP_code(int p_code) {
		this.p_code = p_code;
	}
	public String getP_name() {
		return p_name;
	}
	public void setP_name(String p_name) {
		this.p_name = p_name;
	}
	public String getP_content() {
		return p_content;
	}
	public void setP_content(String p_content) {
		this.p_content = p_content;
	}
	public int getP_price() {
		return p_price;
	}
	public void setP_price(int p_price) {
		this.p_price = p_price;
	}
	public String getP_type() {
		return p_type;
	}
	public void setP_type(String p_type) {
		this.p_type = p_type;
	}
	public String getP_validate() {
		return p_validate;
	}
	public void setP_validate(String p_validate) {
		this.p_validate = p_validate;
	}
	
	
	@Override
	public String toString() {
		
		return "p_code = " + p_code + "p_name = " + p_name  + " p_type= " + p_type;
	}
	
	
}
