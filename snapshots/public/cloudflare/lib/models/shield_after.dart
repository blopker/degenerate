// GENERATED CODE - DO NOT MODIFY BY HAND

/// Move rule to before rule with ID.
final class ShieldAfter {const ShieldAfter({this.after});

factory ShieldAfter.fromJson(Map<String, dynamic> json) { return ShieldAfter(
  after: json['after'] as String?,
); }

/// Move rule to after rule with this ID.
final String? after;

Map<String, dynamic> toJson() { return {
  'after': ?after,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
ShieldAfter copyWith({String Function()? after}) { return ShieldAfter(
  after: after != null ? after() : this.after,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ShieldAfter &&
          after == other.after; } 
@override int get hashCode { return after.hashCode; } 
@override String toString() { return 'ShieldAfter(after: $after)'; } 
 }
