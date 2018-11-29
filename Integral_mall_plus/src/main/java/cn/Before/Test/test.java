package cn.Before.Test;

import cn.Utils.MD5Util;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import redis.clients.jedis.Jedis;
import redis.clients.jedis.JedisPool;

public class test {
    public static void main(String[] args) {
       /* ApplicationContext atx=new ClassPathXmlApplicationContext("classpath:applicationContext.xml");
        JedisPool pool=(JedisPool)atx.getBean("redisClient");
        Jedis jedis=pool.getResource();
        jedis.set("k1","v1");
        System.out.println(jedis.get("k1"));
        jedis.close();
        pool.close();*/
        System.out.println(MD5Util.encryptPassword("123456"));
    }
}
