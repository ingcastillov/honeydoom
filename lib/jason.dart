

class Post {
  String apellido;
  String comentario;
  Post(this.apellido,this.comentario);

  Post.fromJson(var value){
    this.apellido = value['apellido'];
    this.comentario = value['comentario'];
  }

}
