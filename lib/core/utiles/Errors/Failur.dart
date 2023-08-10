abstract class failure {
  final String message;

  failure(this.message);
}

class Serverfailur extends failure {
  Serverfailur(super.message);
}
