// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'images_images_list_continuation_token.dart';@immutable final class ResponseCollection22Result {const ResponseCollection22Result({this.continuationToken = const Omittable.absent()});

factory ResponseCollection22Result.fromJson(Map<String, dynamic> json) { return ResponseCollection22Result(
  continuationToken: json.containsKey('continuation_token') ? Omittable(json['continuation_token'] != null ? ImagesImagesListContinuationToken.fromJson(json['continuation_token'] as String) : null) : const Omittable.absent(),
); }

final Omittable<ImagesImagesListContinuationToken?> continuationToken;

Map<String, dynamic> toJson() { return {
  if (continuationToken.isPresent) 'continuation_token': continuationToken.value?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'continuation_token'}.contains(key)); } 
ResponseCollection22Result copyWith({Omittable<ImagesImagesListContinuationToken?>? continuationToken}) { return ResponseCollection22Result(
  continuationToken: continuationToken ?? this.continuationToken,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ResponseCollection22Result &&
          continuationToken == other.continuationToken; } 
@override int get hashCode { return continuationToken.hashCode; } 
@override String toString() { return 'ResponseCollection22Result(continuationToken: $continuationToken)'; } 
 }
