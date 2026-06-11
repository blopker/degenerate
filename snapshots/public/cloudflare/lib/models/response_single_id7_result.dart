// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'web3_identifier.dart';@immutable final class ResponseSingleId7Result {const ResponseSingleId7Result({required this.id});

factory ResponseSingleId7Result.fromJson(Map<String, dynamic> json) { return ResponseSingleId7Result(
  id: Web3Identifier.fromJson(json['id'] as String),
); }

final Web3Identifier id;

Map<String, dynamic> toJson() { return {
  'id': id.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id'); } 
ResponseSingleId7Result copyWith({Web3Identifier? id}) { return ResponseSingleId7Result(
  id: id ?? this.id,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ResponseSingleId7Result &&
          id == other.id; } 
@override int get hashCode { return id.hashCode; } 
@override String toString() { return 'ResponseSingleId7Result(id: $id)'; } 
 }
