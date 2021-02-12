package com.nenu.dao;

import com.nenu.entity.Order;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface OrderDao {

    //查询所有的订单
    public List<Order> searchAllOrders();

    //通过时间来查询订单
    public List<Order> searchOrdersByTime(@Param("time1")String time1, @Param("time2")String time2);

    //通过模糊查询查询订单（宾客姓名、证件编号、房间号）
    public List<Order> searchByKey();

    //通过订单id 修改订单
    public void editOrderById(String orderId);

    //添加订单
    public void addOrder(Order order);

    //删除订单
    public void deleteOrderById(String orderId);

    //通过订单id查询某个订单
    public Order selectOrderById(String orderId);

    //根据订单状态筛选订单
    public List<Order> selectOrderByState(String orderState);

    //通过时间和状态查询订单
    public List<Order> selectOrderByTimeAndState(@Param("time1") String time1, @Param("time2")String time2, @Param("orderState")String orderState);

    //根据管理员查询订单
    public List<Order> selectOrderByAdmin(String adminId);

}
