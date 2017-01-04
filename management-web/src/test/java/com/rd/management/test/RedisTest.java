package com.rd.management.test;

import org.apache.log4j.Logger;
import org.junit.Test;
import org.slf4j.LoggerFactory;

import redis.clients.jedis.Jedis;

/**
 * 
 * @ClassName: daoTest
 * @author liuhang liuhangbbc@sina.com
 * @date 2016年9月18日 下午2:26:55
 *
 */
public class RedisTest
{


    /*
     * 二级缓存测试
     */
    @Test
    public void testCache() {
    	 //Connecting to Redis server on localhost
        Jedis jedis = new Jedis("192.168.198.130");
    }   

}
