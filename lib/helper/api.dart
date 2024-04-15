import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

class Api {
  Future<dynamic> post({
    required String url,
    @required Map<String, dynamic>? body,
  }) async {
    Map<String, String> headers = {};

    http.Response response =
        await http.post(Uri.parse(url), body: body, headers: headers);
    if (response.statusCode == 201) {
      Map<String, dynamic> data = jsonDecode(response.body);
      return data;
    } else {
      throw Exception(
          'there was a problem with status code ${response.statusCode} with body ${jsonDecode(
        response.body,
      )}');
    }
  }

  Future<dynamic> get({required String url}) async {
    http.Response response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception(
          'Theres a problem with status code ${response.statusCode}');
    }
  }

  Future<void> delete({required String url}) async {
    await http.delete(Uri.parse(url));
  }
}
