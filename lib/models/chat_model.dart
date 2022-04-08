class ChatModel {
  String name;
  String message;
  String time;
  String avatarUrl;

  ChatModel(
      {required this.name,
      required this.message,
      required this.time,
      required this.avatarUrl});
}

List<ChatModel> dummy = [
  ChatModel(
      name: "Saad",
      message: "HEllo Flutter Festival",
      time: "9:00",
      avatarUrl:
          'https://storage.googleapis.com/cgiarorg/2021/02/c343f97f-1200x-1-b.jpg'),
  ChatModel(
      name: "Jack",
      message: "Congrats Flutter Festival",
      time: "8:00",
      avatarUrl:
          'https://storage.googleapis.com/cgiarorg/2021/02/c343f97f-1200x-1-b.jpg'),
  ChatModel(
      name: "Mike",
      message: "Flutter Festival Completed",
      time: "6:00",
      avatarUrl:
          'https://storage.googleapis.com/cgiarorg/2021/02/c343f97f-1200x-1-b.jpg'),
  ChatModel(
      name: "Jacob",
      message: "HEllo Flutter Festival",
      time: "5:00",
      avatarUrl:
          'https://storage.googleapis.com/cgiarorg/2021/02/c343f97f-1200x-1-b.jpg'),
  ChatModel(
      name: "Nick",
      message: "HEllo Flutter Festival",
      time: "4:00",
      avatarUrl:
          'https://storage.googleapis.com/cgiarorg/2021/02/c343f97f-1200x-1-b.jpg'),
  ChatModel(
      name: "Bill",
      message: "HEllo Flutter Festival",
      time: "1:00",
      avatarUrl:
          'https://storage.googleapis.com/cgiarorg/2021/02/c343f97f-1200x-1-b.jpg')
];
