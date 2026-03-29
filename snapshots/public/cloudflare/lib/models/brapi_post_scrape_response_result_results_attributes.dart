// GENERATED CODE - DO NOT MODIFY BY HAND

final class BrapiPostScrapeResponseResultResultsAttributes {const BrapiPostScrapeResponseResultResultsAttributes({required this.name, required this.value, });

factory BrapiPostScrapeResponseResultResultsAttributes.fromJson(Map<String, dynamic> json) { return BrapiPostScrapeResponseResultResultsAttributes(
  name: json['name'] as String,
  value: json['value'] as String,
); }

/// Attribute name
final String name;

/// Attribute value
final String value;

Map<String, dynamic> toJson() { return {
  'name': name,
  'value': value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('name') && json['name'] is String &&
      json.containsKey('value') && json['value'] is String; } 
BrapiPostScrapeResponseResultResultsAttributes copyWith({String? name, String? value, }) { return BrapiPostScrapeResponseResultResultsAttributes(
  name: name ?? this.name,
  value: value ?? this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is BrapiPostScrapeResponseResultResultsAttributes &&
          name == other.name &&
          value == other.value; } 
@override int get hashCode { return Object.hash(name, value); } 
@override String toString() { return 'BrapiPostScrapeResponseResultResultsAttributes(name: $name, value: $value)'; } 
 }
