// GENERATED CODE - DO NOT MODIFY BY HAND

final class FirewallPackageResponseSingleVariant2 {const FirewallPackageResponseSingleVariant2({this.result});

factory FirewallPackageResponseSingleVariant2.fromJson(Map<String, dynamic> json) { return FirewallPackageResponseSingleVariant2(
  result: (json['result'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, v)),
); }

final Map<String,dynamic>? result;

Map<String, dynamic> toJson() { return {
  'result': ?result,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
FirewallPackageResponseSingleVariant2 copyWith({Map<String, dynamic> Function()? result}) { return FirewallPackageResponseSingleVariant2(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is FirewallPackageResponseSingleVariant2 &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'FirewallPackageResponseSingleVariant2(result: $result)'; } 
 }
