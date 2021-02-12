package com.nenu.controller;

import com.nenu.entity.Order;
import com.nenu.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@Controller
public class OrderController {

    @Autowired
    OrderService orderService;

    //去主页
    @RequestMapping("/tohome")
    public ModelAndView toHome(){
        ModelAndView mv = new ModelAndView();
        List<Order> list = orderService.searchAllOrders();
//        for (int i=0; i < list.size(); i++){
//            Date time = new Date(String.valueOf(list.get(i).getInDate()));
//            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
//            String timeFormat = sdf.format(time);
//            list.get(i).setInDate(timeFormat);
//            System.out.println(timeFormat);
//        }
        mv.addObject("list",list);
        mv.setViewName("order/order-query");
        return mv;
    }

    //筛选出来订单了
    @RequestMapping("/selectorder")
    public ModelAndView selectOrder(HttpServletRequest req, HttpServletResponse resp){
//        req.getParameter("condition");
        String time1 = req.getParameter("time1");
        String time2 = req.getParameter("time2");
        String orderState = req.getParameter("orderState");
        List<Order> listRes = null;
        if (orderState.isEmpty() && time1.isEmpty() && time2.isEmpty()){//全都为空
            listRes = orderService.searchAllOrders();
        }else if (orderState.isEmpty()){//状态为空
            listRes = orderService.searchOrdersByTime(time1, time2);
        }else if (time1.isEmpty() && time2.isEmpty()){//时间为空
            listRes = orderService.selectOrderByState(orderState);
        }else{//都有
            listRes = orderService.selectOrderByTimeAndState(time1, time2, orderState);
//            List<Order> list = orderService.searchOrdersByTime(time1,time2);
//            List<Order> list1 = orderService.selectOrderByState(orderState);
//
//            for (int i = 0; i < list.size(); i++){
//                if (list1.contains(list.get(i))){
//                    listRes.add(list.get(i));
//                }//求并集放进去
//            }
        }
        ModelAndView mv = new ModelAndView();
        mv.addObject("list",listRes);
        mv.setViewName("order/order-query");
        return mv;
    }

    //     去预定入住登记页面
    @RequestMapping("/checkin")
    public String checkIn(){
        return "order/order-check-in";
    }


    //     添加订单
    @RequestMapping("/addOrder")
    public String addOrder(Order order){
        order.setOrderId(11341234);
        orderService.addOrder(order);
        return "room/room-success";
    }


    //    结账
    @RequestMapping("/orderfinish")
    public String orderFinish(){
        return "order/order-finish";
    }


    //    订单详情
    @RequestMapping("orderdetails")
    public String orderDetail(){
        return "order/order-details";
    }


    //去收支管理页
    @RequestMapping("/financetoselect")
    public ModelAndView financeToSelect() throws ParseException {
        ModelAndView mv = new ModelAndView();
        List<Order> list = orderService.searchAllOrders();//所有的订单都会出来
        mv.addObject("list", list);
        mv.setViewName("finance/finance-toselect");
        return mv;
    }

    //通过时间筛选收支管理的订单
    @RequestMapping("/financeselect")
    public ModelAndView financeSelect(String time1, String time2){
        ModelAndView mv = new ModelAndView();
        System.out.println(time1 + time2);
        List<Order> list = orderService.searchOrdersByTime(time1, time2);
        mv.addObject("list", list);
        mv.setViewName("finance/finance-toselect");
        return mv;
    }

}
