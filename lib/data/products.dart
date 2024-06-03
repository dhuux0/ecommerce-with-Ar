import '../model/product_model.dart';

List<ProductModel> productItems = [
  // Product List 1
  ProductModel(
    pid: 1,
    imgUrl: 'assets/products/addidas.jpeg',
    title: 'addidas shoes',
    price: 599,
    rating: 1,
    review: 11277,
    shortDescription: 'sports shoes',
    longDescription:
        ' are a versatile and stylish choice for athletes and active individuals. These shoes are designed with performance and comfort in mind, making them suitable for a wide range of activities such as running, jogging, walking, and gym workouts. ',
    //modelpath: 'assets/3D_products/jacket.gltf',
  ),

  // Product List 2
  ProductModel(
    pid: 2,
    imgUrl: 'assets/products/macbook.jpg',
    title: 'MacBook Pro laptop',
    price: 3415,
    rating: 5.0,
    review: 13625,
    //modelpath: 'assets/3D_products/chair.gltf',
    shortDescription: 'Apple M2 Pro chip with 10‑core',
    longDescription:
        'SUPERCHARGED BY M2 PRO OR M2 MAX — Take on demanding projects with the M2 Pro or M2 Max chip. M2 Pro has up to 12 CPU cores, up to 19 GPU cores and up to 32GB unified memory. M2 Max has 12 CPU cores, up to 38 GPU cores and up to 96GB unified memory. All your pro apps run lightning-fast — including Adobe Creative Cloud, Xcode, Affinity Designer, Microsoft 365, and many of your favourite iPhone and iPad apps. The 14.2-inch Liquid Retina XDR display features Extreme Dynamic Range, over 1,000 nits of brightness for stunning HDR content and pro reference modes for doing your best work on the go.',
  ),

  // Product List 3
  ProductModel(
      pid: 3,
      imgUrl: 'assets/products/disel.jpeg',
      title: 'Disel jeans',
      price: 255,
      rating: 4.8,
      review: 13625,
      shortDescription: 'men jeans',
      //  modelpath: 'assets/3D_products/jacket.gltf',
      longDescription:
          "Diesel jeans are renowned for their high-quality craftsmanship, stylish designs, and durability. Here's a detailed description of Diesel jeans:"),

  // Product List 4
  ProductModel(
      pid: 4,
      imgUrl: 'assets/products/watch.jpg',
      title: 'smart watch',
      price: 255,
      rating: 4,
      review: 125,
      // modelpath: 'assets/3D_products/jacket.gltf',
      shortDescription: 'apple watch',
      longDescription:
          "The Apple Watch Series 7 is a smartwatch developed by Apple Inc. It's the latest model in the Apple Watch lineup, succeeding the Series 6. Here's an overview of its features and specifications:"),

  // Product List 5
  ProductModel(
      pid: 5,
      imgUrl: 'assets/products/Polo.jpeg',
      title: 'polo t-shirt',
      price: 750,
      rating: 2,
      review: 102,
      // modelpath: 'assets/3D_products/jacket.gltf',
      shortDescription: 'T-shirt ',
      longDescription:
          "Fit: T-shirts are available in various fits, ranging from slim fit to relaxed fit. Slim-fit T-shirts hug the body more closely, while relaxed-fit T-shirts offer a looser, more comfortable silhouette. Some T-shirts may also feature tailored or fitted cuts for a more polis hed look."),

  // Product List 6
  ProductModel(
      pid: 6,
      imgUrl: 'assets/products/rolex.jpeg',
      title: 'watch',
      price: 2500,
      rating: 5,
      review: 450,
      //  modelpath: 'assets/3D_products/jacket.gltf',
      shortDescription: 'rolex,',
      longDescription:
          "The Rolex Perpetual Oyster is a distinguished timepiece renowned for its exquisite craftsmanship, precision engineering, and timeless elegance. Here's a detailed description of the Rolex Perpetual Oyster:"),

  // Product List 7
  ProductModel(
    pid: 7,
    imgUrl: 'assets/products/ipad.jpg',
    title: 'Apple iPad Pro',
    price: 1200,
    rating: 5,
    //  modelpath: 'assets/3D_products/jacket.gltf',
    review: 450,
    shortDescription: '12.9 inch 6th Generation',
    longDescription:
        'Brilliant 12.9-inch Liquid Retina XDR display with ProMotion, True Tone, and P3 wide color M2 chip with 8-core CPU and 10-core GPU 12MP Wide camera, 10MP Ultra Wide back camera, and LiDAR Scanner for immersive AR 12MP Ultra Wide front camera with Center Stage Stay connected with ultrafast Wi-Fi 6E USB-C connector with support for Thunderbolt / USB 4 Face ID for secure authentication and Apple Pay Go far with all-day battery life Works with Apple Pencil (2nd generation), Magic Keyboard, and Smart Keyboard Folio Support for Apple Pencil hover for more precise marking and sketching',
  ),

  // Product List 8
  ProductModel(
      pid: 8,
      imgUrl: 'assets/products/funanad.jpeg',
      title: 'Nike T-shirt',
      price: 1600,
      rating: 3,
      // modelpath: 'assets/3D_products/jacket.gltf',
      review: 258,
      shortDescription: 'sports T-shirt',
      longDescription:
          "The Nike Drip T-shirt combines style and performance, making it an ideal choice for both casual wear and athletic activities. Here's a detailed description of the Nike Drip T-shirt"),

  // Product List 9
  ProductModel(
    pid: 9,
    imgUrl: 'assets/products/watch.jpg',
    title: 'Apple Watch Series 8',
    price: 480,
    rating: 2,
    //  modelpath: 'assets/3D_products/jacket.gltf',
    review: 258,
    shortDescription: 'Cellular 45mm Smart Watch ',
    longDescription:
        'WHY APPLE WATCH SERIES 8 — Your essential companion for a healthy life is now even more powerful. Advanced sensors provide insights to help you better understand your health. New safety features can get you help when you need it. The bright, Always-On Retina display is easy to read, even when your wrist is down. CELLULAR CONNECTIVITY — Send a text, make a call, and stream music without your iPhone, even while traveling internationally. Use Family Setup to manage Apple Watch for family members who don’t have an iPhone. EASILY CUSTOMIZABLE — Available in a range of sizes and materials, with dozens of bands to choose from and watch faces with complications tailored to whatever you’re into. ',
  ),

  // Product List 10
  ProductModel(
    pid: 10,
    imgUrl: 'assets/products/logic.jpg',
    title: 'Logitech MX Master 3S',
    price: 87,
    rating: 4,
    //  modelpath: 'assets/3D_products/jacket.gltf',
    review: 2340,
    shortDescription: 'Wireless Performance Mouse',
    longDescription:
        'Any-surface tracking - now 8K DPI: Use MX Master 3S cordless computer mouse to work on any surface - even glass (1) - with the upgraded 8000 DPI sensor with customisable sensitivity. Introducing quiet clicks: MX Master 3S Bluetooth mouse features Quiet Clicks - offering the same satisfying feel but with 90% less click noise (2). Magspeed scrolling: A computer mouse with remarkable speed, precision, and near silence - MagSpeed scrolling is 90% faster (3), 87% more precise (4), and ultra quiet. Ergonomic design: Work comfortably with a precision mouse featuring a silhouette crafted for more natural wrist posture and optimally placed thumb controls.',
  ),
  ProductModel(
      pid: 11,
      imgUrl: 'assets/products/sariir.jpeg',
      title: 'double bed ',
      price: 1000,
      rating: 5,
      //   modelpath: 'assets/3D_products/jacket.gltf',
      review: 10000,
      shortDescription: 'kindom bed',
      longDescription:
          'This is a double king size bed with black color and white linen sheets and a duvet cover in light blue color.\n'),
//product 12
  ProductModel(
      pid: 12,
      imgUrl: 'assets/products/air.jpeg',
      title: 'sneakers',
      price: 200,
      //   modelpath: 'assets/3D_products/jacket.gltf',
      shortDescription: 'sports and fashion sneakers',
      longDescription:
          'these  sneakers are for fashion and sports they are so good soft and deliaple sneakers',
      review: 2,
      rating: 150)
];// product 11

