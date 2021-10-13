package org.zerock.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class Criteria {

	private int pageNum;
	private int amount;

	public Criteria() {
		this(1, 0);
	}

	public Criteria(int pageNum, int amout) {
		this.pageNum = pageNum;
		this.amount = amout;
	}
}
