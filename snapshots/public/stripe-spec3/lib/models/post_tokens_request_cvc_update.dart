// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// The updated CVC value this token represents.
@immutable final class PostTokensRequestCvcUpdate {const PostTokensRequestCvcUpdate({required this.cvc});

factory PostTokensRequestCvcUpdate.fromJson(Map<String, dynamic> json) { return PostTokensRequestCvcUpdate(
  cvc: json['cvc'] as String,
); }

final String cvc;

Map<String, dynamic> toJson() { return {
  'cvc': cvc,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('cvc') && json['cvc'] is String; } 
PostTokensRequestCvcUpdate copyWith({String? cvc}) { return PostTokensRequestCvcUpdate(
  cvc: cvc ?? this.cvc,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostTokensRequestCvcUpdate &&
          cvc == other.cvc; } 
@override int get hashCode { return cvc.hashCode; } 
@override String toString() { return 'PostTokensRequestCvcUpdate(cvc: $cvc)'; } 
 }
