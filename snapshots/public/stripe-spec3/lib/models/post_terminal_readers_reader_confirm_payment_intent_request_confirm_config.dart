// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Configuration overrides for this confirmation, such as surcharge settings and return URL.
@immutable final class PostTerminalReadersReaderConfirmPaymentIntentRequestConfirmConfig {const PostTerminalReadersReaderConfirmPaymentIntentRequestConfirmConfig({this.returnUrl});

factory PostTerminalReadersReaderConfirmPaymentIntentRequestConfirmConfig.fromJson(Map<String, dynamic> json) { return PostTerminalReadersReaderConfirmPaymentIntentRequestConfirmConfig(
  returnUrl: json['return_url'] as String?,
); }

final String? returnUrl;

Map<String, dynamic> toJson() { return {
  'return_url': ?returnUrl,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'return_url'}.contains(key)); } 
PostTerminalReadersReaderConfirmPaymentIntentRequestConfirmConfig copyWith({String Function()? returnUrl}) { return PostTerminalReadersReaderConfirmPaymentIntentRequestConfirmConfig(
  returnUrl: returnUrl != null ? returnUrl() : this.returnUrl,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostTerminalReadersReaderConfirmPaymentIntentRequestConfirmConfig &&
          returnUrl == other.returnUrl; } 
@override int get hashCode { return returnUrl.hashCode; } 
@override String toString() { return 'PostTerminalReadersReaderConfirmPaymentIntentRequestConfirmConfig(returnUrl: $returnUrl)'; } 
 }
