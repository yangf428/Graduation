package com.nenu.service.Impl;

import com.nenu.dao.OrderDao;
import com.nenu.entity.Order;
import com.nenu.service.OrderService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class OrderServiceImpl implements OrderService {

    @Resource
    private OrderDao orderDao;

    @Override
    public List<Order> searchAllOrders() {
        List<Order> list = orderDao.searchAllOrders();
        return list;
    }

    @Override
    public List<Order> searchOrdersByTime(String time1, String time2) {
        List<Order> list = orderDao.searchOrdersByTime(time1, time2);
        return list;
    }

    @Override
    public List<Order> searchByKey() {
        List<Order> list = orderDao.searchByKey();
        return list;
    }

    @Override
    public void editOrderById(String orderId) {
        orderDao.editOrderById(orderId);
    }

    @Override
    public void addOrder(Order order) {
        orderDao.addOrder(order);
    }

    @Override
    public void deleteOrderById(String orderId) {
        orderDao.deleteOrderById(orderId);
    }

    @Override
    public Order selectOrderById(String orderId) {
        Order order = orderDao.selectOrderById(orderId);
        return order;
    }

    @Override
    public List<Order> selectOrderByState(String orderState) {
        List<Order> list = orderDao.selectOrderByState(orderState);
        return list;
    }

    @Override
    public List<Order> selectOrderByTimeAndState(String time1, String time2, String orderState) {
        List<Order> list = orderDao.selectOrderByTimeAndState(time1,time2,orderState);
        return list;
    }

    @Override
    public List<Order> selectOrderByAdmin(String adminId) {
        List<Order> list = orderDao.selectOrderByAdmin(adminId);
        return list;
    }
}
