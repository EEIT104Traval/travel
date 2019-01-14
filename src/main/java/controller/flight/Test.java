package controller.flight;

public class Test {
	
	private String code;
	
	private String airline;

	@Override
	public String toString() {
		return "Test [code=" + code + ", airline=" + airline + "]";
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public String getAirline() {
		return airline;
	}

	public void setAirline(String airline) {
		this.airline = airline;
	}

}
