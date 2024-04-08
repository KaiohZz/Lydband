class AlbumMusicaModel {
  String index;
  String nome;
  String nota;

  AlbumMusicaModel({
    required this.index,
    required this.nome,
    required this.nota,
  });

  static List<AlbumMusicaModel> getMusicas() {
    List<AlbumMusicaModel> listaMusicas = [];

    listaMusicas.add(AlbumMusicaModel(
        index: "1",
        nome: "IGOR'S THEME",
        nota: "4,7"));

    listaMusicas.add(AlbumMusicaModel(
        index: "2",
        nome: "EARFQUAKE",
        nota: "4,7"));

    listaMusicas.add(AlbumMusicaModel(
        index: "3",
        nome: "I THINK",
        nota: "4,7"));

    listaMusicas.add(AlbumMusicaModel(
        index: "4",
        nome: "EXACTLY WHAT YOU RUN FROM YOU END UP CHASING",
        nota: "4,7"));

    listaMusicas.add(AlbumMusicaModel(
        index: "5",
        nome: "RUNNING OUT OF TIME",
        nota: "4,7"));

    listaMusicas.add(AlbumMusicaModel(
        index: "6",
        nome: "NEW MAGIC WAND",
        nota: "4,7"));

    listaMusicas.add(AlbumMusicaModel(
        index: "7",
        nome: "A BOY IS A GUN*",
        nota: "4,7"));

    listaMusicas.add(AlbumMusicaModel(
        index: "8",
        nome: "PUPPET",
        nota: "4,7"));

    listaMusicas.add(AlbumMusicaModel(
        index: "9",
        nome: "WHAT'S GOOD",
        nota: "4,7"));

    listaMusicas.add(AlbumMusicaModel(
        index: "10",
        nome: "GONE, GONE / THANK YOU",
        nota: "4,7"));

    listaMusicas.add(AlbumMusicaModel(
        index: "11",
        nome: "I DON'T LOVE YOU ANYMORE",
        nota: "4,7"));

    listaMusicas.add(AlbumMusicaModel(
        index: "12",
        nome: "ARE WE STILL FRIENDS",
        nota: "4,7"));

    return listaMusicas;
  }
}
