package com.nenu.service;

import com.nenu.entity.Room;
import java.util.List;

public interface RoomService {

    //  把所有的房间都查询出来
    public List<Room> searchEveryRoom() throws Exception;

    //  查询某个类型的房间
    public List<Room> searchRoomByType(String roomType) throws Exception;

    //  查询某一个房号的客房
    public Room searchRoom(String roomId);

    //  添加房间
    public void addRoom(Room room) throws Exception;

    //  删除房间
    public void deleteRoom(String roomId) throws Exception;

    //  修改房间
    public void updateRoom(Room room) throws Exception;
}
