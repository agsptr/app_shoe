class ModelSepatu {
  String name;
  String merk;
  String gender;
  String colorSepatu;
  String priceSepatu;
  String description;
  String imageAsset;
  List<String> imageUrls;

  ModelSepatu({
    required this.name,
    required this.merk,
    required this.gender,
    required this.colorSepatu,
    required this.priceSepatu,
    required this.description,
    required this.imageAsset,
    required this.imageUrls,
  });
}

var listModelSepatu = [
  ModelSepatu(
    name: 'Nike Jordan 9092',
    merk: 'Nike',
    description:
        'Aside From The Look, There\'s A Reason These Trainers Will Become Your Everyday Go-to — The Durable Textile Upper And Cushioned Eva Midsole Are All About Those Long Days And Nights, Supporting Your Moves With Absolute Comfort.',
    gender: 'Male',
    colorSepatu: 'Red',
    priceSepatu: 'Rp 1.070.000',
    imageAsset: 'images/sepatu1.jpeg',
    imageUrls: [
      'https://d3998kv9mq5thy.cloudfront.net/1699258822216.jpeg',
      'https://d3998kv9mq5thy.cloudfront.net/1699258823488.jpeg',
      'https://d3998kv9mq5thy.cloudfront.net/1699258824969.jpeg',
      'https://d3998kv9mq5thy.cloudfront.net/1699258826637.jpeg'
    ],
  ),
  ModelSepatu(
    name: 'Adidas Retropy F2',
    merk: 'Addidas',
    description:
        'Low-top Sneaker With A Mesh And Synthetic Leather Upper. Foam Midsole And Foam-padded Xlt Footbed For Cushioning. Reinforced Heel. Rubber Traction Outsole. Tongue And Heel Pulls. Signature N Branding On The Side.',
    gender: 'Unisex',
    colorSepatu: 'White',
    priceSepatu: 'Rp 2.920.000',
    imageAsset: 'images/sepatu2.jpg',
    imageUrls: [
      'https://www.ncrsport.com/img/storage/large/GW5473-2.jpg',
      'https://www.ncrsport.com/img/storage/large/GW5473-4.jpg',
      'https://www.ncrsport.com/img/storage/large/GW5473-3.jpg'
    ],
  ),
  ModelSepatu(
    name: 'New Balance 327 Vintage',
    merk: 'New Balance',
    description:
        'Dengan sentuhan futuristik, sepatu ini memiliki tampilan yang mengesankan dengan elemen-elemen holografik yang menjadikannya sepatu yang benar-benar unik dan memikat.',
    gender: 'Male',
    colorSepatu: 'White/Grey',
    priceSepatu: 'Rp 1.820.000',
    imageAsset: 'images/sepatu3.jpg',
    imageUrls: [
      'https://www.ncrsport.com/img/storage/large/NEWMS327OC-2.jpg',
      'https://www.ncrsport.com/img/storage/large/NEWMS327OC-3.jpg',
      'https://www.ncrsport.com/img/storage/large/NEWMS327OC-4.jpg'
    ],
  ),
  ModelSepatu(
    name: 'New Balance 574',
    merk: 'New Balance',
    description:
        'Sepatu ini adalah simbol keanggunan dan gaya dengan desain kulit asli yang mengkilap, menciptakan pernyataan fashion yang tak terlupakan yang sesuai untuk acara formal maupun kasual yang istimewa.',
    gender: 'Male',
    colorSepatu: 'Brown',
    priceSepatu: 'Rp 1.190.000',
    imageAsset: 'images/sepatu4.jpg',
    imageUrls: [
      'https://www.ncrsport.com/img/storage/large/U574UBB-2.jpg',
      'https://www.ncrsport.com/img/storage/large/U574UBB-3.jpg',
      'https://www.ncrsport.com/img/storage/large/U574UBB-4.jpg'
    ],
  ),
  ModelSepatu(
    name: 'New Balance 408',
    merk: 'New Balance',
    description:
        'Didesain untuk performa maksimal, sepatu ini menawarkan kenyamanan luar biasa sepanjang hari dengan bantalan yang lembut dan teknologi pendukung yang mengurangi kelelahan kaki.',
    gender: 'Unisex',
    colorSepatu: 'Brown',
    priceSepatu: 'Rp 1.380.000',
    imageAsset: 'images/sepatu5.jpg',
    imageUrls: [
      'https://www.ncrsport.com/img/storage/large/ML408A4-1.jpg',
      'https://www.ncrsport.com/img/storage/large/ML408A4-3.jpg',
      'https://www.ncrsport.com/img/storage/large/ML408A4-4.jpg'
    ],
  ),
  ModelSepatu(
    name: 'Nike Wmns Court Legacy Lift',
    merk: 'Nike',
    description:
        'Sepatu ini merupakan perpaduan sempurna antara gaya retro dan teknologi mutakhir, memberikan kesan klasik yang diperbarui dengan fitur-fitur modern yang luar biasa.',
    gender: 'Female',
    colorSepatu: 'White',
    priceSepatu: 'Rp 1.780.000',
    imageAsset: 'images/sepatu6.jpg',
    imageUrls: [
      'https://www.ncrsport.com/img/storage/large/FJ5483-100-1.jpg',
      'https://www.ncrsport.com/img/storage/large/FJ5483-100-2.jpg',
      'https://www.ncrsport.com/img/storage/large/FJ5483-100-3.jpg',
      'https://www.ncrsport.com/img/storage/large/FJ5483-100-4.jpg'
    ],
  ),
  ModelSepatu(
    name: 'Air Jordan Aj 1 Mid Gs Alternate Bred',
    merk: 'Nike',
    description:
        'Dengan sol karet tahan lama yang dirancang untuk daya tahan ekstrem, sepatu ini cocok untuk petualangan di alam terbuka, memberikan perlindungan dan cengkeraman yang tak tertandingi.',
    gender: 'Male',
    colorSepatu: 'Red',
    priceSepatu: 'Rp 1.210.000',
    imageAsset: 'images/sepatu7.jpg',
    imageUrls: [
      'https://www.ncrsport.com/img/storage/large/DQ8423-060-1.jpg',
      'https://www.ncrsport.com/img/storage/large/DQ8423-060-2.jpg',
      'https://www.ncrsport.com/img/storage/large/DQ8423-060-3.jpg'
    ],
  ),
  ModelSepatu(
    name: 'Dc Shoes Crisis 2 Suede',
    merk: 'DC',
    description:
        'Sepatu ini menciptakan pernyataan gaya yang tak terlupakan dengan aksen warna yang cerah dan kontras, mencerminkan semangat kreatif dan berani yang membedakan Anda dari yang lain.',
    gender: 'Unisex',
    colorSepatu: 'Black',
    priceSepatu: 'Rp 1.780.000',
    imageAsset: 'images/sepatu8.jpg',
    imageUrls: [
      'https://www.ncrsport.com/img/storage/large/ADYS100647-BKW-1.jpg',
      'https://www.ncrsport.com/img/storage/large/ADYS100647-BKW-2.jpg',
      'https://www.ncrsport.com/img/storage/large/ADYS100647-BKW-3.jpg',
      'https://www.ncrsport.com/img/storage/large/ADYS100647-BKW-4.jpg'
    ],
  ),
  ModelSepatu(
    name: 'Nike Pre-school Force 1 Lv8 Valentine\'s Day',
    merk: 'Nike',
    description:
        'SDengan detail bordir yang halus dan perpaduan bahan berkualitas tinggi, sepatu ini memberikan nuansa mewah pada tampilan sehari-hari Anda, menambahkan sentuhan eksklusif ke penampilan Anda.',
    gender: 'Female',
    colorSepatu: 'Pink',
    priceSepatu: 'Rp 2.940.000',
    imageAsset: 'images/sepatu9.jpg',
    imageUrls: [
      'https://www.ncrsport.com/img/storage/large/FD1032-600-1.jpg',
      'https://www.ncrsport.com/img/storage/large/FD1032-600-2.jpg',
      'https://www.ncrsport.com/img/storage/large/FD1032-600-3.jpg',
      'https://www.ncrsport.com/img/storage/large/FD1032-600-4.jpg'
    ],
  ),
  ModelSepatu(
    name: ' Nike Jordan 9092',
    merk: 'Nike',
    description:
        'Aside From The Look, There\'s A Reason These Trainers Will Become Your Everyday Go-to — The Durable Textile Upper And Cushioned Eva Midsole Are All About Those Long Days And Nights, Supporting Your Moves With Absolute Comfort.',
    gender: 'Male',
    colorSepatu: 'Red',
    priceSepatu: 'Rp 1.070.000',
    imageAsset: 'images/sepatu1.jpeg',
    imageUrls: [
      'https://d3998kv9mq5thy.cloudfront.net/1699258822216.jpeg',
      'https://d3998kv9mq5thy.cloudfront.net/1699258823488.jpeg',
      'https://d3998kv9mq5thy.cloudfront.net/1699258824969.jpeg',
      'https://d3998kv9mq5thy.cloudfront.net/1699258826637.jpeg'
    ],
  ),
  ModelSepatu(
    name: 'Adidas Retropy F2',
    merk: 'Addidas',
    description:
        'Low-top Sneaker With A Mesh And Synthetic Leather Upper. Foam Midsole And Foam-padded Xlt Footbed For Cushioning. Reinforced Heel. Rubber Traction Outsole. Tongue And Heel Pulls. Signature N Branding On The Side.',
    gender: 'Unisex',
    colorSepatu: 'White',
    priceSepatu: 'Rp 2.920.000',
    imageAsset: 'images/sepatu2.jpg',
    imageUrls: [
      'https://www.ncrsport.com/img/storage/large/GW5473-2.jpg',
      'https://www.ncrsport.com/img/storage/large/GW5473-4.jpg',
      'https://www.ncrsport.com/img/storage/large/GW5473-3.jpg'
    ],
  ),
  ModelSepatu(
    name: 'New Balance 327 Vintage',
    merk: 'New Balance',
    description:
        'Dengan sentuhan futuristik, sepatu ini memiliki tampilan yang mengesankan dengan elemen-elemen holografik yang menjadikannya sepatu yang benar-benar unik dan memikat.',
    gender: 'Male',
    colorSepatu: 'White/Grey',
    priceSepatu: 'Rp 1.820.000',
    imageAsset: 'images/sepatu3.jpg',
    imageUrls: [
      'https://www.ncrsport.com/img/storage/large/NEWMS327OC-2.jpg',
      'https://www.ncrsport.com/img/storage/large/NEWMS327OC-3.jpg',
      'https://www.ncrsport.com/img/storage/large/NEWMS327OC-4.jpg'
    ],
  ),
  ModelSepatu(
    name: 'New Balance 574',
    merk: 'New Balance',
    description:
        'Sepatu ini adalah simbol keanggunan dan gaya dengan desain kulit asli yang mengkilap, menciptakan pernyataan fashion yang tak terlupakan yang sesuai untuk acara formal maupun kasual yang istimewa.',
    gender: 'Male',
    colorSepatu: 'Brown',
    priceSepatu: 'Rp 1.190.000',
    imageAsset: 'images/sepatu4.jpg',
    imageUrls: [
      'https://www.ncrsport.com/img/storage/large/U574UBB-2.jpg',
      'https://www.ncrsport.com/img/storage/large/U574UBB-3.jpg',
      'https://www.ncrsport.com/img/storage/large/U574UBB-4.jpg'
    ],
  ),
  ModelSepatu(
    name: 'New Balance 408',
    merk: 'New Balance',
    description:
        'Didesain untuk performa maksimal, sepatu ini menawarkan kenyamanan luar biasa sepanjang hari dengan bantalan yang lembut dan teknologi pendukung yang mengurangi kelelahan kaki.',
    gender: 'Unisex',
    colorSepatu: 'Brown',
    priceSepatu: 'Rp 1.380.000',
    imageAsset: 'images/sepatu5.jpg',
    imageUrls: [
      'https://www.ncrsport.com/img/storage/large/ML408A4-1.jpg',
      'https://www.ncrsport.com/img/storage/large/ML408A4-3.jpg',
      'https://www.ncrsport.com/img/storage/large/ML408A4-4.jpg'
    ],
  ),
  ModelSepatu(
    name: 'Nike Wmns Court Legacy Lift',
    merk: 'Nike',
    description:
        'Sepatu ini merupakan perpaduan sempurna antara gaya retro dan teknologi mutakhir, memberikan kesan klasik yang diperbarui dengan fitur-fitur modern yang luar biasa.',
    gender: 'Female',
    colorSepatu: 'White',
    priceSepatu: 'Rp 1.780.000',
    imageAsset: 'images/sepatu6.jpg',
    imageUrls: [
      'https://www.ncrsport.com/img/storage/large/FJ5483-100-1.jpg',
      'https://www.ncrsport.com/img/storage/large/FJ5483-100-2.jpg',
      'https://www.ncrsport.com/img/storage/large/FJ5483-100-3.jpg',
      'https://www.ncrsport.com/img/storage/large/FJ5483-100-4.jpg'
    ],
  ),
  ModelSepatu(
    name: 'Air Jordan Aj 1 Mid Gs Alternate Bred',
    merk: 'Nike',
    description:
        'Dengan sol karet tahan lama yang dirancang untuk daya tahan ekstrem, sepatu ini cocok untuk petualangan di alam terbuka, memberikan perlindungan dan cengkeraman yang tak tertandingi.',
    gender: 'Male',
    colorSepatu: 'Red',
    priceSepatu: 'Rp 1.210.000',
    imageAsset: 'images/sepatu7.jpg',
    imageUrls: [
      'https://www.ncrsport.com/img/storage/large/DQ8423-060-1.jpg',
      'https://www.ncrsport.com/img/storage/large/DQ8423-060-2.jpg',
      'https://www.ncrsport.com/img/storage/large/DQ8423-060-3.jpg'
    ],
  ),
  ModelSepatu(
    name: 'Dc Shoes Crisis 2 Suede',
    merk: 'DC',
    description:
        'Sepatu ini menciptakan pernyataan gaya yang tak terlupakan dengan aksen warna yang cerah dan kontras, mencerminkan semangat kreatif dan berani yang membedakan Anda dari yang lain.',
    gender: 'Unisex',
    colorSepatu: 'Black',
    priceSepatu: 'Rp 1.780.000',
    imageAsset: 'images/sepatu8.jpg',
    imageUrls: [
      'https://www.ncrsport.com/img/storage/large/ADYS100647-BKW-1.jpg',
      'https://www.ncrsport.com/img/storage/large/ADYS100647-BKW-2.jpg',
      'https://www.ncrsport.com/img/storage/large/ADYS100647-BKW-3.jpg',
      'https://www.ncrsport.com/img/storage/large/ADYS100647-BKW-4.jpg'
    ],
  ),
  ModelSepatu(
    name: 'Nike Pre-school Force 1 Lv8 Valentine\'s Day',
    merk: 'Nike',
    description:
        'SDengan detail bordir yang halus dan perpaduan bahan berkualitas tinggi, sepatu ini memberikan nuansa mewah pada tampilan sehari-hari Anda, menambahkan sentuhan eksklusif ke penampilan Anda.',
    gender: 'Female',
    colorSepatu: 'Pink',
    priceSepatu: 'Rp 2.940.000',
    imageAsset: 'images/sepatu9.jpg',
    imageUrls: [
      'https://www.ncrsport.com/img/storage/large/FD1032-600-1.jpg',
      'https://www.ncrsport.com/img/storage/large/FD1032-600-2.jpg',
      'https://www.ncrsport.com/img/storage/large/FD1032-600-3.jpg',
      'https://www.ncrsport.com/img/storage/large/FD1032-600-4.jpg'
    ],
  ),
];

// class ListModel {
//   String name;
//   String location;
//   String description;
//   String openDays;
//   String openTime;
//   String ticketPrice;
//   String imageAsset;
//   List<String> imageUrls;

//   ListModel({
//     required this.name,
//     required this.location,
//     required this.description,
//     required this.openDays,
//     required this.openTime,
//     required this.ticketPrice,
//     required this.imageAsset,
//     required this.imageUrls,
//   });
// }
