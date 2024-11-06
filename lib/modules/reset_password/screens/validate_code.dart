import 'package:actividad02_yahirdegante/modules/reset_password/screens/reset_pass.dart';
import 'package:flutter/material.dart';

class ValidateCode extends StatefulWidget {
  const ValidateCode({super.key});

  @override
  State<ValidateCode> createState() => _ValidateCodeState();
}

class _ValidateCodeState extends State<ValidateCode> {
  final TextEditingController _code = TextEditingController();
  bool _isOscure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/icono.png', width: 150, height: 150),
              const SizedBox(height: 16),
              TextFormField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Código de verificación",
                  label: Text("ingresa el código"),
                ),
                keyboardType: TextInputType.number,
                controller: _code,
              ),
              const SizedBox(height: 16),
              SizedBox(
                width: double.infinity,
                height: 48,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ResetPass()),
                    );
                  },
                  child: const Text('Validar Código'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
