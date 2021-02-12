package com.nenu.entity;

import java.util.Date;

public class Order {
    //十七项
    private long orderId;//订单号,自动递增
    private String userName;//宾客姓名
    private String userGender;//性别
    private String userIdType;//证件类型
    private long userIdCerti;//证件编号
    private int peopleNum;//人数
    private String roomId;//房间号
    private String orderType;//房间类型
    private String inDate;//入住时间
    private int endDate;//预住天数
    private Double rentMemory;//押金
    private String orderState;//订单状态
    private String paymentTime;//结账时间
    public String remark;//备注
    private Double paymentId;//结账单号
    private String userTel;//用户手机
    private double payment;//总付款

    public Order() {
    }

    public Order(long orderId, String userName, String userGender, String userIdType, long userIdCerti, int peopleNum, String roomId, String orderType, String inDate, int endDate, Double rentMemory, String orderState, String paymentTime, String remark, Double paymentId, String userTel, double payment) {
        this.orderId = orderId;
        this.userName = userName;
        this.userGender = userGender;
        this.userIdType = userIdType;
        this.userIdCerti = userIdCerti;
        this.peopleNum = peopleNum;
        this.roomId = roomId;
        this.orderType = orderType;
        this.inDate = inDate;
        this.endDate = endDate;
        this.rentMemory = rentMemory;
        this.orderState = orderState;
        this.paymentTime = paymentTime;
        this.remark = remark;
        this.paymentId = paymentId;
        this.userTel = userTel;
        this.payment = payment;
    }

    @Override
    public String toString() {
        return "Order{" +
                "orderId=" + orderId +
                ", userName='" + userName + '\'' +
                ", userGender='" + userGender + '\'' +
                ", userIdType='" + userIdType + '\'' +
                ", userIdCerti=" + userIdCerti +
                ", peopleNum=" + peopleNum +
                ", roomId='" + roomId + '\'' +
                ", orderType='" + orderType + '\'' +
                ", inDate=" + inDate +
                ", endDate=" + endDate +
                ", rentMemory=" + rentMemory +
                ", orderState='" + orderState + '\'' +
                ", paymentTime=" + paymentTime +
                ", remark='" + remark + '\'' +
                ", paymentId=" + paymentId +
                ", userTel='" + userTel + '\'' +
                ", payment=" + payment +
                '}';
    }

    public long getOrderId() {
        return orderId;
    }

    public void setOrderId(long orderId) {
        this.orderId = orderId;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getUserGender() {
        return userGender;
    }

    public void setUserGender(String userGender) {
        this.userGender = userGender;
    }

    public String getUserIdType() {
        return userIdType;
    }

    public void setUserIdType(String userIdType) {
        this.userIdType = userIdType;
    }

    public long getUserIdCerti() {
        return userIdCerti;
    }

    public void setUserIdCerti(long userIdCerti) {
        this.userIdCerti = userIdCerti;
    }

    public int getPeopleNum() {
        return peopleNum;
    }

    public void setPeopleNum(int peopleNum) {
        this.peopleNum = peopleNum;
    }

    public String getRoomId() {
        return roomId;
    }

    public void setRoomId(String roomId) {
        this.roomId = roomId;
    }

    public String getOrderType() {
        return orderType;
    }

    public void setOrderType(String orderType) {
        this.orderType = orderType;
    }

    public String getInDate() {
        return inDate;
    }

    public void setInDate(String inDate) {
        this.inDate = inDate;
    }

    public int getEndDate() {
        return endDate;
    }

    public void setEndDate(int endDate) {
        this.endDate = endDate;
    }

    public Double getRentMemory() {
        return rentMemory;
    }

    public void setRentMemory(Double rentMemory) {
        this.rentMemory = rentMemory;
    }

    public String getOrderState() {
        return orderState;
    }

    public void setOrderState(String orderState) {
        this.orderState = orderState;
    }

    public String getPaymentTime() {
        return paymentTime;
    }

    public void setPaymentTime(String paymentTime) {
        this.paymentTime = paymentTime;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }

    public Double getPaymentId() {
        return paymentId;
    }

    public void setPaymentId(Double paymentId) {
        this.paymentId = paymentId;
    }

    public String getUserTel() {
        return userTel;
    }

    public void setUserTel(String userTel) {
        this.userTel = userTel;
    }

    public double getPayment() {
        return payment;
    }

    public void setPayment(double payment) {
        this.payment = payment;
    }
}

