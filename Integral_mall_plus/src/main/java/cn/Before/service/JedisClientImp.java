package cn.Before.service;

import cn.dao.JedisClient;
import org.springframework.beans.factory.annotation.Autowired;
import redis.clients.jedis.Jedis;
import redis.clients.jedis.JedisPool;

public class JedisClientImp implements JedisClient {

    @Autowired
    private JedisPool jedisPool;
    //获取内容
    @Override
    public String get(String key) {
        Jedis jedis=jedisPool.getResource();
        String string=jedis.get(key);
        jedis.close();
        return string;
    }
//设置内容
    @Override
    public String set(String key, String value) {
        Jedis jedis=jedisPool.getResource();
        String string=jedis.set(key,value);
        jedis.close();
        return string;
    }
//哈希数据获取
    @Override
    public String hget(String hkey, String key) {
        Jedis jedis=jedisPool.getResource();
        String string=jedis.hget(hkey,key);
        jedis.close();
        return string;
    }
//哈希数据设置
    @Override
    public long hset(String hkey, String key, String value) {
        Jedis jedis=jedisPool.getResource();
        long aLong=jedis.hset(hkey,key,value);
        jedis.close();
        return aLong;
    }
    //过期时间设置
    @Override
    public long expire(String key, int second) {
        Jedis jedis=jedisPool.getResource();
        long aLong=jedis.expire(key,second);
        jedis.close();
        return aLong;
    }

    @Override
    public long incr(String key) {
        Jedis jedis=jedisPool.getResource();
        long aLong=jedis.incr(key);
        jedis.close();
        return aLong;
    }

    //返回剩余时间
    @Override
    public long ttl(String key) {
        Jedis jedis=jedisPool.getResource();
        long aLong=jedis.ttl(key);
        jedis.close();
        return aLong;
    }
//删除键对应的值
    @Override
    public long del(String key) {
        Jedis jedis=jedisPool.getResource();
        long aLong=jedis.del(key);
        jedis.close();
        return aLong;
    }
}
