package cn.hcfy.bean;

public class user {
    private int userId;
    private String userName;
    private int gender;
    private int age;

    public user() {
    }

    public user(int userId, String userName, int gender, int age) {
        this.userId = userId;
        this.userName = userName;
        this.gender = gender;
        this.age = age;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public int getGender() {
        return gender;
    }

    public void setGender(int gender) {
        this.gender = gender;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    @Override
    public String toString() {
        return "user{" +
                "userId=" + userId +
                ", userName='" + userName + '\'' +
                ", gender=" + gender +
                ", age=" + age +
                '}';
    }
}
