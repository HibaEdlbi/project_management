

import 'package:flutter/material.dart';
import 'package:project_management/core/config/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PageShared extends StatelessWidget {
   PageShared({super.key});

  // CookModel cook = CookModel.fromJson(config.get<SharedPreferences>().getString('data') ?? "hello");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text(storage.get<SharedPreferences>().getString(
            'token',
          )?? 'data')),
    );
  }
}