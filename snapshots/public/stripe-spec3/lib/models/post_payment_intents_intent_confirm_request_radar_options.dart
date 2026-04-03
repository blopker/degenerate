// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Options to configure Radar. Learn more about [Radar Sessions](https://docs.stripe.com/radar/radar-session).
@immutable final class PostPaymentIntentsIntentConfirmRequestRadarOptions {const PostPaymentIntentsIntentConfirmRequestRadarOptions({this.session});

factory PostPaymentIntentsIntentConfirmRequestRadarOptions.fromJson(Map<String, dynamic> json) { return PostPaymentIntentsIntentConfirmRequestRadarOptions(
  session: json['session'] as String?,
); }

final String? session;

Map<String, dynamic> toJson() { return {
  'session': ?session,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'session'}.contains(key)); } 
PostPaymentIntentsIntentConfirmRequestRadarOptions copyWith({String Function()? session}) { return PostPaymentIntentsIntentConfirmRequestRadarOptions(
  session: session != null ? session() : this.session,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostPaymentIntentsIntentConfirmRequestRadarOptions &&
          session == other.session; } 
@override int get hashCode { return session.hashCode; } 
@override String toString() { return 'PostPaymentIntentsIntentConfirmRequestRadarOptions(session: $session)'; } 
 }
