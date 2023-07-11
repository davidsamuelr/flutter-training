// Author: David Samuel
// MPE training

class ZipCodeModel{
  final String zipocode;
  final String publicplace;
  final String complement;
  final String district;
  final String locality;
  final String uf;
  final String ibge;
  final String ddd;

  ZipCodeModel(this.zipocode, this.publicplace, this.complement, this.district, this.locality, this.uf, this.ibge, this.ddd);

  @override
  String toString() {
    return '${this.zipocode} ${this.publicplace} ${this.complement} ${this.district} ${this.locality}, ${this.uf}';
  }

}