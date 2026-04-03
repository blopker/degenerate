// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Configuration overrides for this setup, such as MOTO and customer cancellation settings.
@immutable final class PostTerminalReadersReaderProcessSetupIntentRequestProcessConfig {const PostTerminalReadersReaderProcessSetupIntentRequestProcessConfig({this.enableCustomerCancellation});

factory PostTerminalReadersReaderProcessSetupIntentRequestProcessConfig.fromJson(Map<String, dynamic> json) { return PostTerminalReadersReaderProcessSetupIntentRequestProcessConfig(
  enableCustomerCancellation: json['enable_customer_cancellation'] as bool?,
); }

final bool? enableCustomerCancellation;

Map<String, dynamic> toJson() { return {
  'enable_customer_cancellation': ?enableCustomerCancellation,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'enable_customer_cancellation'}.contains(key)); } 
PostTerminalReadersReaderProcessSetupIntentRequestProcessConfig copyWith({bool Function()? enableCustomerCancellation}) { return PostTerminalReadersReaderProcessSetupIntentRequestProcessConfig(
  enableCustomerCancellation: enableCustomerCancellation != null ? enableCustomerCancellation() : this.enableCustomerCancellation,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostTerminalReadersReaderProcessSetupIntentRequestProcessConfig &&
          enableCustomerCancellation == other.enableCustomerCancellation; } 
@override int get hashCode { return enableCustomerCancellation.hashCode; } 
@override String toString() { return 'PostTerminalReadersReaderProcessSetupIntentRequestProcessConfig(enableCustomerCancellation: $enableCustomerCancellation)'; } 
 }
