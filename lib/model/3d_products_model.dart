// ignore: file_names
// ignore_for_file: non_constant_identifier_names

class DProductsmodel {
  final int Pid;
  final String imageurl;
  final String title;
  final double price;
  final String short_description;
  final String long_description;
  final int review;
  final double rating;
  // final String modelpath;

  bool isSelected;
  int quantity;

  DProductsmodel({
    required this.Pid,
    required this.imageurl,
    required this.title,
    required this.price,
    required this.short_description,
    required this.long_description,
    required this.review,
    // required this.modelpath,
    required this.rating,
    this.isSelected = false,
    this.quantity = 1,
    //required String shortDescription, required int pid,
    //required int pid, required String imgUrl, required String shortDescription,
  });
  DProductsmodel copywith({
    int? Pid,
    String? imageurl,
    String? title,
    double? price,
    String? short_description,
    String? long_description,
    int? review,
    double? rating,
    bool? isSelected,
    int? quantity,
    //String? modelpath
  }) {
    return DProductsmodel(
        Pid: Pid ?? this.Pid,
        imageurl: imageurl ?? this.imageurl,
        title: title ?? this.title,
        price: price ?? this.price,
        short_description: short_description ?? this.short_description,
        long_description: long_description ?? this.long_description,
        review: review ?? this.review,
        rating: rating ?? this.rating,
        isSelected: isSelected ?? this.isSelected,
        quantity: quantity ?? this.quantity);
  }
}
