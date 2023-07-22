import 'package:flutter/material.dart';

class telaEmpresa extends StatefulWidget {
  const telaEmpresa({super.key});

  @override
  State<telaEmpresa> createState() => _telaEmpresaState();
}

class _telaEmpresaState extends State<telaEmpresa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text("Empresa"),
          backgroundColor: Colors.green,
        ),
        body: Container(
          width: double.infinity,
          child: SingleChildScrollView(
            padding: EdgeInsets.all(16),
            child: Column(
              children: [
                Row(
                  children: [
                    Image.asset("images/detalhe_empresa.png"),
                    const Text(
                      "Sobre a empresa",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.deepOrange,
                      ),
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 16),
                  child: Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec euismod, nisl eget ultricies aliquam, nunc nisl ultricies nunc, vitae aliquam nisl nunc eget nisl. Donec euismod, nisl eget ultricies aliquam, nunc nisl ultricies nunc, vitae aliquam nisl nunc eget nisl. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec euismod, nisl eget ultricies aliquam, nunc nisl ultricies nunc, vitae aliquam nisl nunc eget nisl. Donec euismod, nisl eget ultricies aliquam, nunc nisl ultricies nunc, vitae aliquam nisl nunc eget nisl. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec euismod, nisl eget ultricies aliquam, nunc nisl ultricies nunc, vitae aliquam nisl nunc eget nisl. Donec euismod, nisl eget ultricies aliquam, nunc nisl ultricies nunc, vitae aliquam nisl nunc eget nisl. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec euismod, nisl eget ultricies aliquam, nunc nisl ultricies nunc, vitae aliquam nisl nunc eget nisl. Donec euismod, nisl eget ultricies aliquam, nunc nisl ultricies nunc, vitae aliquam nisl nunc eget nisl. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec euismod, nisl eget ultricies aliquam, nunc nisl ultricies nunc, vitae aliquam nisl nunc eget nisl. Donec euismod, nisl eget ultricies aliquam, nunc nisl ultricies nunc, vitae aliquam nisl nunc eget nisl. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec euismod, nisl eget ultricies aliquam, nunc nisl ultricies nunc, vitae aliquam nisl nunc eget nisl. Donec euismod, nisl eget ultricies aliquam, nunc nisl ultricies nunc, vitae aliquam nisl nunc eget nisl. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec euismod, nisl eget ultricies aliquam, nunc nisl ultricies nunc, vitae aliquam nisl nunc eget nisl. Donec euismod, nisl eget ultricies aliquam, nunc nisl ultricies nunc, vitae aliquam nisl nunc eget nisl.",
                    style: TextStyle(
                      fontSize: 16,
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
