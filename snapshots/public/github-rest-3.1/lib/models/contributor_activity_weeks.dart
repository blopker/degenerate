// GENERATED CODE - DO NOT MODIFY BY HAND

final class ContributorActivityWeeks {const ContributorActivityWeeks({this.w, this.a, this.d, this.c, });

factory ContributorActivityWeeks.fromJson(Map<String, dynamic> json) { return ContributorActivityWeeks(
  w: json['w'] != null ? (json['w'] as num).toInt() : null,
  a: json['a'] != null ? (json['a'] as num).toInt() : null,
  d: json['d'] != null ? (json['d'] as num).toInt() : null,
  c: json['c'] != null ? (json['c'] as num).toInt() : null,
); }

final int? w;

final int? a;

final int? d;

final int? c;

Map<String, dynamic> toJson() { return {
  'w': ?w,
  'a': ?a,
  'd': ?d,
  'c': ?c,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
ContributorActivityWeeks copyWith({int Function()? w, int Function()? a, int Function()? d, int Function()? c, }) { return ContributorActivityWeeks(
  w: w != null ? w() : this.w,
  a: a != null ? a() : this.a,
  d: d != null ? d() : this.d,
  c: c != null ? c() : this.c,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ContributorActivityWeeks &&
          w == other.w &&
          a == other.a &&
          d == other.d &&
          c == other.c; } 
@override int get hashCode { return Object.hash(w, a, d, c); } 
@override String toString() { return 'ContributorActivityWeeks(w: $w, a: $a, d: $d, c: $c)'; } 
 }
