extension NumberSeparate on int {
  String cammaSeperate() {
    return this.toString().replaceAllMapped(RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'), (Match m) => '${m[1]},');
  }
}
