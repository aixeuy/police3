package Data;

import person.Person;

import java.util.ArrayList;

/**
 * Created by Win7uX32 on 2015/7/17.
 */
public class Service {
    public static Hbmain data;
    public static void start(){
        if(data==null) {
            data = new Hbmain();
        }
        data.findAll();//create an arraylist of all people
    }
    public static void refresh(){
        data = new Hbmain();
    }
    public static Person getPersonByIndex(int i){
       return data.list.get(i);
    }
    public static ArrayList<Person> getList(){
        return data.list;
    }
    public static void exit(){
        if(Hbmain.sessionFactory!=null) {
            Hbmain.sessionFactory.close();
        }
    }
    public static void edit(Person ct, String type,String skin_color,String glasses,String u_color,String scarf,String bag,int l_length
            ,String figure,String hair_style,String character,String u_style,int u_length,String l_style,String shoe_style,
                            String behavior,int height,String hat,String hair_color,String collar,String u_character,
                            String l_color,String shoe_color){
        data.edit(ct, type,skin_color,glasses,u_color,scarf,bag,l_length
        ,figure,hair_style,character,u_style,u_length,l_style,shoe_style,
                behavior,height,hat,hair_color,collar,u_character,
                l_color,shoe_color);
    }
    public static void add(String type,String skin_color,String glasses,String u_color,String scarf,String bag,int l_length
            ,String figure,String hair_style,String character,String u_style,int u_length,String l_style,String shoe_style,
                    String behavior,int height,String hat,String hair_color,String collar,String u_character,
                    String l_color,String shoe_color){
        data.add(type,skin_color,glasses,u_color,scarf,bag,l_length
                ,figure,hair_style,character,u_style,u_length,l_style,shoe_style,
                behavior,height,hat,hair_color,collar,u_character,
                l_color,shoe_color);
        data.findAll();
    }
    public static void deletePerson(Person x){
        data.deletePerson(x);
        data.findAll();
    }
}
