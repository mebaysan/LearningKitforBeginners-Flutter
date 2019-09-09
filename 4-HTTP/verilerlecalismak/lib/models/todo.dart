class Todo {
  int id;
  int userId;
  bool completed;
  String title;

  Todo(int id, int userId, bool completed, String title) {
    this.id = id;
    this.title = title;
    this.userId = userId;
    this.completed = completed;
  }

  Todo.fromJson(Map json) {
    // jsonu objeye çeviriyourz
    id = json['id'];
    userId = json['userId'];
    title = json['title'];
    completed = json['completed'];
  }

  Map toJson() {
    return {"id": id, "userId": userId, "completed": completed, "title": title};
  }
  
}
