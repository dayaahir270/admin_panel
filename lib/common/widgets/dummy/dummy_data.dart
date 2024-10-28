// import 'package:ecom/features/shop/models/product/product_model.dart';
// import '../../../features/shop/models/banner_model.dart';
// import '../../../features/shop/models/brand_model.dart';
// import '../../../features/shop/models/category_model.dart';
// import '../../../features/shop/models/product_attribute_model.dart';
// import '../../../features/shop/models/product_variation_model.dart';
// import '../../../routes/routes.dart';
// import '../../../utils/constants/image_strings_t.dart';
//
// class TDummyData {
//   /// Banners
//   static final List<BannerModel> banners = [
//     BannerModel(
//         imageUrl: TImages.banner1, targetScreen: TRoutes.order, active: false),
//     BannerModel(
//         imageUrl: TImages.banner2, targetScreen: TRoutes.cart, active: true),
//     BannerModel(
//         imageUrl: TImages.banner3,
//         targetScreen: TRoutes.favourites,
//         active: true),
//     BannerModel(
//         imageUrl: TImages.banner4, targetScreen: TRoutes.search, active: true),
//     BannerModel(
//         imageUrl: TImages.banner5,
//         targetScreen: TRoutes.settings,
//         active: true),
//     BannerModel(
//         imageUrl: TImages.banner6,
//         targetScreen: TRoutes.userAddress,
//         active: true),
//     BannerModel(
//         imageUrl: TImages.banner8,
//         targetScreen: TRoutes.checkout,
//         active: false),
//   ];
//
//   // /// -- User
//   // static final UserModel user = UserModel(...); // UserModel
//   // /// -- Cart
//   // static final CartModel cart = CartModel(...); // CartModel
//   // /// -- Order
//   // static final List<OrderModel> orders = [...];
//
//   /// List of all Categories
//   static final List<CategoryModel> categories = [
//     CategoryModel(id: 1, image: "", name: 'Sports', isFeatured: true),
//     CategoryModel(id: 5, image: "", name: 'Furniture', isFeatured: true),
//     CategoryModel(id: 2, image: "", name: 'Electronics', isFeatured: true),
//     CategoryModel(id: 3, image: "", name: 'Clothes', isFeatured: true),
//     CategoryModel(id: 4, image: "", name: 'Animals', isFeatured: true),
//     CategoryModel(id: 6, image: "", name: 'Shoes', isFeatured: true),
//     CategoryModel(id: 7, image: "", name: 'Cosmetics', isFeatured: true),
//     CategoryModel(id: 14, image: "", name: 'Jewelery', isFeatured: true),
//
//     ///subcategories
//     CategoryModel(
//         id: 8,
//         image: "",
//         name: 'Sport Shoes',
//         parentId: '1',
//         isFeatured: false),
//     CategoryModel(
//         id: 9,
//         image: "",
//         name: 'Track suits',
//         parentId: '1',
//         isFeatured: false),
//     CategoryModel(
//         id: 10,
//         image: "",
//         name: 'Sports Equipments',
//         parentId: '1',
//         isFeatured: false),
// //furniture
//     CategoryModel(
//         id: 11,
//         image: "",
//         name: 'Bedroom furniture',
//         parentId: '5',
//         isFeatured: false),
//     CategoryModel(
//         id: 12,
//         image: "",
//         name: 'Kitchen furniture',
//         parentId: '5',
//         isFeatured: false),
//     CategoryModel(
//         id: 13,
//         image: "",
//         name: 'Office furniture',
//         parentId: '5',
//         isFeatured: false),
// //electronics
//     CategoryModel(
//         id: 14, image: "", name: 'Laptop', parentId: '2', isFeatured: false),
//     CategoryModel(
//         id: 15, image: "", name: 'Mobile', parentId: '2', isFeatured: false),
//   ];
//
//   /// -- List of all Brands
//   static final List<BrandModel> brands = [
//     BrandModel(
//         id: '1',
//         image: TImages.nikeLogo,
//         name: 'Nike',
//         productsCount: 265,
//         isFeatured: true),
//     BrandModel(
//         id: '2',
//         image: TImages.adidasLogo,
//         name: 'Adidas',
//         productsCount: 95,
//         isFeatured: true),
//     BrandModel(
//         id: '8',
//         image: TImages.kenwoodLogo,
//         name: 'Kenwood',
//         productsCount: 36,
//         isFeatured: false),
//     BrandModel(
//         id: '9',
//         image: TImages.ikeaLogo,
//         name: 'IKEA',
//         productsCount: 36,
//         isFeatured: false),
//     BrandModel(
//         id: '5',
//         image: TImages.appleLogo,
//         name: 'Apple',
//         productsCount: 16,
//         isFeatured: true),
//     BrandModel(
//         id: '10',
//         image: TImages.acerLogo,
//         name: 'Acer',
//         productsCount: 36,
//         isFeatured: false),
//     BrandModel(
//         id: '3',
//         image: TImages.jordanLogo,
//         name: 'Jordan',
//         productsCount: 36,
//         isFeatured: true),
//     BrandModel(
//         id: '4',
//         image: TImages.pumaLogo,
//         name: 'Puma',
//         productsCount: 65,
//         isFeatured: true),
//     BrandModel(
//         id: '5',
//         image: TImages.zaraLogo,
//         name: 'ZARA',
//         productsCount: 36,
//         isFeatured: true),
//     BrandModel(
//         id: '6',
//         image: TImages.electronicsIcon,
//         name: 'Samsung',
//         productsCount: 36,
//         isFeatured: false),
//   ];
//
// //   /// List of all Brand Categories
// //   static final List<BrandCategoryModel> brandCategory = [
// //     BrandCategoryModel(brandId: '1', categoryId: '1'),
// //     BrandCategoryModel(brandId: '1', categoryId: '8'),
// //     BrandCategoryModel (brandId: '1', categoryId: '9'),
// //     BrandCategoryModel (brandId: '1', categoryId: '10'),
// //     BrandCategoryModel(brandId: '2', categoryId: '1'),
// //     BrandCategoryModel (brandId: '2', categoryId: '8'),
// //     BrandCategoryModel (brandId: '2', categoryId: '9'),
// //     BrandCategoryModel(brandId: '2', categoryId: '10'),
// //     BrandCategoryModel (brandId: '3', categoryId: '1'),
// //     BrandCategoryModel (brandId: '3', categoryId: '8'),
// //     BrandCategoryModel (brandId: '3', categoryId: '9'),
// //     BrandCategoryModel (brandId: '3', categoryId: '10'),
// //     BrandCategoryModel (brandId: '4', categoryId: '1'),
// //     BrandCategoryModel(brandId: '4', categoryId: '8'),
// //     BrandCategoryModel (brandId: '4', categoryId: '9'),
// //     BrandCategoryModel (brandId: '4', categoryId: '10'),
// //     BrandCategoryModel (brandId: '5', categoryId: '15'),
// //     BrandCategoryModel (brandId: '5', categoryId: '2'),
// //     BrandCategoryModel (brandId: '10', categoryId: '2'),
// //     BrandCategoryModel (brandId: '10', categoryId: '14'),
// //     BrandCategoryModel (brandId: '6', categoryId: '3'),
// //     BrandCategoryModel (brandId: '6', categoryId: '16'),
// //     BrandCategoryModel (brandId: '7', categoryId: '2'),
// //     BrandCategoryModel(brandId: '8', categoryId: '5'),
// //     BrandCategoryModel (brandId: '8', categoryId: '11'),
// //     BrandCategoryModel (brandId: '8', categoryId: '12'),
// //     BrandCategoryModel (brandId: '8', categoryId: '13'),
// //     BrandCategoryModel (brandId: '9', categoryId: '5'),
// //     BrandCategoryModel(brandId: '9', categoryId: '11'),
// //     BrandCategoryModel(brandId: '9', categoryId: '12'),
// //     BrandCategoryModel (brandId: '9', categoryId: '13'),
// //   ];
// //   /// List of all Product Categories
// //   static final List<ProductCategoryModel> productCategories = [
// //   ProductCategoryModel (productId: '001', categoryId: '1'),
// //   ProductCategoryModel (productId: '001', categoryId: '8'),
// //   ProductCategoryModel (productId: '004', categoryId: '3'),
// //   ProductCategoryModel (productId: '002', categoryId: '3'),
// //   ProductCategoryModel (productId: '002', categoryId: '16'),
// //   ProductCategoryModel (productId: '003', categoryId: '3'),
// //   ProductCategoryModel (productId: '005', categoryId: '1'),
// //   ProductCategoryModel (productId: '005', categoryId: '8'),
// //   ProductCategoryModel (productId: '040', categoryId: '2'),
// //   ProductCategoryModel (productId: '040', categoryId: '15'),
// //   ProductCategoryModel (productId: '006', categoryId: '2'),
// //   ProductCategoryModel (productId: '007', categoryId: '4'),
// //   ProductCategoryModel (productId: '009', categoryId: '1'),
// //   ProductCategoryModel (productId: '009', categoryId: '8'),
// //   ProductCategoryModel (productId: '010', categoryId: '1'),
// //   ProductCategoryModel (productId: '010', categoryId: '8'),
// //   ProductCategoryModel (productId: '011', categoryId: '1'),
// //   ProductCategoryModel (productId: '011', categoryId: '8'),
// //   ProductCategoryModel (productId: '012', categoryId: '1'),
// //   ProductCategoryModel (productId: '012', categoryId: '8'),
// //   ProductCategoryModel (productId: '013', categoryId: '1'),
// //   ProductCategoryModel (productId: '013', categoryId: '8'),
// //   ProductCategoryModel (productId: '014', categoryId: '1'),
// //   ProductCategoryModel (productId: '014', categoryId: '9'),
// //   ProductCategoryModel (productId: '015', categoryId: '1'),
// //   ProductCategoryModel (productId: '015', categoryId: '9'),
// //   ProductCategoryModel (productId: '016', categoryId: '1'),
// //   ProductCategoryModel (productId: '016', categoryId: '9'),
// //   ProductCategoryModel (productId: '017', categoryId: '1'),
// //   ProductCategoryModel (productId: '017', categoryId: '9'),
// //   ProductCategoryModel (productId: '018', categoryId: '1'),
// //   ProductCategoryModel (productId: '018', categoryId: '10'),
// //   ProductCategoryModel (productId: '019', categoryId: '1'),
// //   ProductCategoryModel (productId: '019', categoryId: '10'),
// //   ProductCategoryModel (productId: '020', categoryId: '1'),
// //   ProductCategoryModel (productId: '020', categoryId: '10'),
// //   ProductCategoryModel (productId: '021', categoryId: '1'),
// //   ProductCategoryModel (productId: '021', categoryId: '10'),
// //   Product Category Model (productId: '022', categoryId: '5'),
// //   ProductCategoryModel (productId: '022', categoryId: '11'),
// //   ProductCategoryModel (productId: '023', categoryId: '5'),
// //   ProductCategoryModel (productId: '023', categoryId: '11'),
// //   ProductCategoryModel (productId: '024', categoryId: '5'),
// //   ProductCategoryModel (productId: '024', categoryId: '11'),
// //   ProductCategoryModel (productId: '025', categoryId: '5'),
// //   ProductCategoryModel (productId: '025', categoryId: '11'),
// //   ProductCategoryModel (productId: '026', categoryId: '5'),
// //   ProductCategoryModel (productId: '026', categoryId: '12'),
// //   Product Category Model (productId: '027', categoryId: '5'),
// //   ProductCategoryModel (productId: '027', categoryId: '12'),
// //   ProductCategoryModel (productId: '028', categoryId: '5'),
// //   ProductCategoryModel (productId: '028', categoryId: '12'),
// //   Product Category Model (productId: '029', categoryId: '5'),
// //   ProductCategoryModel (productId: '029', categoryId: '13'),
// //   ProductCategoryModel (productId: '030', categoryId: '5'),
// //   ProductCategory Model (productId: '030', categoryId: '13'),
// //   ProductCategoryModel (productId: '031', categoryId: '5'),
// //   ProductCategoryModel (productId: '031', categoryId: '13'),
// //   ProductCategoryModel (productId: '032', categoryId: '5'),
// //   Product Category Model (productId: '032', categoryId: '13'),
// //   ProductCategoryModel (productId: '033', categoryId: '2'),
// //   ProductCategoryModel (productId: '033', categoryId: '14'),
// //   ProductCategoryModel (productId: '034', categoryId: '2'),
// //   ProductCategoryModel (productId: '034', categoryId: '14'),
// //   ProductCategoryModel (productId: '035', categoryId: '2'),
// //     ProductCategoryModel (productId: '035', categoryId: '14'),
// //     ProductCategoryModel (productId: '036', categoryId: '2'),
// //     ProductCategoryModel (productId: '036', categoryId: '14'),
// //     ProductCategoryModel (productId: '037', categoryId: '2'),
// //     ProductCategoryModel (productId: '037', categoryId: '15'),
// //     ProductCategoryModel (productId: '038', categoryId: '2'),
// //     ProductCategoryModel (productId: '038', categoryId: '15'),
// //     ProductCategoryModel (productId: '039', categoryId: '2'),
// //     ProductCategoryModel (productId: '039', categoryId: '15'),
// // //040 after product 005
// //     ProductCategoryModel (productId: '008', categoryId: '2'),
// //   ];
//
//   /// List of all Products
//   static final List<ProductModel> products = [
//     ProductModel(
//       id: '001',
//       title: 'Green Nike sports shoe',
//       stock: 15,
//       price: 135,
//       isFeatured: true,
//       thumbnail: TImages.productImage1,
//       description: 'Green Nike sports shoe',
//       brand: BrandModel(
//           id: '1',
//           image: TImages.nikeLogo,
//           name: 'Nike',
//           productsCount: 265,
//           isFeatured: true),
//       images: [
//         TImages.productImage1,
//         TImages.productImage23,
//         TImages.productImage21,
//         TImages.productImage9
//       ],
//       salePrice: 30,
//       sku: 'ABR4568',
//       categoryId: '1',
//       productAttributes: [
//         ProductAttributeModel(name: 'Coloc', values: ['Green', 'Black', 'Red']),
//         ProductAttributeModel(
//             name: 'Size', values: ['EU 30', 'EU 32', 'EU 34']),
//       ],
//       productVariations: [
//         ProductVariationModel(
//             id: '1',
//             stock: 34,
//             price: 134,
//             salePrice: 122.6,
//             image: TImages.productImage1,
//             description:
//                 'This is a Product description for Green Nike sports shoe.',
//             attributeValues: {'Color': 'Green', 'Size': 'EU 34'}),
//         // ProductVariationModel
//         ProductVariationModel(
//             id: '2',
//             stock: 15,
//             price: 132,
//             image: TImages.productImage23,
//             attributeValues: {'Color': 'Black', 'Size': 'EU 32'}),
//         // ProductVariationModel
//         ProductVariationModel(
//             id: '3',
//             stock: 0,
//             price: 234,
//             image: TImages.productImage23,
//             attributeValues: {'Color': 'Black', 'Size': 'EU 34'}),
//         // Product VariationModel
//         ProductVariationModel(
//             id: '4',
//             stock: 222,
//             price: 232,
//             image: TImages.productImage1,
//             attributeValues: {'Color': 'Green', 'Size': 'EU 32'}),
//         // Product Variation Model
//         ProductVariationModel(
//             id: '5',
//             stock: 0,
//             price: 334,
//             image: TImages.productImage21,
//             attributeValues: {'Color': 'Red', 'Size': 'EU 34'}),
//         // ProductVariationModel
//         ProductVariationModel(
//             id: '61',
//             stock: 11,
//             price: 332,
//             image: TImages.productImage21,
//             attributeValues: {'Color': 'Red', 'Size': 'EU 32'}),
//         // ProductVariationModel
//       ],
//       productType: 'ProductType.variable',
//     ),
//     ProductModel(
//         id: '61',
//         title: 'Leather brown Jacket',
//         stock: 15,
//         price: 38000,
//         isFeatured: false,
//         thumbnail: TImages.productImage64,
//         description:
//             'This is a Product description for Leather brown Jacket. There are more things that can be added but i am just practicing and nothing else.',
//         brand: BrandModel(id: '6', image: TImages.zaraLogo, name: 'ZARA'),
//         images: [
//           TImages.productImage64,
//           TImages.productImage65,
//           TImages.productImage66,
//           TImages.productImage67
//         ],
//         salePrice: 30,
//         sku: 'ABR4568',
//         categoryId: '16',
//         productAttributes: [
//           ProductAttributeModel(name: 'Size', values: ['EU34', 'EU32']),
//           ProductAttributeModel(
//               name: 'Color', values: ['Green', 'Red', 'Blue']),
//         ],
//         productType: 'ProductType.single'),
//     ProductModel(
//       id: '004',
//       title: '4 Color collar t-shirt dry fit',
//       stock: 15,
//       price: 135,
//       isFeatured: false,
//       thumbnail: TImages.productImage60,
//       description:
//           'This is a Product description for 4 Color collar t-shirt dry fit. There are more things that can be added but its just a demo and nothing else.',
//       brand: BrandModel(id: '6', image: TImages.zaraLogo, name: 'ZARA'),
//       images: [
//         TImages.productImage60,
//         TImages.productImage61,
//         TImages.productImage62,
//         TImages.productImage63
//       ],
//       salePrice: 30,
//       sku: 'ABR4568',
//       categoryId: '16',
//       productAttributes: [
//         ProductAttributeModel(
//             name: 'Color', values: ['Red', 'Yellow', 'Green', 'Blue']),
//         ProductAttributeModel(
//             name: 'Size', values: ['EU 30', 'EU 32', 'EU 34']),
//       ],
//       productVariations: [
//         ProductVariationModel(
//             id: '1',
//             stock: 34,
//             price: 134,
//             salePrice: 122.6,
//             image: TImages.productImage60,
//             description:
//                 'This is a Product description for 4 Color collar t-shirt dry fit',
//             attributeValues: {'Color': 'Red', 'Size': 'EU 34'}),
//         // ProductVariationModel
//         ProductVariationModel(
//             id: '2',
//             stock: 15,
//             price: 132,
//             image: TImages.productImage60,
//             attributeValues: {'Color': 'Red', 'Size': 'EU 32'}),
//         // ProductVariationModel
//         ProductVariationModel(
//             id: '3',
//             stock: 0,
//             price: 234,
//             image: TImages.productImage61,
//             attributeValues: {'Color': 'Yellow', 'Size': 'EU 34'}),
//         // Product Variation Model
//         ProductVariationModel(
//             id: '4',
//             stock: 222,
//             price: 232,
//             image: TImages.productImage61,
//             attributeValues: {'Color': 'Yellow', 'Size': 'EU 32'}),
//         // Product VariationModel
//         ProductVariationModel(
//             id: '5',
//             stock: 0,
//             price: 334,
//             image: TImages.productImage62,
//             attributeValues: {'Color': 'Green', 'Size': 'EU 34'}),
//         // Product VariationModel
//         ProductVariationModel(
//             id: '6',
//             stock: 11,
//             price: 332,
//             image: TImages.productImage62,
//             attributeValues: {'Color': 'Green', 'Size': 'EU 30'}),
//         // ProductVariationModel
//         ProductVariationModel(
//             id: '7',
//             stock: 0,
//             price: 334,
//             image: TImages.productImage63,
//             attributeValues: {'Color': 'Blue', 'Size': 'EU 30'}),
//         // Product Variation Model
//         ProductVariationModel(
//             id: '8',
//             stock: 11,
//             price: 332,
//             image: TImages.productImage63,
//             attributeValues: {'Color': 'Blue', 'Size': 'EU 34'}),
//         // Product VariationModel
//       ],
//       productType: 'ProductType.variable',
//     ),
//     ProductModel(
//       id: '005',
//       title: 'Nike Air Jordon Shoes',
//       stock: 15,
//       price: 35,
//       isFeatured: false,
//       thumbnail: TImages.productImage10,
//       description:
//           'Nike Air Jordon Shoes for running. Quality product, Long Lasting',
//       brand: BrandModel(
//           id: '1',
//           image: TImages.nikeLogo,
//           name: 'Nike',
//           productsCount: 265,
//           isFeatured: true),
//       images: [
//         TImages.productImage7,
//         TImages.productImage8,
//         TImages.productImage9,
//         TImages.productImage10
//       ],
//       salePrice: 30,
//       sku: 'ABR4568',
//       categoryId: '8',
//       productAttributes: [
//         ProductAttributeModel(
//             name: 'Color', values: ['Orange', 'Black', 'Brown']),
//         ProductAttributeModel(
//             name: 'Size', values: ['EU 30', 'EU 32', 'EU 34']),
//       ],
//       productVariations: [
//         ProductVariationModel(
//             id: '1',
//             stock: 16,
//             price: 36,
//             salePrice: 12.6,
//             image: TImages.productImage8,
//             description:
//                 'Flutter is Googles mobile UI open source framework to build high-quality native (super fast) interfaces for iOS and Android apps with the unified codebase.',
//             attributeValues: {'Color': 'Orange', 'Size': 'EU 34'}),
//         ProductVariationModel(
//             id: '2',
//             stock: 15,
//             price: 35,
//             image: TImages.productImage7,
//             attributeValues: {'Color': 'Black', 'Size': 'EU 32'}),
//         ProductVariationModel(
//             id: '3',
//             stock: 14,
//             price: 34,
//             image: TImages.productImage9,
//             attributeValues: {'Color': 'Brown', 'Size': 'EU 34'}),
//         ProductVariationModel(
//             id: '4',
//             stock: 13,
//             price: 33,
//             image: TImages.productImage8,
//             attributeValues: {'Color': 'Orange', 'Size': 'EU 34'}),
//         ProductVariationModel(
//             id: '5',
//             stock: 12,
//             price: 32,
//             image: TImages.productImage9,
//             attributeValues: {'Color': 'Brown', 'Size': 'EU 32'}),
//         ProductVariationModel(
//             id: '6',
//             stock: 11,
//             price: 31,
//             image: TImages.productImage8,
//             attributeValues: {'Color': 'Orange', 'Size': 'EU 32'}),
//       ],
//       productType: 'ProductType.variable',
//     ),
//     ProductModel(
//       id: '006',
//       title: 'SAMSUNG Galaxy S9 (Pink, 64 GB) (4 GB RAM)',
//       stock: 15,
//       price: 750,
//       isFeatured: false,
//       thumbnail: TImages.productImage11,
//       description:
//           'SAMSUNG Galaxy S9 (Pink, 64 GB) (4 GB RAM), Long Battery timing',
//       brand: BrandModel(id: '7', image: TImages.appleLogo, name: 'Samsung'),
//       images: [
//         TImages.productImage11,
//         TImages.productImage12,
//         TImages.productImage13,
//         TImages.productImage12
//       ],
//       salePrice: 650,
//       sku: 'ABR4568',
//       categoryId: '2',
//       productAttributes: [
//         ProductAttributeModel(name: 'Size', values: ['EU34', 'EU32']),
//         ProductAttributeModel(name: 'Color', values: ['Green', 'Red', 'Blue']),
//       ],
//       productType: 'ProductType.single',
//     ),
//     ProductModel(
//       id: '007',
//       title: 'TOMI Dog food',
//       stock: 15,
//       price: 20,
//       isFeatured: false,
//       thumbnail: TImages.productImage18,
//       description:
//           'This is a Product description for TOMI Dog food. There are more things that can be added but i am just practicing and nothing else.',
//       brand: BrandModel(id: '7', image: TImages.appleLogo, name: 'Tomi'),
//       salePrice: 10,
//       sku: 'ABR4568',
//       categoryId: '4',
//       productAttributes: [
//         ProductAttributeModel(name: 'Size', values: ['EU34', 'EU32']),
//         ProductAttributeModel(name: 'Color', values: ['Green', 'Red', 'Blue']),
//       ],
//       productType: 'ProductType.single',
//     ),
//     ProductModel(
//       id: '009',
//       title: 'Nike Air Jordon 19 Blue',
//       stock: 15,
//       price: 400,
//       isFeatured: false,
//       thumbnail: TImages.productImage19,
//       description:
//           'This is a Product description for Nike Air Jordon. There are more things that can be added but i am just practicing and nothing else.',
//       brand: BrandModel(id: '1', image: TImages.nikeLogo, name: 'Nike'),
//       images: [
//         TImages.productImage19,
//         TImages.productImage20,
//         TImages.productImage21,
//         TImages.productImage22
//       ],
//       salePrice: 200,
//       sku: 'AUR9472',
//       categoryId: '5',
//       productAttributes: [
//         ProductAttributeModel(name: 'Size', values: ['EU34', 'EU32']),
//         ProductAttributeModel(name: 'Color', values: ['Green', 'Red', 'Blue'])
//       ],
//       productType: 'ProductType.single',
//     ),
//     ProductModel(
//       id: '010',
//       title: 'Nike Air Jordon 19 Orange',
//       stock: 21,
//       price: 500,
//       isFeatured: false,
//       thumbnail: TImages.productImage20,
//       description:
//           'This is a Product description for Nike Air Jordon. There are more things that can be added but i am just practicing and nothing else.',
//       brand: BrandModel(id: '1', image: TImages.nikeLogo, name: 'Nike'),
//       images: [
//         TImages.productImage20,
//         TImages.productImage21,
//         TImages.productImage22,
//         TImages.productImage23
//       ],
//       salePrice: 450,
//       sku: 'AUR9472',
//       categoryId: '5',
//       productAttributes: [
//         ProductAttributeModel(name: 'Size', values: ['EU34', 'EU32']),
//         ProductAttributeModel(name: 'Color', values: ['Green', 'Red', 'Blue'])
//       ],
//       productType: 'ProductType.single',
//     ),
//   ];
//
//   /// List of all Products
// // static final List<ProductModel> products = [
// // ProductModel(
// // id: '001',
// // title: 'Green Nike sports shoe',
// // stock: 15,
// // price: 135,
// // isFeatured: true,
// // thumbnail: TImages.productImage1,
// // description: 'Green Nike sports shoe',
// // brand: BrandModel(id: '1', image: TImages.nikeLogo, name: 'Nike', productsCount: 265, isFeatured: true),
// // images: [TImages. productImage1, TImages .productImage23, TImages. productImage21, TImages. productImage9],
// // salePrice: 30,
// // sku: 'ABR4568',
// // categoryId: '1',
// // productAttributes: [
// // ProductAttributeModel (name: 'Color', values: ['Green', 'Black', 'Red']),
// //   ProductAttributeModel (name: 'Size', values: ['EU 30', 'EU 32', 'EU 34']),
// //   ],
// //  ),
// // ];
//
// //       ProductVariations: [
// //   ProductVariationModel(
// //   id: '1',
// //   stock: 34,
// //   price: 134,
// //   salePrice: 122.6,
// //   image: TImages.productImage1,
// //   description: 'This is a Product description for Green Nike sports shoe.',
// //   attributeValues: {'Color': 'Green', 'Size': 'EU 34'}), // ProductVariationModel
// //   ProductVariationModel(
// //   id: '2', stock: 15, price: 132, image: TImages.productImage 23, attributeValues: {'Color': 'Black', 'Size': 'EU 32'}), // ProductVariationModel
// //   ProductVariationModel(
// //   id: '3', stock: 0, price: 234, image: TImages.productImage 23, attributeValues: {'Color': 'Black', 'Size': 'EU 34'}), // Product VariationModel
// //   ProductVariationModel(
// //   id: '4', stock: 222, price: 232, image: TImages.productImage1, attributeValues: {'Color': 'Green', 'Size': 'EU 32'}), // Product Variation Model
// //   ProductVariationModel(
// //   id: '5', stock: 0, price: 334, image: TImages.productImage21, attributeValues: {'Color': 'Red', 'Size': 'EU 34'}), // ProductVariationModel
// //   ProductVariationModel(
// //   id: '6', stock: 11, price: 332, image: TImages.productImage21, attributeValues: {'Color': 'Red', 'Size': 'EU 32'}), // ProductVariationModel
// //   ],
// //   productType: 'ProductType.variable',
// //   ), // ProductModel
// //   ProductModel(
// //   id: '002',
// //   title: 'Blue T-shirt for all ages',
// //   stock: 15,
// //   price: 35,
// //   isFeatured: true,
// //   thumbnail: TImages .productImage69,
// //   description:
// //   'This is a Product description for Leather brown Jacket. There are more things that can be added but i am just practicing and nothing else.',
// //   brand: BrandModel(id: '6', image: TImages.zaraLogo, name: 'ZARA'),
// //   images: [TImages. productImage64, TImages.productImage65, TImages. productImage66, TImages. productImage67],
// //   salePrice: 30,
// //   sku: 'ABR4568', I
// //   categoryId: '16',
// //   productAttributes: [
// //   ProductAttributeModel (name: 'Size', values: ['EU34', 'EU32']),
// //   ProductAttributeModel (name: 'Color', values: ['Green', 'Red', 'Blue']),
// //   1,
// //   productType: 'ProductType.single',
// //   ), // ProductModel
// //   ProductModel(
// //   id: '004',
// //   title: '4 Color collar t-shirt dry fit',
// //   stock: 15,
// //   price: 135,
// //   isFeatured: false,
// //   thumbnail: TImages. productImage60,
// //   description:
// //   'This is a Product description for 4 Color collar t-shirt dry fit. There are more things that can be added but its just a demo and nothing else.',
// //   brand: BrandModel(id: '6', image: TImages.zaraLogo, name: 'ZARA'),
// //   images: [TImages. productImage60, TImages .productImage61, TImages. productImage62, TImages .productImage63],
// //   salePrice: 30,
// //   sku: 'ABR4568',
// //   categoryId: '16',
// //   productAttributes: [
// //   ProductAttributeModel (name: 'Color', values: ['Red', 'Yellow', 'Green', 'Blue']),
// //   ProductAttributeModel (name: 'Size', values: ['EU 30', 'EU 32', 'EU 34']),
// //   ],
// //   productVariations: [
// //   Product VariationModel(
// //   id: '1',
// //   stock: 34,
// //   price: 134,
// //   salePrice: 122.6,
// //   image: TImages. product Image60,
// //   description: 'This is a Product description for 4 Color collar t-shirt dry fit',
// //   attributeValues: {'Color': 'Red', 'Size': 'EU 34'}), // ProductVariationModel
// //   Product Variation Model(
// //   id: '2', stock: 15, price: 132, image: TImages. productImage60, attributeValues: {'Color': 'Red', 'Size': 'EU 32'}), // ProductVariationModel
// //   Product Variation Model(
// //   id: '3', stock: 0, price: 234, image: TImages. productImage61, attributeValues: {'Color': 'Yellow', 'Size': 'EU 34'}), // ProductVariationModel
// //   Product Variation Model(
// //   id: '4',
// //   stock: 222,
// //   price: 232,
// //   image: TImages. productImage61,
// //   attributeValues: {'Color': 'Yellow', 'Size': 'EU 32'}), // ProductVariationModel
// //   Product Variation Model(
// //   id: '5', stock: 0, price: 334, image: TImages. productImage62, attributeValues: {'Color': 'Green', 'Size': 'EU 34'}), // Product VariationModel
// //   Product VariationModel(
// //   id: '6', stock: 11, price: 332, image: TImages. productImage62, attributeValues: {'Color': 'Green', 'Size': 'EU 30'}), // ProductVariationModel
// //   Product Variation Model(
// //   id: '7', stock: 0, price: 334, image: TImages. productImage63, attributeValues: {'Color': 'Blue', 'Size': 'EU 30'}), // ProductVariationModel
// //   Product Variation Model(
// //   id: '8', stock: 11, price: 332, image: TImages.productImage63, attributeValues: {'Color': 'Blue', 'Size': 'EU 34'}), // Product VariationModel
// //   1,
// //   productType: 'ProductType.variable',
// //   ), // ProductModel
// //   ///Products after banner
// //   ProductModel(
// //   id: '005',
// //   title: 'Nike Air Jordon Shoes',
// //   stock: 15,
// //   price: 35,
// //   isFeatured: false,
// //   thumbnail: TImages .productImage10,
// //   description: 'Nike Air Jordon Shoes for running. Quality product, Long Lasting',
// //   brand: BrandModel(id: '1', image: TImages.nike Logo, name: 'Nike', productsCount: 265, isFeatured: true),
// //   images: [TImages.productImage7, TImages.productImage8, TImages.productImage9, TImages .productImage10],
// //   salePrice: 38,
// //   sku: 'ABR4568',
// //   categoryId: '8',
// //   productAttributes: [
// //   Product VariationModel(
// //   id: '1',
// //   stock: 16,
// //   price: 36,
// //   salePrice: 12.6,
// //   image: TImages.productImage8,
// //   description:
// //   'Flutter is Google's mobile UI open source framework to build high-quality native (super fast) interfaces for iOS and Android apps with the unified codebase.',
// //   attributeValues: {'Color': 'Orange', 'Size': 'EU 34'}), // ProductVariationModel
// //   Product Variation Model(
// //   id: '2', stock: 15, price: 35, image: TImages.productImage7, attributeValues: {'Color': 'Black', 'Size': 'EU 32'}), // ProductVariationModel
// //   Product Variation Model(
// //   id: '3', stock: 14, price: 34, image: TImages. productImage9, attributeValues: {'Color': 'Brown', 'Size': 'EU 34'}), // Product Variation Model
// //   ProductVariation Model(
// //   id: '4', stock: 13, price: 33, image: TImages.productImage7, attributeValues: {'Color': 'Black', 'Size': 'EU 34'}), // ProductVariationModel
// //   Product Variation Model(
// //   id: '5', stock: 12, price: 32, image: TImages. productImage9, attributeValues: {'Color': 'Brown', 'Size': 'EU 32'}), // ProductVariationModel
// //   Product Variation Model(
// //   id: '6', stock: 11, price: 31, image: TImages.productImage8, attributeValues: {'Color': 'Brange', 'Size': 'EU 32'}), // Product VariationModel
// //   ],
// //   productType: 'ProductType.variable',
// //   ), // ProductModel
// //   ProductModel(
// //   id: '006',
// //   title: 'SAMSUNG Galaxy S9 (Pink, 64 GB) (4 GB RAM)',
// //   stock: 15,
// //   price: 750,
// //   isFeatured: false,
// //   thumbnail: TImages. productImage11,
// //   description: 'SAMSUNG Galaxy S9 (Pink, 64 GB) (4 GB RAM), Long Battery timing',
// //   brand: BrandModel(id: '7', image: TImages.apple Logo, name: 'Samsung'),
// //   images: [TImages.productImage11, TImages. productImage12, TImages. productImage13, TImages. productImage12],
// //   salePrice: 650,
// //   sku: 'ABR4568'
// //   categoryId: '2',
// //   productAttributes: [
// //   ProductAttributeModel (name: 'Size', values: ['EU34', 'EU32']),
// //   ProductAttributeModel (name: 'Color', values: ['Green', 'Red', 'Blue']),
// //   ],
// //   productType: 'ProductType.single',
// //   ), // ProductModel
// //   ProductModel(
// //   id: '007', I
// //   title: 'TOMI Dog food',
// //   stock: 15,
// //   price: 20,
// //   isFeatured: false,
// //   thumbnail: TImages. productImage18,
// //   description:
// //   'This is a Product description for TOMI Dog food. There are more things that can be added but i am just practicing and nothing else.',
// //   brand: BrandModel(id: '7', image: TImages.appleLogo, name: 'Tomi'),
// //   salePrice: 10,
// //   sku: 'ABR4568'
// //   categoryId: '4',
// //   productAttributes: [
// //   ProductAttributeModel (name: 'Size', values: ['EU34', 'EU32']),
// //   ProductAttributeModel (name: 'Color', values: ['Green', 'Red', 'Blue']),
// //   ],
// //   productType: 'ProductType.single',
// //   ), // ProductModel
// // //008 after 040
// //   ProductModel(
// //   id: '009',
// //   title: 'Nike Air Jordon 19 Blue',
// //   stock: 15,
// //   price: 400,
// //   isFeatured: false,
// //   thumbnail: TImages. productImage19,
// //   description:
// //   'This is a Product description for Nike Air Jordon. There are more things that can be added but i am just practicing and nothing else.',
// //   brand: BrandModel(id: '1', image: TImages.nike Logo, name: 'Nike'),
// //   images: [TImages. productImage19, TImages. productImage20, TImages. productImage 21, TImages. productImage22],
// //   salePrice: 200,
// }
