// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'dart:convert';

RegisterResponse welcomeFromJson(String str) => RegisterResponse.fromJson(json.decode(str));

String welcomeToJson(RegisterResponse data) => json.encode(data.toJson());

class RegisterResponse {
    String success;
    String token;

    RegisterResponse({
        required this.success,
        required this.token,
    });

    factory RegisterResponse.fromJson(Map<String, dynamic> json) => RegisterResponse(
        success: json["success"],
        token: json["token"],
    );

    Map<String, dynamic> toJson() => {
        "success": success,
        "token": token,
    };
}