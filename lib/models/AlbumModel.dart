class albumModel {
  String pathImagem;
  String nome;
  String artista;

  albumModel({
    required this.pathImagem,
    required this.nome,
    required this.artista,
  });

  static List<albumModel> getAlbunsModels() {
    List<albumModel> listaAlbuns = [];

    listaAlbuns.add(albumModel(
        pathImagem: "assets/img/AB1.jpeg",
        nome: "A Wild Romance",
        artista: "The Twins"));

    listaAlbuns.add(albumModel(
        pathImagem: "assets/img/AB2.jpeg",
        nome: "Passion Factory",
        artista: "The Twins"));

    listaAlbuns.add(albumModel(
        pathImagem: "assets/img/AB3.jpeg",
        nome: "Modern Lifestyle",
        artista: "The Twins"));

    listaAlbuns.add(albumModel(
        pathImagem: "assets/img/AB4.jpeg",
        nome: "Hold On To Your Dreams",
        artista: "The Twins"));

    listaAlbuns.add(albumModel(
        pathImagem: "assets/img/bornpink.jpeg",
        nome: "BORN PINK",
        artista: "BLACKPINK"));

    listaAlbuns.add(albumModel(
        pathImagem: "assets/img/igor.jpeg",
        nome: "IGOR",
        artista: "Tyler, The Creator"));

    return listaAlbuns;
  }
}
