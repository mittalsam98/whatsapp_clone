class ChatModel {
  final String name;
  final String message;
  final String time;
  final String url;

  ChatModel({this.name, this.message, this.time, this.url});
}

List<ChatModel> dummy = [
  ChatModel(
    name: "Sachin",
    message: 'Hi whatup ',
    time: 'Today',
    url: 'h',
  ),
  ChatModel(
    name: "Rajan",
    message: 'How are you felling',
    time: 'Yesterday',
    url: 'h',
  ),
  ChatModel(
    name: "Begu",
    message: 'When will our college are going to open',
    time: '23/04/2020',
    url: 'h',
  ),
  ChatModel(
    name: "Nitesh",
    message: 'What about your future plan....Going to US or not',
    time: '1/03/2020',
    url: 'h',
  ),
  ChatModel(
    name: "Shyam",
    message: 'Hi whatup',
    time: '24/03/2020',
    url: 'No thats fine its your problem not mine',
  )
];
