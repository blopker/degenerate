// GENERATED CODE - DO NOT MODIFY BY HAND

/// Initialized process
final class MconnEventInitK {const MconnEventInitK._(this.value);

factory MconnEventInitK.fromJson(String json) { return switch (json) {
  'Init' => init,
  _ => MconnEventInitK._(json),
}; }

static const MconnEventInitK init = MconnEventInitK._('Init');

static const List<MconnEventInitK> values = [init];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is MconnEventInitK && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'MconnEventInitK($value)'; } 
 }
final class MconnEventInit {const MconnEventInit({required this.k});

factory MconnEventInit.fromJson(Map<String, dynamic> json) { return MconnEventInit(
  k: MconnEventInitK.fromJson(json['k'] as String),
); }

/// Initialized process
final MconnEventInitK k;

Map<String, dynamic> toJson() { return {
  'k': k.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('k'); } 
MconnEventInit copyWith({MconnEventInitK? k}) { return MconnEventInit(
  k: k ?? this.k,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MconnEventInit &&
          k == other.k; } 
@override int get hashCode { return k.hashCode; } 
@override String toString() { return 'MconnEventInit(k: $k)'; } 
 }
