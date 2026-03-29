// GENERATED CODE - DO NOT MODIFY BY HAND

/// A version number identifying the current `client_secret` associated with the service token. Incrementing it triggers a rotation; the previous secret will still be accepted until the time indicated by `previous_client_secret_expires_at`.
extension type const AccessClientSecretVersion(double value) {
factory AccessClientSecretVersion.fromJson(num json) => AccessClientSecretVersion(json.toDouble());

num toJson() => value;

}
