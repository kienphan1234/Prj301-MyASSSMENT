/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author ADMIN
 */
public class Attendance {
    private int id;
    private String code;
    private String group;
    private String name ;
    private String className;
    private String date ;
    private int status;
    private String teacher;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Attendance(int id, String code, String group, String name, String className, String date, int status, String teacher) {
        this.id = id;
        this.code = code;
        this.group = group;
        this.name = name;
        this.className = className;
        this.date = date;
        this.status = status;
        this.teacher = teacher;
    }
    

    public String getTeacher() {
        return teacher;
    }

    public void setTeacher(String teacher) {
        this.teacher = teacher;
    }

    public Attendance(String code, String group, String name, String className, String date, int status, String teacher) {
        this.code = code;
        this.group = group;
        this.name = name;
        this.className = className;
        this.date = date;
        this.status = status;
        this.teacher = teacher;
    }
    
    public Attendance() {
    }

    public Attendance(String code, String group, String name, String className, String date, int status) {
        this.code = code;
        this.group = group;
        this.name = name;
        this.className = className;
        this.date = date;
        this.status = status;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getGroup() {
        return group;
    }

    public void setGroup(String group) {
        this.group = group;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getClassName() {
        return className;
    }

    public void setClassName(String className) {
        this.className = className;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }
    
    
    
}
