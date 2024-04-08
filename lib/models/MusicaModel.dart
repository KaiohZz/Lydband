class musicaModel {
  String pathImagem;
  String nome;
  String artista;

  musicaModel({
    required this.pathImagem,
    required this.nome,
    required this.artista,
  });

  static List<musicaModel> getMusicaModels() {
    List<musicaModel> listaMusica = [];

    listaMusica.add(musicaModel(
        pathImagem: "assets/img/MS1.jpeg",
        nome: "All Too Well (Taylor's Version)",
        artista: "Taylor Swift"));

    listaMusica.add(musicaModel(
        pathImagem: "assets/img/MS2.jpeg",
        nome: "Happier Than Ever",
        artista: "Billie Eilish"));

    listaMusica.add(musicaModel(
        pathImagem: "assets/img/MS3.jpeg",
        nome: "vampire",
        artista: "Olivia Rodrigo"));

    listaMusica.add(musicaModel(
        pathImagem: "assets/img/MS4.jpeg",
        nome: "Voando Pro Pará",
        artista: "Joelma"));

    listaMusica.add(musicaModel(
        pathImagem: "assets/img/ladygaga.jpeg",
        nome: "Telephone",
        artista: "Lady Gaga"));

    return listaMusica;
  }
}
