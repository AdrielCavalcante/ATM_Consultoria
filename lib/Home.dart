import 'package:atm_consultoria/telaCliente.dart';
import 'package:atm_consultoria/telaContato.dart';
import 'package:atm_consultoria/telaEmpresa.dart';
import 'package:atm_consultoria/telaServico.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("ATM Consultoria"),
        backgroundColor: Colors.green,
      ),
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.all(32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset("images/logo.png"),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const telaEmpresa()));
                  },
                  child: Image.asset("images/menu_empresa.png"),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => telaServico()));
                  },
                  child: Image.asset("images/menu_servico.png"),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const telaCliente()));
                  },
                  child: Image.asset("images/menu_cliente.png"),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const telaContato()));
                  },
                  child: Image.asset("images/menu_contato.png"),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
