package model;

public class Instructor {
    private int id;
    private String name;
    private int gender;
    private String mail;
    private String address;
    private String phoneNum;

    public Instructor(int id, String name, int gender, String mail, String address, String phoneNum) {
        this.id = id;
        this.name = name;
        this.gender = gender;
        this.mail = mail;
        this.address = address;
        this.phoneNum = phoneNum;
    }

    public Instructor(String name, int gender, String mail, String address, String phoneNum) {
        this.name = name;
        this.gender = gender;
        this.mail = mail;
        this.address = address;
        this.phoneNum = phoneNum;
    }

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

    public int getGender() {
        return gender;
    }

    public void setGender(int gender) {
        this.gender = gender;
    }

    public String getMail() {
        return mail;
    }

    public void setMail(String mail) {
        this.mail = mail;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPhoneNum() {
        return phoneNum;
    }

    public void setPhoneNum(String phoneNum) {
        this.phoneNum = phoneNum;
    }

}
