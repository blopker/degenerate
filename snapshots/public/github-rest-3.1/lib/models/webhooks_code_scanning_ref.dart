// GENERATED CODE - DO NOT MODIFY BY HAND

/// The Git reference of the code scanning alert. When the action is `reopened_by_user` or `closed_by_user`, the event was triggered by the `sender` and this value will be empty.
extension type const WebhooksCodeScanningRef(String value) {
factory WebhooksCodeScanningRef.fromJson(String json) => WebhooksCodeScanningRef(json);

String toJson() => value;

}
