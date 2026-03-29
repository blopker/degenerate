// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostTestHelpersConfirmationTokensRequestPaymentMethodDataRadarOptions {const PostTestHelpersConfirmationTokensRequestPaymentMethodDataRadarOptions({this.session});

factory PostTestHelpersConfirmationTokensRequestPaymentMethodDataRadarOptions.fromJson(Map<String, dynamic> json) { return PostTestHelpersConfirmationTokensRequestPaymentMethodDataRadarOptions(
  session: json['session'] as String?,
); }

final String? session;

Map<String, dynamic> toJson() { return {
  'session': ?session,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'session'}.contains(key)); } 
PostTestHelpersConfirmationTokensRequestPaymentMethodDataRadarOptions copyWith({String Function()? session}) { return PostTestHelpersConfirmationTokensRequestPaymentMethodDataRadarOptions(
  session: session != null ? session() : this.session,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostTestHelpersConfirmationTokensRequestPaymentMethodDataRadarOptions &&
          session == other.session; } 
@override int get hashCode { return session.hashCode; } 
@override String toString() { return 'PostTestHelpersConfirmationTokensRequestPaymentMethodDataRadarOptions(session: $session)'; } 
 }
