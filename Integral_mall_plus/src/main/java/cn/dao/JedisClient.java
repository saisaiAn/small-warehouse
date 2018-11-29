package cn.dao;

public interface JedisClient {
    String get(String key);
    String set(String key,String value);
    String hget(String hkey,String key);
    long hset(String hkey,String key,String value);
    long expire(String key,int second);
    long incr(String key);
    long ttl(String key);
    long del(String key);
}
