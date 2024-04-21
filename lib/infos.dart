// ignore_for_file: non_constant_identifier_names, unnecessary_this, camel_case_types

class Infos{
  String nome = " ";
  String email = " ";
  String tc = " ";
  String Inter1 = " ";
  String Inter2 = " ";
  String Inter3 = " ";
  bool permitir = false;
  
  Infos(this.nome,
  this.email,
  this.tc,
  this.Inter1,
  this.Inter2,
  this.Inter3
  );
  get getNome => this.nome;

 set setNome( nome) => this.nome = nome;

  get getEmail => this.email;

 set setEmail( email) => this.email = email;

  get getTc => this.tc;

 set setTc( tc) => this.tc = tc;

  get getInter1 => this.Inter1;

 set setInter1( Inter1) => this.Inter1 = Inter1;

  get getInter2 => this.Inter2;

 set setInter2( Inter2) => this.Inter2 = Inter2;

  get getInter3 => this.Inter3;

 set setInter3( Inter3) => this.Inter3 = Inter3;

  get getPermitir => this.permitir;

 set setPermitir( permitir) => this.permitir = permitir;



}