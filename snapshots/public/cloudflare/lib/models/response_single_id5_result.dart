// GENERATED CODE - DO NOT MODIFY BY HAND

import 'spectrum_config_identifier.dart';final class ResponseSingleId5Result {const ResponseSingleId5Result({required this.id});

factory ResponseSingleId5Result.fromJson(Map<String, dynamic> json) { return ResponseSingleId5Result(
  id: SpectrumConfigIdentifier.fromJson(json['id'] as String),
); }

final SpectrumConfigIdentifier id;

Map<String, dynamic> toJson() { return {
  'id': id.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id'); } 
ResponseSingleId5Result copyWith({SpectrumConfigIdentifier? id}) { return ResponseSingleId5Result(
  id: id ?? this.id,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ResponseSingleId5Result &&
          id == other.id; } 
@override int get hashCode { return id.hashCode; } 
@override String toString() { return 'ResponseSingleId5Result(id: $id)'; } 
 }
