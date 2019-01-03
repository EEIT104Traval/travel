package model.tour;

import java.io.Serializable;

import javax.persistence.Embeddable;
@Embeddable
public class TourMemberInfoPK implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 3446849013905576197L;
	//PK
	private Integer serialNo;
	//PK
	private Integer purchaseOrder;

	public Integer getSerialNo() {
		return serialNo;
	}

	public void setSerialNo(Integer serialNo) {
		this.serialNo = serialNo;
	}

	public Integer getPurchaseOrder() {
		return purchaseOrder;
	}

	public void setPurchaseOrder(Integer purchaseOrder) {
		this.purchaseOrder = purchaseOrder;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	public TourMemberInfoPK() {
	}
	
	public TourMemberInfoPK (Integer serialNo,Integer purchaseOrder) {
		this.serialNo=serialNo;
		this.purchaseOrder=purchaseOrder;
	}
	
	@Override
	public int hashCode() {
		final int PRIME = 31;
		int result = 1;
		result = PRIME * result + (serialNo == null ? 0 : serialNo.hashCode());
		result = PRIME * result + (purchaseOrder == null ? 0 : purchaseOrder.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if(this == obj) return true;
		if(obj == null) return false;
		if(!(obj instanceof TourMemberInfoPK)) return false;
		TourMemberInfoPK objKey = (TourMemberInfoPK)obj;
		if(serialNo.equals(objKey.serialNo) &&
			purchaseOrder.equals(objKey.purchaseOrder)) {
			return true;
		}
		return false;
	}
	
}
