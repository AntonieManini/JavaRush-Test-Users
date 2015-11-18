package com.anton.test.domain;

import java.sql.Timestamp;
import javax.persistence.*;


@Entity
@Table(name="user")
public class User
{
        @Id
        @GeneratedValue(strategy = GenerationType.AUTO)
        private int id;
        @Column
        private String name;
        @Column
        private int age;
        @Column
        private Boolean isAdmin;
        @Column
        private Timestamp createdDate;

        
        
        public int getId() {
                return id;
        }

        public void setId(int id) {
                this.id = id;
        }

        public String getName() {
                return name;
        }

        public void setName(String name) {
                this.name = name;
        }

        public int getAge() {
                return age;
        }

        public void setAge(int age) {
                this.age = age;
        }


        public Boolean getIsAdmin() {
			return isAdmin;
		}

		public void setIsAdmin(Boolean isAdmin) {
			this.isAdmin = isAdmin;
		}

		public Timestamp getCreatedDate() {
			return createdDate;
		}

		public void setCreatedDate(Timestamp createdDate) {
			this.createdDate = createdDate;
		}		
}