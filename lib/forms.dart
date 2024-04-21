// ignore_for_file: prefer_const_constructors, sort_child_properties_last, prefer_interpolation_to_compose_strings

import 'package:flutter/material.dart';
import 'package:flutter_application_formizinho/infos.dart';

class Myformizinho extends StatefulWidget {
  const Myformizinho({super.key});

  @override
  State<Myformizinho> createState() => _MyformizinhoState();
}

final imgStud = SizedBox(
  child: Image.asset("assets/images/estudar2.jpg"),
  height: 150,
  width: 500,
);

class _MyformizinhoState extends State<Myformizinho> {
  TextEditingController nomeController = TextEditingController();
  TextEditingController emailController = TextEditingController();

  String tc = "";
  String tcm = "";

  bool Inter1 = false;
  bool Inter2 = false;
  bool Inter3 = false;
  bool permt = false;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Plano de estudos",
          style: TextStyle(color: Colors.white, fontStyle: FontStyle.italic),
        ),
        backgroundColor: Colors.teal,
      ),
      body: SingleChildScrollView(  // Adicionando a rolagem
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 45),
              imgStud,
              SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 40.0),
                child: TextField(
                  controller: nomeController,
                  decoration: InputDecoration(
                    labelText: "Nome:",
                    prefixIcon: Icon(Icons.emoji_people_rounded),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 40.0),
                child: TextField(
                  controller: emailController,
                  decoration: InputDecoration(
                    labelText: "E-mail:",
                    prefixIcon: Icon(Icons.email_outlined),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Divider(
                height: 1,
                thickness: 1,
                color: Colors.black,
                indent: 40,
                endIndent: 40,
              ),
              SizedBox(height: 20),
              Text(
                "Tipo de curso:",
                style: TextStyle(
                  color: Colors.black,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Tecnico", style: TextStyle(fontStyle: FontStyle.italic)),
                  Radio(
                    value: "Tecnico",
                    groupValue: tc,
                    onChanged: (value) {
                      setState(() {
                        tc = value!;
                      });
                    },
                  ),
                  SizedBox(width: 30),
                  Text(
                    "Tecnico e medio",
                    style: TextStyle(fontStyle: FontStyle.italic),
                  ),
                  Radio(
                    value: "Tecnico e medio",
                    groupValue: tc,
                    onChanged: (value) {
                      setState(() {
                        tc = value!;
                      });
                    },
                  ),
                ],
              ),
              SizedBox(height: 20),
              Divider(
                height: 1,
                thickness: 1,
                color: Colors.black,
                indent: 40,
                endIndent: 40,
              ),
              SizedBox(height: 20),
              Text(
                "Escolha abaixo o melhor período de estudos para você: ",
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              CheckboxListTile(
                title: Text("Manhã",style: TextStyle(fontStyle: FontStyle.italic),),
                value: Inter1,
                onChanged: (value) {
                  setState(() {
                    Inter1 = value!;
                  });
                },
              ),
              CheckboxListTile(
                title: Text("Tarde",style: TextStyle(fontStyle: FontStyle.italic),),
                value: Inter2,
                onChanged: (value) {
                  setState(() {
                    Inter2 = value!;
                  });
                },
              ),
              CheckboxListTile(
                title: Text("Noite",style: TextStyle(fontStyle: FontStyle.italic)),
                value: Inter3,
                onChanged: (value) {
                  setState(() {
                    Inter3 = value!;
                  });
                },
              ),
              SizedBox(height: 20),
              Divider(
                height: 1,
                thickness: 1,
                color: Colors.black,
                indent: 40,
                endIndent: 40,
              ),
              SizedBox(height: 20),

              SwitchListTile(
              title: Text("Permitir que o cronocrama seja enviado pelo E-mail?"),
              value: permt, 
              onChanged: (value) {
                permt = value;
                setState(() {
                  
                });
              },
              ),
              ElevatedButton(onPressed: () {
                print("Nome:"+""+nomeController.text);
                print("E-mail:"+""+emailController.text);
                print("Tipo de curso:"+""+tc.toString());
                 List<String> peridselet = [];

                // Verificar quais Checkboxes estão selecionadas e adicionar à lista
                if (Inter1) {
                  peridselet.add("Manhã");
                }
                if (Inter2) {
                  peridselet.add("Tarde");
                }
                if (Inter3) {
                  peridselet.add("Noite");
                }
                print("Períodos selecionados:"+peridselet.toString());
                print("Permite:"+""+permt.toString());
                
              }, child: Text("ENVIAR"),
              style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(0), // Borda arredondada
            )
              ),
              )

            ],
          ),
        ),
      ),
    );
  }
}
