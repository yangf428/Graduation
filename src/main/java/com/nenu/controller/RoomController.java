package com.nenu.controller;

import com.nenu.entity.Room;
import com.nenu.service.RoomService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
public class RoomController {

    @Autowired
    RoomService roomService;

    //去添加客房（填写信息）
    @RequestMapping("/toaddroom")
    public String toAddRoom(){
        return "room/room-add";
    }


    //添加客房（处理添加客房的信息）
    @RequestMapping("/addroom")
    public String addRoom(Room room) throws Exception {
        System.out.println(room);//查看是否获取到room
        //room.setRoomState("empty");//刚加入房间状况是空
        room.setRoomState("empty");
        roomService.addRoom(room);
        return "room/room-success";
    }

    //选择客房（跳转到输入房间号的表单）
    @RequestMapping("/roomselect")
    public String selectRoom(){
        return "room/room-select";
    }


    //显示查出来的客房
    @RequestMapping("/searchroom")
    public ModelAndView searchRoom(String roomId){
        System.out.println(roomId);//得到房间号
        ModelAndView mv = new ModelAndView();
        try{
            Room room = roomService.searchRoom(roomId);
            if (room == null){
                mv.setViewName("room/room-failed");//没查到
            }else{
                System.out.println(room);//输出得到的room对象
                mv.addObject("room", room);
                mv.setViewName("room/room-select-res");
                //添加数据库查询出的room对象到mv中
            }
        }catch (Exception e){
            mv.setViewName("room/room-failed");
        }
        return mv;
    }


    //提交修改信息 修改客房
    @RequestMapping("/roomupdate")
    public String roomUpdate(Room room) throws Exception {
        room.setRoomState("full");
        System.out.println(room);
        roomService.updateRoom(room);//在数据库中修改房型
        return "room/room-success";
    }

    //删除客房
    @RequestMapping("/roomdelete")
    public String roomDelete(String roomId) throws Exception {
//        String roomId = room.getRoomId();
        System.out.println(roomId);
        roomService.deleteRoom(roomId);
        return "room/room-success";
    }


    //查询房间状态
    @RequestMapping("/roomstate")
    public ModelAndView roomState(String roomType) throws Exception {
        ModelAndView mv = new ModelAndView();
        List<Room> list;
        if (roomType == null){
            list = roomService.searchEveryRoom();//查找到了所有的房间
        }
        else{
            list = roomService.searchRoomByType(roomType);//查找指定类型的房间
        }
//        int i;
//        for (i=0; i < list.size();i++){
//            System.out.println(list.get(i));
//        }
        mv.addObject("list",list);//查询房间状态
        mv.setViewName("room/room-state");
        return mv;
    }


//    //通过房间类型查询房间
//    @RequestMapping("/searchRoomByType")
//    public ModelAndView searchRoomByType(String roomType) throws Exception{
//        ModelAndView mv = new ModelAndView();
//        List<Room> list = roomService.searchRoomByType(roomType);
//        mv.addObject("list", list);
//        mv.setViewName("room/room-state");
//        return mv;
//    }

    //查询房间状态
//    @RequestMapping("/roomstate")
//    public ModelAndView roomState(String roomType) throws Exception {
//        ModelAndView mv = new ModelAndView();
//        List<Room> list;
//        if (roomType == null){
//            list = roomService.searchEveryRoom();//查找到了所有的房间
//        }else {
//            list = roomService.searchRoomByType(roomType);
//        }
//        int i;
//        for (i=0; i < list.size();i++){
//            System.out.println(list.get(i));
//        }
//        mv.addObject("list",list);//查询房间状态
//        mv.setViewName("room/room-state");
//        return mv;
//    }

    //查询房间状态的同时看某个房间的信息
    @RequestMapping("/someroomstate")
    public ModelAndView someRoomState(String roomId) throws Exception {
        ModelAndView mv = new ModelAndView();
        if (!roomId.isEmpty()){
            Room someRoom = roomService.searchRoom(roomId);
            someRoom.setRoomWifi("有");
            mv.addObject("someRoom",someRoom);//把这个查找到的房间放进去
            System.out.println(someRoom);
        }
        List<Room> list = roomService.searchEveryRoom();//查找到了所有的房间
        int i;
        for (i=0; i < list.size();i++){
            System.out.println(list.get(i));
        }
        mv.addObject("list",list);
        mv.setViewName("room/room-state");
        return mv;
    }

}
