///문제 - 1개의 자동차가 3번 달리게 해주세요.

public class problem3 {
    public static void main(String[] args) {
        Car a = new Car();
        a.달리다();
        a.달리다();
        a.달리다();

    }

}

class Car {
    int carNo;
    String carName;

    void 달리다() {
        System.out.println("달리고있어요");
    }

}