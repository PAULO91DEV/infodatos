import 'dart:convert';

OauthEntity oauthEntityFromJson(String str) => OauthEntity.fromJson(json.decode(str));

String oauthEntityToJson(OauthEntity data) => json.encode(data.toJson());

class OauthEntity {
    OauthEntity({
        this.accessToken,
        this.expiresIn,
        this.tokenType,
        this.scope,
    });

    String accessToken;
    int expiresIn;
    String tokenType;
    String scope;

    factory OauthEntity.fromJson(Map<String, dynamic> json) => OauthEntity(
        accessToken: json["access_token"],
        expiresIn: json["expires_in"],
        tokenType: json["token_type"],
        scope: json["scope"],
    );

    Map<String, dynamic> toJson() => {
        "access_token": accessToken,
        "expires_in": expiresIn,
        "token_type": tokenType,
        "scope": scope,
    };
}
