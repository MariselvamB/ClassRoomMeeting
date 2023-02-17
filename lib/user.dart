class User{
  String userName;
  String dpURL="https://randomuser.me/api/portraits/women/";
  String lastMessage;
  String time;

  User(this.userName, this.lastMessage, this.time);

  // ignore: recursive_getters
  String get bold =>bold;
} 
