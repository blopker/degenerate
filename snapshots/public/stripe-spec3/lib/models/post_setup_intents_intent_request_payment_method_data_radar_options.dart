// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostSetupIntentsIntentRequestPaymentMethodDataRadarOptions {const PostSetupIntentsIntentRequestPaymentMethodDataRadarOptions({this.session});

factory PostSetupIntentsIntentRequestPaymentMethodDataRadarOptions.fromJson(Map<String, dynamic> json) { return PostSetupIntentsIntentRequestPaymentMethodDataRadarOptions(
  session: json['session'] as String?,
); }

final String? session;

Map<String, dynamic> toJson() { return {
  'session': ?session,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'session'}.contains(key)); } 
PostSetupIntentsIntentRequestPaymentMethodDataRadarOptions copyWith({String Function()? session}) { return PostSetupIntentsIntentRequestPaymentMethodDataRadarOptions(
  session: session != null ? session() : this.session,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostSetupIntentsIntentRequestPaymentMethodDataRadarOptions &&
          session == other.session; } 
@override int get hashCode { return session.hashCode; } 
@override String toString() { return 'PostSetupIntentsIntentRequestPaymentMethodDataRadarOptions(session: $session)'; } 
 }
