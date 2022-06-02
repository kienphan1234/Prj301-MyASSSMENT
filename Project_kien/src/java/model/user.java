/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author ADMIN
 */
public class user {
    private String id;
    private String sur_name;
    private String middle_name;
    private String give_name;
    private String dob; 
    private String phone;
    private String sex;
    private String id_card;
    private String address;
    private String email;
    private String campus;
    private String user_name;
    private String pasword;

    public user() {
    }



    public user(String id, String sur_name, String middle_name, String give_name, String dob, String phone, String sex, String id_card, String address, String email, String campus) {

        this.id = id;
        this.sur_name = sur_name;
        this.middle_name = middle_name;
        this.give_name = give_name;
        this.dob = dob;
        this.phone = phone;
        this.sex = sex;
        this.id_card = id_card;
        this.address = address;
        this.email = email;
        this.campus = campus;
        this.user_name = user_name;
        this.pasword = pasword;
    }

    public String getUser_name() {
        return user_name;
    }

    public void setUser_name(String user_name) {
        this.user_name = user_name;
    }

    public String getPasword() {
        return pasword;
    }

    public void setPasword(String pasword) {
        this.pasword = pasword;
    }

  
    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getSur_name() {
        return sur_name;
    }

    public void setSur_name(String sur_name) {
        this.sur_name = sur_name;
    }

    public String getMiddle_name() {
        return middle_name;
    }

    public void setMiddle_name(String middle_name) {
        this.middle_name = middle_name;
    }

    public String getGive_name() {
        return give_name;
    }

    public void setGive_name(String give_name) {
        this.give_name = give_name;
    }

    public String getDob() {
        return dob;
    }

    public void setDob(String dob) {
        this.dob = dob;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public String getId_card() {
        return id_card;
    }

    public void setId_card(String id_card) {
        this.id_card = id_card;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getCampus() {
        return campus;
    }

    public void setCampus(String campus) {
        this.campus = campus;
    }

    @Override
    public String toString() {
        return "user{" + "id=" + id + ", sur_name=" + sur_name + ", middle_name=" + middle_name + ", give_name=" + give_name + ", dob=" + dob + ", phone=" + phone + ", sex=" + sex + ", id_card=" + id_card + ", address=" + address + ", email=" + email + ", campus=" + campus + '}';
    }
    
}
