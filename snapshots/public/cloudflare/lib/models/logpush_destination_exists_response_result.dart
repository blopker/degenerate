// GENERATED CODE - DO NOT MODIFY BY HAND

final class LogpushDestinationExistsResponseResult {const LogpushDestinationExistsResponseResult({this.exists});

factory LogpushDestinationExistsResponseResult.fromJson(Map<String, dynamic> json) { return LogpushDestinationExistsResponseResult(
  exists: json['exists'] as bool?,
); }

final bool? exists;

Map<String, dynamic> toJson() { return {
  'exists': ?exists,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'exists'}.contains(key)); } 
LogpushDestinationExistsResponseResult copyWith({bool Function()? exists}) { return LogpushDestinationExistsResponseResult(
  exists: exists != null ? exists() : this.exists,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is LogpushDestinationExistsResponseResult &&
          exists == other.exists; } 
@override int get hashCode { return exists.hashCode; } 
@override String toString() { return 'LogpushDestinationExistsResponseResult(exists: $exists)'; } 
 }
