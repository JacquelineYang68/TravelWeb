package com.xingying.travel.service;

import com.alipay.api.AlipayApiException;
import com.xingying.travel.config.AlipayUtil;
import com.xingying.travel.pojo.AlipayBean;
import org.springframework.stereotype.Service;

@Service(value = "alipayOrderService")
public class PayServiceImpl implements PayService{

    @Override
    public String aliPay(AlipayBean alipayBean) throws AlipayApiException {
        return AlipayUtil.connect(alipayBean);
    }
}