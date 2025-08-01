class Usuario {
  final bool online;
  final String email;
  final String name;
  final String uid;

  Usuario({
    this.online = false,
    required this.email,
    required this.name,
    required this.uid,
  });
}
