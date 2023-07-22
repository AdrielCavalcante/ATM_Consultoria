import 'package:flutter/material.dart';

class telaServico extends StatefulWidget {

  final String? email;
  final String? assunto;

  telaServico({this.email, this.assunto, super.key});

  @override
  State<telaServico> createState() => _telaServicoState();
}

class _telaServicoState extends State<telaServico> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Serviços"),
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
                  Image.asset("images/detalhe_servico.png"),
                  const Text(
                    "Nossos serviços",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.cyan
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16),
                child: Text(
                  (widget.email == null) ? "Nenhum e-mail informado" : "Email: ${widget.email}",
                  style: const TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16),
                child: Text(
                  (widget.assunto == null) ? "Nenhum assunto informado" : "Assunto: ${widget.assunto}",
                  style: const TextStyle(
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
