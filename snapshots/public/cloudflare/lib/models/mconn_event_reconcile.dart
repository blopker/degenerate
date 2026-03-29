// GENERATED CODE - DO NOT MODIFY BY HAND

/// Reconciled
final class MconnEventReconcileK {const MconnEventReconcileK._(this.value);

factory MconnEventReconcileK.fromJson(String json) { return switch (json) {
  'Reconcile' => reconcile,
  _ => MconnEventReconcileK._(json),
}; }

static const MconnEventReconcileK reconcile = MconnEventReconcileK._('Reconcile');

static const List<MconnEventReconcileK> values = [reconcile];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is MconnEventReconcileK && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'MconnEventReconcileK($value)'; } 
 }
final class MconnEventReconcile {const MconnEventReconcile({required this.k});

factory MconnEventReconcile.fromJson(Map<String, dynamic> json) { return MconnEventReconcile(
  k: MconnEventReconcileK.fromJson(json['k'] as String),
); }

/// Reconciled
final MconnEventReconcileK k;

Map<String, dynamic> toJson() { return {
  'k': k.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('k'); } 
MconnEventReconcile copyWith({MconnEventReconcileK? k}) { return MconnEventReconcile(
  k: k ?? this.k,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MconnEventReconcile &&
          k == other.k; } 
@override int get hashCode { return k.hashCode; } 
@override String toString() { return 'MconnEventReconcile(k: $k)'; } 
 }
