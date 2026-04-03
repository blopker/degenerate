// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// URL where the custom waiting room page can temporarily be previewed.
extension type const WaitingroomPreviewUrl(String value) {
factory WaitingroomPreviewUrl.fromJson(String json) => WaitingroomPreviewUrl(json);

String toJson() => value;

}
@immutable final class WaitingroomPreviewResponseResult {const WaitingroomPreviewResponseResult({this.previewUrl});

factory WaitingroomPreviewResponseResult.fromJson(Map<String, dynamic> json) { return WaitingroomPreviewResponseResult(
  previewUrl: json['preview_url'] != null ? WaitingroomPreviewUrl.fromJson(json['preview_url'] as String) : null,
); }

final WaitingroomPreviewUrl? previewUrl;

Map<String, dynamic> toJson() { return {
  if (previewUrl != null) 'preview_url': previewUrl?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'preview_url'}.contains(key)); } 
WaitingroomPreviewResponseResult copyWith({WaitingroomPreviewUrl Function()? previewUrl}) { return WaitingroomPreviewResponseResult(
  previewUrl: previewUrl != null ? previewUrl() : this.previewUrl,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WaitingroomPreviewResponseResult &&
          previewUrl == other.previewUrl; } 
@override int get hashCode { return previewUrl.hashCode; } 
@override String toString() { return 'WaitingroomPreviewResponseResult(previewUrl: $previewUrl)'; } 
 }
