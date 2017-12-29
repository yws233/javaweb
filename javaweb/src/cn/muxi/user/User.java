package cn.muxi.user;

import java.util.List;

public class User {
    private Integer uid;
    private String uname;
    private String upass;
    private List<String> habits;

    public Integer getUid() {
        return uid;
    }

    public void setUid(Integer uid) {
        this.uid = uid;
    }

    public String getUname() {
        return uname;
    }

    public void setUname(String uname) {
        this.uname = uname;
    }

    public String getUpass() {
        return upass;
    }

    public void setUpass(String upass) {
        this.upass = upass;
    }

    public List getHabits() {
        return habits;
    }

    public void setHabits(List habits) {
        this.habits = habits;
    }
}
