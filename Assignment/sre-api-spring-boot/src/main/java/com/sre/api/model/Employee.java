package com.sre.api.model;
import lombok.Data;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;
import javax.persistence.Id;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;

@Data
@Entity
@Table(name="employee")
public class Employee {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private long Id;
	
	@Column(name="firstname" , nullable=false)
	private String firstname;
	
	@Column(name="lastname")
	private String lastname;
	
	@Column(name="email" , nullable=false )
	private String email;

}
