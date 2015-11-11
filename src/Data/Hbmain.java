package Data;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import person.Person;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class Hbmain {
    public ArrayList<Person> list;
    public Person onedit;
    public static SessionFactory sessionFactory;//数据存储源
    static {
        try {
            Configuration config = new Configuration().configure();
            sessionFactory = config.buildSessionFactory();

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void savePerson(Person ct) {
        Session session = sessionFactory.openSession();
        Transaction tx = null;
        try {
            tx = session.beginTransaction();
            session.save(ct);
            tx.commit();
        } catch (Exception e) {
            tx.rollback();
            e.printStackTrace();
        } finally {
            session.close();
        }
    }
    public void findAll() {
        Session session = sessionFactory.openSession();
        Transaction tx = null;
        list=new ArrayList<Person>();
        try {
            tx = session.beginTransaction();
            List persons = session.createQuery(
                    "from Person as c order by c.id asc").list();
            Iterator it = persons.iterator();
            //System.out.println("append:"+persons.size());
            while(it.hasNext())
            {
                Person c = (Person)it.next();
                //System.out.println(c.toString());
                list.add(c);
            }
            tx.commit();
        } catch (Exception e) {
            tx.rollback();
        } finally {
            session.close();
        };
    }
    public void deletePerson(Person x){
        Session session = sessionFactory.openSession();
        Transaction tx = null;
        try {
            tx = session.beginTransaction();
            session.delete(x);
            tx.commit();

        } catch (Exception e) {
            if (tx != null) {
                tx.rollback();
            }
            e.printStackTrace();

        } finally {
            session.close();
        }
    }
    public void edit(Person ct, String type,String skin_color,String glasses,String u_color,String scarf,String bag,int l_length
            ,String figure,String hair_style,String character,String u_style,int u_length,String l_style,String shoe_style,
                     String behavior,int height,String hat,String hair_color,String collar,String u_character,
                     String l_color,String shoe_color) {
        Session session = sessionFactory.openSession();
        Transaction tx = null;
        try {
            tx = session.beginTransaction();
            Person c = (Person) session.load(Person.class, ct.getId());
            c.setType(type);
            c.setSkin_color(skin_color);
            c.setGlasses(glasses);
            c.setU_color(u_color);
            c.setScarf(scarf);
            c.setBag(bag);
            c.setL_length(l_length);
            c.setFigure(figure);
            c.setHair_style(hair_style);
            c.setCharacter(character);
            c.setU_style(u_style);
            c.setU_length(u_length);
            c.setL_style(l_style);
            c.setShoe_style(shoe_style);
            c.setBehavior(behavior);
            c.setHeight(height);
            c.setHat(hat);
            c.setHair_color(hair_color);
            c.setCollar(collar);
            c.setU_character(u_character);
            c.setL_color(l_color);
            c.setShoe_color(shoe_color);
            tx.commit();

        } catch (Exception e) {
            if (tx != null) {
                tx.rollback();
            }
            e.printStackTrace();

        } finally {
            session.close();
        }

    }
    public void loadUpdate(int person_id, String name) {
        Session session = sessionFactory.openSession();
        Transaction tx = null;
        try {
            tx = session.beginTransaction();
            Person c = (Person) session.load(Person.class, person_id);
            c.setType(name);
            tx.commit();

        } catch (Exception e) {
            if (tx != null) {
                tx.rollback();
            }
            e.printStackTrace();

        } finally {
            session.close();
        }

    }

    public void add(String type,String skin_color,String glasses,String u_color,String scarf,String bag,int l_length
            ,String figure,String hair_style,String character,String u_style,int u_length,String l_style,String shoe_style,
                    String behavior,int height,String hat,String hair_color,String collar,String u_character,
                    String l_color,String shoe_color){
        Person ct = new Person();
        ct.setType(type);
        ct.setSkin_color(skin_color);
        ct.setGlasses(glasses);
        ct.setU_color(u_color);
        ct.setScarf(scarf);
        ct.setBag(bag);
        ct.setL_length(l_length);
        ct.setFigure(figure);
        ct.setHair_style(hair_style);
        ct.setCharacter(character);
        ct.setU_style(u_style);
        ct.setU_length(u_length);
        ct.setL_style(l_style);
        ct.setShoe_style(shoe_style);
        ct.setBehavior(behavior);
        ct.setHeight(height);
        ct.setHat(hat);
        ct.setHair_color(hair_color);
        ct.setCollar(collar);
        ct.setU_character(u_character);
        ct.setL_color(l_color);
        ct.setShoe_color(shoe_color);
        this.savePerson(ct);
        /*this.edit(ct,"volevo","un","gatto","nero","nero","nero",1,"mi","ha","datto","un",5,"gatto","bianco","e",1,"io"
                ,"non","ci","sto","piu","?");*/
        //this.deletePerson(ct);
    }

    public void clear(){
        Session session = sessionFactory.openSession();
        Transaction tx = null;
        try {
            tx = session.beginTransaction();
            List persons = session.createQuery(
                    "from Person as c order by c.type asc").list();
            Iterator it = persons.iterator();
            while(it.hasNext())
            {
                Person c = (Person)it.next();
                session.delete(c);
            }
            tx.commit();
        } catch (Exception e) {
            System.out.println(e.toString());
            tx.rollback();
        } finally {
            session.close();
        }
    }
    /*public void delete(){
            java.util.Scanner sc=new java.util.Scanner(System.in);
            System.out.print("id:");
            int id=sc.nextInt();
            this.deletePersonById(id);
        }
        public void change(){
            java.util.Scanner sc=new java.util.Scanner(System.in);
            System.out.print("id:");
            int id=sc.nextInt();
            sc=new java.util.Scanner(System.in);
            System.out.print("name");
            String s=sc.nextLine();
            changePersonNameById(id,s);
        }
        public void search(){
            java.util.Scanner sc=new java.util.Scanner(System.in);
            sc=new java.util.Scanner(System.in);
            System.out.print("name");
            String s=sc.nextLine();
            searchPersonbyName(s);
        }*/
    public void test()
    {
        this.clear();
        String s="";
        this.add("volevo","un","gatto","nero","nero","nero",1,"mi","ha","datto","un",5,"gatto","bianco","e",1,"io"
                ,"non","ci","sto","piu","!");
        //this.clear();
        this.findAll();
    }


    /*public static void main(String[] args) {
        // TODO Auto-generated method stub
        Hbmain hb = new Hbmain();
        //hb.findAll();
        hb.test();
        sessionFactory.close();

    }*/
}