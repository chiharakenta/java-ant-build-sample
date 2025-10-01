package model;

public class Student {
    private String name;
    private int age;

    public static void main(String[] args) {
        System.out.println("Hello World");
    }
    
    public Student(String name, int age) {
        this.name = name;
        this.age = age;
    }

    public String getName() {
        return name;
    }
    public int getAge() {
        return age;
    }    
}
