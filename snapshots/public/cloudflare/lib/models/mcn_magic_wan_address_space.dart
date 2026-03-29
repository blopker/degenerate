// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'mcn_cidr_prefix.dart';final class McnMagicWanAddressSpace {const McnMagicWanAddressSpace({required this.prefixes});

factory McnMagicWanAddressSpace.fromJson(Map<String, dynamic> json) { return McnMagicWanAddressSpace(
  prefixes: (json['prefixes'] as List<dynamic>).map((e) => McnCidrPrefix.fromJson(e as String)).toList(),
); }

final List<McnCidrPrefix> prefixes;

Map<String, dynamic> toJson() { return {
  'prefixes': prefixes.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('prefixes'); } 
McnMagicWanAddressSpace copyWith({List<McnCidrPrefix>? prefixes}) { return McnMagicWanAddressSpace(
  prefixes: prefixes ?? this.prefixes,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is McnMagicWanAddressSpace &&
          listEquals(prefixes, other.prefixes); } 
@override int get hashCode { return Object.hashAll(prefixes).hashCode; } 
@override String toString() { return 'McnMagicWanAddressSpace(prefixes: $prefixes)'; } 
 }
