const router = require("express").Router();

// module.exports = (app) => {
//   app.route("/products")
//   .get((req, res) => {
//     Product.showAllProducts(req, res);
//   });
// };

  // app.route("/products")
  // .get(Product.showAllProducts)
  // .post(Product.createProduct);
  // app.route("/products/noimage")
  // .post(Product.createProductNoImage);
  // app.route("/products/:id")
  // .get(Product.showProductById)
  // .patch(Product.updateProduct)
  // .delete(Product.deleteProduct);
  //app.route("/products-table")
  //.get(Product.describeProductsTable);
  //app.route("/user")
  //.get(User.showUserByNameLastname);
  // app.route("/user/authorized")
  // .get(User.showUserByLogin);
  // .patch(User.updateUserData);  
  // app.route("/user/register")
  // .post(User.createUser);

  // app.route("/user/login")
  // .get(User.checkToken)
  // .post(User.loginByLoginPassword);


  // app.route("/orders/create")
  // .post(Order.createNewOrder);
  // app.route("/orders/:userId")
  // .get(Order.showUserOrders);
  // app.route("/orders/details/:orderId")
  // .get(Order.showOrderDetails);
   router.route("/admin/login")
   .post((req, res)=> {
     const admin = req.body;
     const login = admin.login;
     const password = admin.password;
     if (login === 'admin' & password === 'admin') {
       res.send({ status: "Success Login" });
     } else {
       res.send({ status: "Wrong login or password" });
     }
   })

module.exports = router;