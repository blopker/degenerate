// GENERATED CODE - DO NOT MODIFY BY HAND

final class SecurityCenterValueCountsResponseResultVariant1 {const SecurityCenterValueCountsResponseResultVariant1({this.count, this.value, });

factory SecurityCenterValueCountsResponseResultVariant1.fromJson(Map<String, dynamic> json) { return SecurityCenterValueCountsResponseResultVariant1(
  count: json['count'] != null ? (json['count'] as num).toInt() : null,
  value: json['value'] as String?,
); }

final int? count;

final String? value;

Map<String, dynamic> toJson() { return {
  'count': ?count,
  'value': ?value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'count', 'value'}.contains(key)); } 
SecurityCenterValueCountsResponseResultVariant1 copyWith({int Function()? count, String Function()? value, }) { return SecurityCenterValueCountsResponseResultVariant1(
  count: count != null ? count() : this.count,
  value: value != null ? value() : this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SecurityCenterValueCountsResponseResultVariant1 &&
          count == other.count &&
          value == other.value; } 
@override int get hashCode { return Object.hash(count, value); } 
@override String toString() { return 'SecurityCenterValueCountsResponseResultVariant1(count: $count, value: $value)'; } 
 }
