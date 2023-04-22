import 'package:conversor_de_moedas/converso/controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ConversorDeMoedas extends StatefulWidget {
  const ConversorDeMoedas({super.key});

  @override
  State<ConversorDeMoedas> createState() => _ConversorDeMoedasState();
}

class _ConversorDeMoedasState extends State<ConversorDeMoedas> {
  controller telacontroller = controller();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('conversor de moedas'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              DropdownButton(
                value: telacontroller.dropdwonvalor,
                hint: const Text('selecione moeda'),
                items: List.generate(
                  telacontroller.paises.length,
                  (index) => DropdownMenuItem(
                    value: telacontroller.paises[index],
                    child: Text(telacontroller.paises[index]),
                  ),
                ),
                onChanged: (value) {
                  telacontroller.dropdwonvalor = value;
                  setState(() {});
                },
              ),
              DropdownButton(
                value: telacontroller.dropdwonvalor2,
                hint: const Text('selecione moeda'),
                items: List.generate(
                  telacontroller.paises.length,
                  (index) => DropdownMenuItem(
                    value: telacontroller.paises[index],
                    child: Text(telacontroller.paises[index]),
                  ),
                ),
                onChanged: (value) {
                  telacontroller.dropdwonvalor2 = value;
                  setState(() {});
                },
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 200, right: 200),
                  child: TextField(
                    onChanged: (value) {
                      telacontroller.calculo(value);
                      setState(() {});
                    },
                    maxLines: 1,
                    minLines: 1,
                  ),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '${telacontroller.resultado}',
                style: const TextStyle(fontSize: 20),
              )
            ],
          )
        ],
      ),
    );
  }
}
