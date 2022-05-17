import 'package:flutter/material.dart';
 class ChatScreenModel{
   final String? name;
   final String urlImg;
   final String? message;
   final String? time;
   final String? timeZone;

  ChatScreenModel({this.name, required this.urlImg, this.message, this.time, this.timeZone});
 }
 List<ChatScreenModel> ChatScreenList =[
   ChatScreenModel(
     name:"Jim",
     urlImg: "https://images.unsplash.com/photo-1514481422339-db621c1fca86?ixid=MXwxMjA3fDB8MHxzZWFyY2h8Mnx8bWFsZXxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
     message: "Hi There",
     time: "12:30",
     timeZone: "pm"
   ),
   ChatScreenModel(
       name:"Sia",
       urlImg: "https://images.unsplash.com/photo-1524666041070-9d87656c25bb?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NXx8bWFsZXxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
       message: "When you are arriving?",
       time: "11:45",
       timeZone: "am"
   ),
   ChatScreenModel(
       name: " Spectre",
       message: "Hey I am waiting for you",
       time: "11:30",
       timeZone: 'am',
       urlImg:
       "https://images.unsplash.com/photo-1441786485319-5e0f0c092803?ixid=MXwxMjA3fDB8MHxzZWFyY2h8N3x8bWFsZXxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"
   ),
   ChatScreenModel(
       name: " Johny ",
       message: "When will we meet?",
       time: "10:48",
       timeZone: 'am',
       urlImg:
       "https://images.unsplash.com/photo-1484515991647-c5760fcecfc7?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTB8fG1hbGV8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"

   ),
   ChatScreenModel(
        name: " Wong ",
        message: "Good to see you",
       time: "10:00",
        timeZone: 'am',
        urlImg:
        "https://images.unsplash.com/photo-1579119986241-5e72d26cb690?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTR8fG1hbGV8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"
   ),
   ChatScreenModel(
       name: " Wilson",
       message: "Kindly reach soon",
       timeZone: 'am',
       time: "09:27",
       urlImg:
       "https://images.unsplash.com/photo-1533227268428-f9ed0900fb3b?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTd8fG1hbGV8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"
   ),
   ChatScreenModel(
       name:" Harry ",
       message: "Waiting for your response",
       time: "09:15",
       timeZone: "am",
       urlImg: "https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8dXNlcnxlbnwwfHwwfHw%3D&w=1000&q=80"),
   ChatScreenModel(
       name: "Wiesel",
       message: "Ok",
       time: "08:55",
       timeZone: "am",
       urlImg: "https://www.google.com/url?sa=i&url=https%3A%2F%2Funsplash.com%2Fs%2Fphotos%2Fuser&psig=AOvVaw0KkX4vim_LpkT46eg8vHgD&ust=1652883519171000&source=images&cd=vfe&ved=0CAwQjRxqFwoTCOD2z4rd5vcCFQAAAAAdAAAAABAJ")

 ];