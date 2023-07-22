import 'package:flutter/material.dart';

class telaCliente extends StatefulWidget {
  const telaCliente({super.key});

  @override
  State<telaCliente> createState() => _telaClienteState();
}

class _telaClienteState extends State<telaCliente> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Clientes"),
        backgroundColor: Colors.green,
      ),
      body: Container(
        width: double.infinity,
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Row(
                children: [
                  Image.asset("images/detalhe_cliente.png"),
                  const Text(
                    "Nossos clientes:",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.lightGreenAccent,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset("images/cliente1.png"),
                    Image.asset("images/cliente2.png"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
