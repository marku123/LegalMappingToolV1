package country;

public class Country {

	private int CountryID;
	private String CountryName;
	private String CountryRegion;
	private String ConstituionYesNo;
	private String BasicRights;
	private String[] IntlInstr;
	private String[] Judical;
		
	public Country(int countryID, String countryName, String countryRegion,
			String constituionYesNo, String basicRights, String[] intlInstr,
			String[] judical) {
		super();
		CountryID = countryID;
		CountryName = countryName;
		CountryRegion = countryRegion;
		ConstituionYesNo = constituionYesNo;
		BasicRights = basicRights;
		IntlInstr = intlInstr;
		Judical = judical;
	}
	
	
	public int getCountryID() {
		return CountryID;
	}
	public void setCountryID(int countryID) {
		CountryID = countryID;
	}
	public String getCountryName() {
		return CountryName;
	}
	public void setCountryName(String countryName) {
		CountryName = countryName;
	}
	public String getCountryRegion() {
		return CountryRegion;
	}
	public void setCountryRegion(String countryRegion) {
		CountryRegion = countryRegion;
	}
	public String getConstituionYesNo() {
		return ConstituionYesNo;
	}
	public void setConstituionYesNo(String constituionYesNo) {
		ConstituionYesNo = constituionYesNo;
	}
	public String getBasicRights() {
		return BasicRights;
	}
	public void setBasicRights(String basicRights) {
		BasicRights = basicRights;
	}
	public String[] getIntlInstr() {
		return IntlInstr;
	}
	public void setIntlInstr(String[] intlInstr) {
		IntlInstr = intlInstr;
	}
	public String[] getJudical() {
		return Judical;
	}
	public void setJudical(String[] judical) {
		Judical = judical;
	}

	
	
	


}