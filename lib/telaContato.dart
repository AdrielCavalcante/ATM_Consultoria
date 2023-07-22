import 'package:atm_consultoria/telaServico.dart';
import 'package:flutter/material.dart';

class telaContato extends StatefulWidget {
  const telaContato({super.key});

  @override
  State<telaContato> createState() => _telaContatoState();
}

class _telaContatoState extends State<telaContato> {

  TextEditingController _emailController = TextEditingController();
  TextEditingController _assuntoController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Contato"),
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
                  Image.asset("images/detalhe_contato.png"),
                  const Text(
                    "Entre em contato",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.greenAccent,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16),
                child: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  controller: _emailController,
                  decoration: const InputDecoration(
                    labelText: "E-mail",
                    labelStyle: TextStyle(
                      color: Colors.green,
                      fontSize: 20,
                    ),
                  ),
                  style: const TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16),
                child: TextFormField(
                  keyboardType: TextInputType.text,
                  controller: _assuntoController,
                  decoration: const InputDecoration(
                    labelText: "Assunto",
                    labelStyle: TextStyle(
                      color: Colors.green,
                      fontSize: 20,
                    ),
                  ),
                  style: const TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    padding: const EdgeInsets.all(16),
                    minimumSize: const Size(200, 50),
                  ),
                  child: const Text(
                    "Salvar",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (content) => telaServico(email: _emailController.text, assunto: _assuntoController.text)));
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
