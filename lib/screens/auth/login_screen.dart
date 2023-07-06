import 'package:flutter/material.dart';
import 'package:edu_trip/screens/auth/registro.dart';
import 'package:edu_trip/screens/chemistry.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController _emailAddresscontroller = TextEditingController();
  TextEditingController _passwordcontroller = TextEditingController();



  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);
        if (!currentFocus.hasPrimaryFocus &&
            currentFocus.focusedChild != null) {
          currentFocus.focusedChild?.unfocus();
        }
      },
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.fromLTRB(20, 110, 20, 110),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'EDUlogin',
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              const Text(
                'Inicia sesión para continuar',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.grey,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 40),
              TextFormField(
                controller: _emailAddresscontroller,
                style: const TextStyle(color: Colors.black, fontFamily: 'SFUIDisplay'),
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  labelText: 'Ingrese su correo Electronico',
                  prefixIcon: Icon(Icons.email_outlined),
                  labelStyle: TextStyle(fontSize: 12),
                ),
              ),
              const SizedBox(height: 10),
              TextFormField(
                controller: _passwordcontroller,
                obscureText: true,
                style: const TextStyle(color: Colors.black, fontFamily: 'SFUIDisplay'),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  labelText: 'Ingrese su contraseña',
                  prefixIcon: const Icon(Icons.lock_outlined),
                  suffixIcon: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Registro(),
                        ),
                      );
                    },
                    child: const Text(
                      '¿No tienes cuenta? Registrate',
                      style: TextStyle(color: Colors.purple),
                    ),
                  ),
                  labelStyle: const TextStyle(fontSize: 12),
                ),
              ),
              const SizedBox(height: 10),
              Align(
                alignment: Alignment.centerRight,
                child: SizedBox(
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ChemistryScreen(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                        primary: Colors.purple,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0))),
                    child: const Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text('  Inicio  '),
                        SizedBox(width: 5),
                        Icon(
                          Icons.arrow_forward,
                          size: 24.0,
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
