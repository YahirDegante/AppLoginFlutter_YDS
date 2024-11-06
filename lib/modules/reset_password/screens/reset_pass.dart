import 'package:flutter/material.dart';

class ResetPass extends StatefulWidget {
  const ResetPass({super.key});

  @override
  State<ResetPass> createState() => _ResetPassState();
}

class _ResetPassState extends State<ResetPass> {
  final TextEditingController _pass = TextEditingController();
  final TextEditingController _confim_pass = TextEditingController();
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
                decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                  hintText: "········",
                  label: const Text("Contraseña"),
                  prefixIcon: IconButton(
                    onPressed: () => setState(() => _isOscure = !_isOscure),
                    icon: Icon(
                      _isOscure
                          ? Icons.visibility_off_outlined
                          : Icons.visibility_outlined,
                    ),
                  ),
                ),
                obscureText: _isOscure,
                controller: _pass,
              ),
              const SizedBox(height: 16),
              TextFormField(
                decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                  hintText: "········",
                  label: const Text("Confirmar Contraseña"),
                  prefixIcon: IconButton(
                    onPressed: () => setState(() => _isOscure = !_isOscure),
                    icon: Icon(
                      _isOscure
                          ? Icons.visibility_off_outlined
                          : Icons.visibility_outlined,
                    ),
                  ),
                ),
                obscureText: _isOscure,
                controller: _confim_pass,
              ),
              const SizedBox(height: 16),
              SizedBox(
                width: double.infinity,
                height: 48,
                child: ElevatedButton(
                  onPressed: () {
                    print('Contraseña: ${_pass.text}');
                    print('Confirmar contraseña: ${_confim_pass.text}');
                  },
                  child: const Text('Guardar'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
