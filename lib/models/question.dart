class Question {
  String id;
  String title;
  String _response;

  Question(this.id, this.title);

  bool get hasResponse => _response != null;
  String get response => _response;
  set response(String response) => _response = response;
}

class Event {
  String id;
  String title;
  DateTime occuredOn;

  Event(this.id, this.title, this.occuredOn);

  factory Event.fromMap(Map<dynamic, dynamic> value, String id) =>
      Event(value["id"], value["title"], DateTime.parse(value["occuredOn"]));

  Map<String, dynamic> toMap() => {
        'id': this.id,
        'title': this.title,
        'occuredOn': this.occuredOn.toString()
      };
}
