// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class WafPackagesGetAWafPackageResponse4xxVariant2 {const WafPackagesGetAWafPackageResponse4xxVariant2({this.result});

factory WafPackagesGetAWafPackageResponse4xxVariant2.fromJson(Map<String, dynamic> json) {return WafPackagesGetAWafPackageResponse4xxVariant2(
  result: json['result'] as Map<String, dynamic>?,
);}

final Map<String,dynamic>? result;

Map<String, dynamic> toJson() {return {
  'result': ?result,
};}
static bool canParse(Map<String, dynamic> json) {return json.keys.any((key) => const {'result'}.contains(key));}
WafPackagesGetAWafPackageResponse4xxVariant2 copyWith({Map<String, dynamic>? Function()? result}) {return WafPackagesGetAWafPackageResponse4xxVariant2(
  result: result != null ? result() : this.result,
);}
@override bool operator ==(Object other) {return identical(this, other) ||
      other is WafPackagesGetAWafPackageResponse4xxVariant2 &&
          result == other.result;}
@override int get hashCode {return result.hashCode;}
@override String toString() {return 'WafPackagesGetAWafPackageResponse4xxVariant2(result: $result)';}
}
