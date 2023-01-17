import 'package:flutter/material.dart';
import 'package:smash/layers/domain/entities/court_entity_entity.dart';
import 'package:smash/layers/domain/entities/reservation_request_entity.dart';
import 'package:smash/layers/domain/entities/user_entity.dart';

class Dialogs {
  static showDialogProcessing(context) {
    showDialog(
      context: context,
      builder: (BuildContext ctx) {
        return Dialog(
          // The background color
          backgroundColor: Colors.white,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: const [
                // The loading indicator
                CircularProgressIndicator(),
                SizedBox(
                  height: 15,
                ),
                // Some text
                Text('Carregando...')
              ],
            ),
          ),
        );
      },
    );
  }
}
