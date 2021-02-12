package com.nenu.dao;

import com.nenu.entity.Room;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface RoomDao {

    //  把所有的房间都查询出来
    public List<Room> searchEveryRoom();

    //  查询指定房型
    public List<Room> searchRoomByType(String roomType);

    //  查询某一个房号的客房
    public Room searchRoom(String roomId);

    //  添加房间
    public void addRoom(Room room);

    //  删除房间
    public void deleteRoom(String roomId);

    //  修改房间
    public void updateRoom(Room room);
}
