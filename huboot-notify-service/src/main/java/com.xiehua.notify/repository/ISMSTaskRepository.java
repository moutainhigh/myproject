package com.xiehua.notify.repository;

import com.xiehua.notify.entity.SMSTask;
import org.springframework.data.mongodb.repository.MongoRepository;
import org.springframework.stereotype.Repository;

/**
 * Created by Administrator on 2018/8/16 0016.
 */
@Repository
public interface ISMSTaskRepository extends MongoRepository<SMSTask, String> {


}
