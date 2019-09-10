class Chat {
  String name;
  String message;
  String time;
  String avatarUrl;

  Chat({this.name, this.message, this.time, this.avatarUrl});

  
}
List<Chat> fakeData = [
    Chat(
        name: "Enes",
        message: "Merhaba nasılsın?",
        time: "11.30",
        avatarUrl:
            "https://pbs.twimg.com/profile_images/1156999506174648320/6y26QCJl_400x400.jpg"),
    Chat(
        name: "Yusuf",
        message: "Merhaba nasılsın?Bugün napıyorsun?",
        time: "14.30",
        avatarUrl:
            "https://pbs.twimg.com/profile_images/1156999506174648320/6y26QCJl_400x400.jpg"),
    Chat(
        name: "Yavuz",
        message: "Bugün nasıl geçti?",
        time: "18.30",
        avatarUrl:
            "https://pbs.twimg.com/profile_images/1156999506174648320/6y26QCJl_400x400.jpg"),
  ];