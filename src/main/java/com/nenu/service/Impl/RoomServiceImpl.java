package com.nenu.service.Impl;

import com.nenu.dao.RoomDao;
import com.nenu.entity.Room;
import com.nenu.service.RoomService;

import org.springframework.stereotype.Service;
import javax.annotation.Resource;

import java.util.List;

@Service
public class RoomServiceImpl implements RoomService {

    @Resource
    private RoomDao roomDao;

    //查询所有的房间
    @Override
    public List<Room> searchEveryRoom() throws Exception {
        List<Room> list = roomDao.searchEveryRoom();
        return list;
    }

    //查询指定类型的房间
    @Override
    public List<Room> searchRoomByType(String roomType) throws Exception {
        List<Room> list = roomDao.searchRoomByType(roomType);
        return list;
    }

    //查询房间
    @Override
    public Room searchRoom(String roomId) {
        Room room = roomDao.searchRoom(roomId);
        return room;
    }

    //添加房间
    @Override
    public void addRoom(Room room) throws Exception {
        roomDao.addRoom(room);
    }

    //删除房间
    @Override
    public void deleteRoom(String roomId) throws Exception {
        roomDao.deleteRoom(roomId);
    }

    //修改房间
    @Override
    public void updateRoom(Room room) throws Exception {
        roomDao.updateRoom(room);
    }
}
