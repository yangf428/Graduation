package com.nenu.entity;

//房间类型的类
public class Room {
    private String roomId;//客房号
    private String roomType;//客房种类
    private String roomArea;//客房面积
    private String roomState;//客房状态
    private String  roomContain;//客房可容纳
    private String roomWindow;//是否有窗
    private String airCondition;//是否有空调
    private String roomWifi;//是否有wifi
    private String roomPrice;//房间价格
    private String bathRoom;//卫生间是否独立
    private String remarks;//备注
    private String bookingInstructions;//预订说明
    private String rulesOfUse;//使用规则
    private String descriptionsOfRoomType;//房型说明
    private String roomPhotos;//房间照片

    public Room() {
    }

    public Room(String roomId, String roomType, String roomArea, String roomState, String roomContain, String roomWindow, String airCondition, String roomWifi, String roomPrice, String bathRoom, String remarks, String bookingInstructions, String rulesOfUse, String descriptionsOfRoomType, String roomPhotos) {
        this.roomId = roomId;
        this.roomType = roomType;
        this.roomArea = roomArea;
        this.roomState = roomState;
        this.roomContain = roomContain;
        this.roomWindow = roomWindow;
        this.airCondition = airCondition;
        this.roomWifi = roomWifi;
        this.roomPrice = roomPrice;
        this.bathRoom = bathRoom;
        this.remarks = remarks;
        this.bookingInstructions = bookingInstructions;
        this.rulesOfUse = rulesOfUse;
        this.descriptionsOfRoomType = descriptionsOfRoomType;
        this.roomPhotos = roomPhotos;
    }

    @Override
    public String toString() {
        return "Room{" +
                "roomId='" + roomId + '\'' +
                ", roomType='" + roomType + '\'' +
                ", roomArea='" + roomArea + '\'' +
                ", roomState='" + roomState + '\'' +
                ", roomContain='" + roomContain + '\'' +
                ", roomWindow='" + roomWindow + '\'' +
                ", airCondition='" + airCondition + '\'' +
                ", roomWifi='" + roomWifi + '\'' +
                ", roomPrice='" + roomPrice + '\'' +
                ", bathRoom='" + bathRoom + '\'' +
                ", remarks='" + remarks + '\'' +
                ", bookingInstructions='" + bookingInstructions + '\'' +
                ", rulesOfUse='" + rulesOfUse + '\'' +
                ", descriptionsOfRoomType='" + descriptionsOfRoomType + '\'' +
                ", roomPhotos='" + roomPhotos + '\'' +
                '}';
    }

    public String getRoomId() {
        return roomId;
    }

    public void setRoomId(String roomId) {
        this.roomId = roomId;
    }

    public String getRoomType() {
        return roomType;
    }

    public void setRoomType(String roomType) {
        this.roomType = roomType;
    }

    public String getRoomArea() {
        return roomArea;
    }

    public void setRoomArea(String roomArea) {
        this.roomArea = roomArea;
    }

    public String getRoomState() {
        return roomState;
    }

    public void setRoomState(String roomState) {
        this.roomState = roomState;
    }

    public String getRoomContain() {
        return roomContain;
    }

    public void setRoomContain(String roomContain) {
        this.roomContain = roomContain;
    }

    public String getRoomWindow() {
        return roomWindow;
    }

    public void setRoomWindow(String roomWindow) {
        this.roomWindow = roomWindow;
    }

    public String getAirCondition() {
        return airCondition;
    }

    public void setAirCondition(String airCondition) {
        this.airCondition = airCondition;
    }

    public String getRoomWifi() {
        return roomWifi;
    }

    public void setRoomWifi(String roomWifi) {
        this.roomWifi = roomWifi;
    }

    public String getRoomPrice() {
        return roomPrice;
    }

    public void setRoomPrice(String roomPrice) {
        this.roomPrice = roomPrice;
    }

    public String getBathRoom() {
        return bathRoom;
    }

    public void setBathRoom(String bathRoom) {
        this.bathRoom = bathRoom;
    }

    public String getRemarks() {
        return remarks;
    }

    public void setRemarks(String remarks) {
        this.remarks = remarks;
    }

    public String getBookingInstructions() {
        return bookingInstructions;
    }

    public void setBookingInstructions(String bookingInstructions) {
        this.bookingInstructions = bookingInstructions;
    }

    public String getRulesOfUse() {
        return rulesOfUse;
    }

    public void setRulesOfUse(String rulesOfUse) {
        this.rulesOfUse = rulesOfUse;
    }

    public String getDescriptionsOfRoomType() {
        return descriptionsOfRoomType;
    }

    public void setDescriptionsOfRoomType(String descriptionsOfRoomType) {
        this.descriptionsOfRoomType = descriptionsOfRoomType;
    }

    public String getRoomPhotos() {
        return roomPhotos;
    }

    public void setRoomPhotos(String roomPhotos) {
        this.roomPhotos = roomPhotos;
    }
}

