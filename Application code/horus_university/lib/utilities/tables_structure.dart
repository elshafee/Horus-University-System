class Items {
  final String? lecture;
  final String? doctor;
  final String? place;
  final String? time;
  final String? title;

  Items({
    this.lecture,
    this.doctor,
    this.time,
    this.place,
    this.title,
  });

  Map<String, dynamic> toMap() {
    return {
      'lecture': lecture,
      'place': place,
      'time': time,
      'doctor': doctor,
      'lecture_title': title,
    };
  }

  factory Items.fromMap(Map<String, dynamic> map) {
    return Items(
      lecture: map['lecture'],
      place: map['place'],
      time: map['time'],
      doctor: map['doctor'],
      title: map['lecture_title'],
    );
  }
}
