import model.Student;

public class Main {
    public static void main(String[] args) {
        Student student = new Student("chiharakenta", 27);
        System.out.println(student.getName());
        System.out.println(student.getAge());
    }
}