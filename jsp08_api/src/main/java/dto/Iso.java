package dto;

public class Iso {
	private String code;
	private String name;
	//생성자
	//getter, setter
	//toString
	public Iso() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "Iso [code=" + code + ", name=" + name + "]";
	}
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Iso(String code, String name) {
		super();
		this.code = code;
		this.name = name;
	}
}
