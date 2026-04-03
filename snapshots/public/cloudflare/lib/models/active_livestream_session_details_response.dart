// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'active_livestream_session_details_response_data.dart';@immutable final class ActiveLivestreamSessionDetailsResponse {const ActiveLivestreamSessionDetailsResponse({this.data, this.success, });

factory ActiveLivestreamSessionDetailsResponse.fromJson(Map<String, dynamic> json) { return ActiveLivestreamSessionDetailsResponse(
  data: json['data'] != null ? ActiveLivestreamSessionDetailsResponseData.fromJson(json['data'] as Map<String, dynamic>) : null,
  success: json['success'] as bool?,
); }

final ActiveLivestreamSessionDetailsResponseData? data;

final bool? success;

Map<String, dynamic> toJson() { return {
  if (data != null) 'data': data?.toJson(),
  'success': ?success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'data', 'success'}.contains(key)); } 
ActiveLivestreamSessionDetailsResponse copyWith({ActiveLivestreamSessionDetailsResponseData Function()? data, bool Function()? success, }) { return ActiveLivestreamSessionDetailsResponse(
  data: data != null ? data() : this.data,
  success: success != null ? success() : this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ActiveLivestreamSessionDetailsResponse &&
          data == other.data &&
          success == other.success; } 
@override int get hashCode { return Object.hash(data, success); } 
@override String toString() { return 'ActiveLivestreamSessionDetailsResponse(data: $data, success: $success)'; } 
 }
