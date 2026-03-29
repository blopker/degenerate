// GENERATED CODE - DO NOT MODIFY BY HAND

final class DigitalExperienceMonitoringCreateRuleBody {const DigitalExperienceMonitoringCreateRuleBody({this.description, required this.match, required this.name, });

factory DigitalExperienceMonitoringCreateRuleBody.fromJson(Map<String, dynamic> json) { return DigitalExperienceMonitoringCreateRuleBody(
  description: json['description'] as String?,
  match: json['match'] as String,
  name: json['name'] as String,
); }

final String? description;

/// The wirefilter expression to match.
final String match;

/// The name of the Rule.
final String name;

Map<String, dynamic> toJson() { return {
  'description': ?description,
  'match': match,
  'name': name,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('match') && json['match'] is String &&
      json.containsKey('name') && json['name'] is String; } 
DigitalExperienceMonitoringCreateRuleBody copyWith({String Function()? description, String? match, String? name, }) { return DigitalExperienceMonitoringCreateRuleBody(
  description: description != null ? description() : this.description,
  match: match ?? this.match,
  name: name ?? this.name,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DigitalExperienceMonitoringCreateRuleBody &&
          description == other.description &&
          match == other.match &&
          name == other.name; } 
@override int get hashCode { return Object.hash(description, match, name); } 
@override String toString() { return 'DigitalExperienceMonitoringCreateRuleBody(description: $description, match: $match, name: $name)'; } 
 }
