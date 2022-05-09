package com.xingying.travel.service;

import com.alipay.api.AlipayApiException;
import com.xingying.travel.pojo.AlipayBean;

public interface PayService {
    String aliPay(AlipayBean alipayBean) throws AlipayApiException;
}

