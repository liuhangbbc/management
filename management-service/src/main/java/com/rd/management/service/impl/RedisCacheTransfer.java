package com.rd.management.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.connection.jedis.JedisConnectionFactory;

import com.rd.management.api.cache.RedisCache;

/** 
 * @ClassName: RedisCacheTransfer 
 * @Description: TODO(这里用一句话描述这个类的作用) 
 * @author liuhang liuhangbbc@sina.com
 * @date 2017年1月4日 下午3:05:42 
 *  
 */
public class RedisCacheTransfer {
	 @Autowired
	    public void setJedisConnectionFactory(JedisConnectionFactory jedisConnectionFactory) {
	        RedisCache.setJedisConnectionFactory(jedisConnectionFactory);
	    }
}
