// GENERATED CODE - DO NOT MODIFY BY HAND

/// Move rule to after rule with ID.
final class ShieldBefore {const ShieldBefore({this.before});

factory ShieldBefore.fromJson(Map<String, dynamic> json) { return ShieldBefore(
  before: json['before'] as String?,
); }

/// Move rule to before rule with this ID.
final String? before;

Map<String, dynamic> toJson() { return {
  'before': ?before,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
ShieldBefore copyWith({String Function()? before}) { return ShieldBefore(
  before: before != null ? before() : this.before,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ShieldBefore &&
          before == other.before; } 
@override int get hashCode { return before.hashCode; } 
@override String toString() { return 'ShieldBefore(before: $before)'; } 
 }
