package com.rd.management.api.serialize;

import java.io.IOException;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.rd.management.api.enums.admin.masterSexEnum;

/**
 * @ClassName: MasterSexSerialize
 * @Description: TODO(这里用一句话描述这个类的作用)
 * @author liuhang liuhangbbc@sina.com
 * @date 2016年12月7日 下午5:58:31
 * 
 */
public class MasterSexSerialize extends JsonSerializer<Integer> {

	/**
	 * 通过序列化生成对应枚举的值
	 */
	@Override
	public void serialize(Integer val, JsonGenerator generator,
			SerializerProvider provider) throws IOException,
			JsonProcessingException {
		generator.writeString(masterSexEnum.getName(val));

	}

}
