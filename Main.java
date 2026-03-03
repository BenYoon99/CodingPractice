import java.util.ArrayList;

interface Actions {
    public void attack();

    public void move();
}

class Ionia implements Actions {
    String name;
    int ad;
    int ap;
    int hp;

    Ionia(String name, int ad){
        this.ad=ad;
        this.name= name;
        
    }
    
    public void attack() {
        System.out.println(name + "이(가) 공격합니다.");
    }

    @Override
    public void move() {
        System.out.println(name + "이(가) 이동합니다.");
}
}
class Yasuo extends Ionia{
    Yasuo(String name,int ad){
        super(name, ad);
    }
    @Override 

    public void attack(){
        System.out.println("야스오가 회오리를 날려 공격합니다");
            this.ad +=1;
        
    }
    @Override 

    public void move(){
        System.out.println((this.name)+" 이 이동합니다");
    }
}


class Main {
    public static void main(String[] args) {
        Ionia yasuo = new Yasuo("야스오", 150);
        yasuo.attack();
    }
}