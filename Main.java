// 선생님이 내주신 수업시간에 푸는 문제들 VSCODE 이용 풀이 
public class Main {
    public static void main(String[] args) {
        Car a = new Car();
        a.name = "마티즈";
        a.length = 125.5;
        a.CarNo = 1;
        a.colar = "황금색";
        System.out.println(a);
    }
}

class Car {
    String name;
    double length;
    int CarNo;
    String colar;
}