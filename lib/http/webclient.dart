import 'package:flutter/material.dart';
import 'package:http/http.dart';

final url = 'http://localhost:8080/';

void findAll() async {
  final Response response = await get(url + 'transactions');
  debugPrint(response.body);
}
