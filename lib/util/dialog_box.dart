import 'package:flutter/material.dart';
import 'package:to_do_list_app/util/my_botton.dart';

class DialogBox extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;

  DialogBox({
    super.key,
    required this.controller,
    required this.onSave,
    required this.onCancel,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.cyanAccent,
      content: Container(
        height: 120,
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          //get user input
          TextField(
            controller: controller,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: "Agrega una tarea",
            ),
          ),

          // botones guardar  + cancelar
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              //guardar
              MyButton(text: "Guardar", onPressed: onSave),

              const SizedBox(width: 8),
              //cancelar
              MyButton(text: "Cancelar", onPressed: onCancel),
            ],
          )
        ]),
      ),
    );
  }
}
