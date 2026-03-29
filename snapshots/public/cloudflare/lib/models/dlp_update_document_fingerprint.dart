// GENERATED CODE - DO NOT MODIFY BY HAND

final class DlpUpdateDocumentFingerprint {const DlpUpdateDocumentFingerprint({this.description, this.matchPercent, this.name, });

factory DlpUpdateDocumentFingerprint.fromJson(Map<String, dynamic> json) { return DlpUpdateDocumentFingerprint(
  description: json['description'] as String?,
  matchPercent: json['match_percent'] != null ? (json['match_percent'] as num).toInt() : null,
  name: json['name'] as String?,
); }

final String? description;

final int? matchPercent;

final String? name;

Map<String, dynamic> toJson() { return {
  'description': ?description,
  'match_percent': ?matchPercent,
  'name': ?name,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
DlpUpdateDocumentFingerprint copyWith({String? Function()? description, int? Function()? matchPercent, String? Function()? name, }) { return DlpUpdateDocumentFingerprint(
  description: description != null ? description() : this.description,
  matchPercent: matchPercent != null ? matchPercent() : this.matchPercent,
  name: name != null ? name() : this.name,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DlpUpdateDocumentFingerprint &&
          description == other.description &&
          matchPercent == other.matchPercent &&
          name == other.name; } 
@override int get hashCode { return Object.hash(description, matchPercent, name); } 
@override String toString() { return 'DlpUpdateDocumentFingerprint(description: $description, matchPercent: $matchPercent, name: $name)'; } 
 }
