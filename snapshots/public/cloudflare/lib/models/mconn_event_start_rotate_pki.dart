// GENERATED CODE - DO NOT MODIFY BY HAND

/// Started PKI rotation
final class MconnEventStartRotatePkiK {const MconnEventStartRotatePkiK._(this.value);

factory MconnEventStartRotatePkiK.fromJson(String json) { return switch (json) {
  'StartRotatePki' => startRotatePki,
  _ => MconnEventStartRotatePkiK._(json),
}; }

static const MconnEventStartRotatePkiK startRotatePki = MconnEventStartRotatePkiK._('StartRotatePki');

static const List<MconnEventStartRotatePkiK> values = [startRotatePki];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is MconnEventStartRotatePkiK && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'MconnEventStartRotatePkiK($value)'; } 
 }
final class MconnEventStartRotatePki {const MconnEventStartRotatePki({required this.k});

factory MconnEventStartRotatePki.fromJson(Map<String, dynamic> json) { return MconnEventStartRotatePki(
  k: MconnEventStartRotatePkiK.fromJson(json['k'] as String),
); }

/// Started PKI rotation
final MconnEventStartRotatePkiK k;

Map<String, dynamic> toJson() { return {
  'k': k.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('k'); } 
MconnEventStartRotatePki copyWith({MconnEventStartRotatePkiK? k}) { return MconnEventStartRotatePki(
  k: k ?? this.k,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MconnEventStartRotatePki &&
          k == other.k; } 
@override int get hashCode { return k.hashCode; } 
@override String toString() { return 'MconnEventStartRotatePki(k: $k)'; } 
 }
