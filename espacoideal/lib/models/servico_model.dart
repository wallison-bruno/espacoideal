import 'package:espacoideal/models/pacotes.dart';

class Servico {
  String imageUrl;
  String nomeServico;
  String area;
  String descricao;
  List<Pacote> pacotes;

  Servico({
    this.imageUrl,
    this.nomeServico,
    this.area,
    this.descricao,
    this.pacotes,
  });
}

List<Pacote> pacotes = [
  Pacote(
    imageUrl: 'images/servico00.jpeg',
    nome: 'NomePacote',
    tipo: 'Qualquer tipo Qualquer tipoQualquer tipoQualquer tipo',
    preco: 100,
  ),
  Pacote(
    imageUrl: 'images/servico01.jpeg',
    nome: 'NomePacoteR',
    tipo: 'Qualquer tipo',
    preco: 50,
  ),
  Pacote(
    imageUrl: 'images/servico02.jpeg',
    nome: 'NomePacoteR',
    tipo: 'Qualquer tipo',
    preco: 1100,
  ),
];

List<Servico> servicos = [
  Servico(
    imageUrl: 'images/servico00.jpeg',
    nomeServico: 'Lipeza de pele',
    area: 'Dermato',
    descricao: 'Visit Venice for an amazing and unforgettable adventure.',
    pacotes: pacotes,
  ),
  Servico(
    imageUrl: 'images/servico01.jpeg',
    nomeServico: 'Qualquer nome',
    area: 'Qualquer Area',
    descricao: 'Visit Venice for an amazing and unforgettable adventure.',
    pacotes: pacotes,
  ),
  Servico(
    imageUrl: 'images/servico02.jpeg',
    nomeServico: 'Qualquer nome',
    area: 'Qualquer Area',
    descricao: 'Visit Venice for an amazing and unforgettable adventure.',
    pacotes: pacotes,
  ),
  Servico(
    imageUrl: 'images/servico03.jpeg',
    nomeServico: 'Qualquer nome',
    area: 'Qualquer Area',
    descricao: 'Visit Venice for an amazing and unforgettable adventure.',
    pacotes: pacotes,
  ),
  Servico(
    imageUrl: 'images/servico04.jpeg',
    nomeServico: 'Qualquer nome',
    area: 'Qualquer Area',
    descricao: 'Visit Venice for an amazing and unforgettable adventure.',
    pacotes: pacotes,
  ),
];
