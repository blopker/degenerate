// GENERATED CODE - DO NOT MODIFY BY HAND

final class SourceTypeP24 {const SourceTypeP24({this.reference});

factory SourceTypeP24.fromJson(Map<String, dynamic> json) { return SourceTypeP24(
  reference: json['reference'] as String?,
); }

final String? reference;

Map<String, dynamic> toJson() { return {
  'reference': ?reference,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'reference'}.contains(key)); } 
SourceTypeP24 copyWith({String? Function()? reference}) { return SourceTypeP24(
  reference: reference != null ? reference() : this.reference,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SourceTypeP24 &&
          reference == other.reference; } 
@override int get hashCode { return reference.hashCode; } 
@override String toString() { return 'SourceTypeP24(reference: $reference)'; } 
 }
