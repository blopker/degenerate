// GENERATED CODE - DO NOT MODIFY BY HAND

/// Identifying information for the git-user
final class TimelineCommittedEventCommitter {const TimelineCommittedEventCommitter({required this.date, required this.email, required this.name, });

factory TimelineCommittedEventCommitter.fromJson(Map<String, dynamic> json) { return TimelineCommittedEventCommitter(
  date: DateTime.parse(json['date'] as String),
  email: json['email'] as String,
  name: json['name'] as String,
); }

/// Timestamp of the commit
final DateTime date;

/// Git email address of the user
final String email;

/// Name of the git user
final String name;

Map<String, dynamic> toJson() { return {
  'date': date.toIso8601String(),
  'email': email,
  'name': name,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('date') && json['date'] is String &&
      json.containsKey('email') && json['email'] is String &&
      json.containsKey('name') && json['name'] is String; } 
TimelineCommittedEventCommitter copyWith({DateTime? date, String? email, String? name, }) { return TimelineCommittedEventCommitter(
  date: date ?? this.date,
  email: email ?? this.email,
  name: name ?? this.name,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TimelineCommittedEventCommitter &&
          date == other.date &&
          email == other.email &&
          name == other.name; } 
@override int get hashCode { return Object.hash(date, email, name); } 
@override String toString() { return 'TimelineCommittedEventCommitter(date: $date, email: $email, name: $name)'; } 
 }
