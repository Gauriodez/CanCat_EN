using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Security.Cryptography;
using MySql.Data.MySqlClient;
using System.Data;
using System.Transactions;
using System.IO;
using Gma.QrCodeNet.Encoding;
using Gma.QrCodeNet.Encoding.Windows.Render;
using System.Drawing;
using System.Drawing.Imaging;
using MessagingToolkit.QRCode.Codec;
using System.Diagnostics;



namespace CanCat_
{
    public class Metodos
    {
        public static MySqlConnection conexion = new MySqlConnection("Server= 127.0.0.1; database=cancat!; Uid=root; pwd=;");
        public const string CartSessionKey = "CartId"; 
        public const string PetSessionKey = "PetId";

        //**************************** Método para las mascotas ****************************
       
        public static int AgregarUsuario(string nombre, string apellido, string usuario, string contra, string correo)
        {

            int retorno = 0;
            MySqlCommand comando = new MySqlCommand(string.Format("Insert into usuarios (Nombre, Apellido, Nombre_Usuario, Password,Correo) values ('{0}','{1}','{2}','{3}','{4}')", nombre, apellido, usuario, contra, correo), Conexion.ObtenerConexion());
            retorno = comando.ExecuteNonQuery();

            return retorno;
        }
        //**************************** Método para verificar si se repiten los usuario ****************************
        public static int UsuariosRepetidos(string nombre, string apellido, string usuario, string contra, string correo)
        {
            int valor = 0;
            MySqlConnection conexion = Conexion.ObtenerConexion();
            MySqlCommand cmd = new MySqlCommand("SELECT Id_Usuario FROM usuarios WHERE Nombre_Usuario='" + usuario + "'", conexion);
            valor = Convert.ToInt32(cmd.ExecuteScalar());



            if (valor != 0)
            {

            }
            else
            {

                Metodos.AgregarUsuario(nombre, apellido,  usuario, contra, correo);
            }

            conexion.Close();
            return valor;
        }
        public static int DocValidos(string nombre, string apellido, string usuario, string contra, string correo)
        {
            int valor = 0;
            MySqlConnection conexion = Conexion.ObtenerConexion();
            MySqlCommand cmd = new MySqlCommand("SELECT Id_Usuario FROM usuarios WHERE Correo='" + correo + "'", conexion);
            valor = Convert.ToInt32(cmd.ExecuteScalar());



            if (valor != 0)
            {

            }
            else
            {
   
            Metodos.AgregarUsuario(nombre, apellido, usuario, contra, correo);
            }

            conexion.Close();
            return valor;
        }
        public static int Login(string usuario, string contra)
        {
            int retorno = 0;
            conexion.Open();

            string cmd = String.Format("SELECT Id_Usuario FROM usuarios WHERE Nombre_Usuario = '{0}' AND Password = '{1}'", usuario, contra);

            MySqlCommand comando = new MySqlCommand(cmd, conexion);
            if (comando.ExecuteScalar() == null)
            {
                retorno = 0;
            }
            else
                retorno = (int)comando.ExecuteScalar();

            conexion.Close();
            return retorno;
        }
        public static int Check_Admin(int id)
        {
            conexion.Open();
            int userType = 0;
            MySqlCommand cmd = new MySqlCommand(String.Format("SELECT Tipo_Usuario FROM usuarios WHERE Id_Usuario = {0};", id), conexion); //Realizamos una selecion de la tabla usuarios.

            if (cmd.ExecuteScalar() == null)
            {
                userType = 0;
            }
            else
                userType = Convert.ToInt32(cmd.ExecuteScalar());
            conexion.Close();
            return userType;
        }

        public static int Check_Admin(string usuario)
        {
            conexion.Open();
            int userType = 0;
            MySqlCommand cmd = new MySqlCommand(String.Format("SELECT Tipo_Usuario FROM usuarios WHERE Nombre_Usuario = '{0}';", usuario), conexion); //Realizamos una selecion de la tabla usuarios.

            if (cmd.ExecuteScalar() == null)
            {
                userType = 0;
            }
            else
                userType = Convert.ToInt32(cmd.ExecuteScalar());

            conexion.Close();
            return userType;
        }
        public static int Check_Vet(int id)
        {
            conexion.Open();
            int userType = 0;
            MySqlCommand cmd = new MySqlCommand(String.Format("SELECT Tipo_Usuario FROM usuarios WHERE Id_Usuario = {0};", id), conexion); //Realizamos una selecion de la tabla usuarios.

            if (cmd.ExecuteScalar() == null)
            {
                userType = 0;
            }
            else
                userType = Convert.ToInt32(cmd.ExecuteScalar());
            conexion.Close();
            return userType;
        }

        public static int Check_Vet(string usuario)
        {
            conexion.Open();
            int userType = 0;
            MySqlCommand cmd = new MySqlCommand(String.Format("SELECT Tipo_Usuario FROM usuarios WHERE Nombre_Usuario = '{0}';", usuario), conexion); //Realizamos una selecion de la tabla usuarios.

            if (cmd.ExecuteScalar() == null)
            {
                userType = 0;
            }
            else
                userType = Convert.ToInt32(cmd.ExecuteScalar());

            conexion.Close();
            return userType;
        }
        public static int Check_Worker(int id)
        {
            conexion.Open();
            int userType = 0;
            MySqlCommand cmd = new MySqlCommand(String.Format("SELECT Tipo_Usuario FROM usuarios WHERE Id_Usuario = {0};", id), conexion); //Realizamos una selecion de la tabla usuarios.

            if (cmd.ExecuteScalar() == null)
            {
                userType = 0;
            }
            else
                userType = Convert.ToInt32(cmd.ExecuteScalar());
            conexion.Close();
            return userType;
        }

        public static int Check_Worker(string usuario)
        {
            conexion.Open();
            int userType = 0;
            MySqlCommand cmd = new MySqlCommand(String.Format("SELECT Tipo_Usuario FROM usuarios WHERE Nombre_Usuario = '{0}';", usuario), conexion); //Realizamos una selecion de la tabla usuarios.

            if (cmd.ExecuteScalar() == null)
            {
                userType = 0;
            }
            else
                userType = Convert.ToInt32(cmd.ExecuteScalar());

            conexion.Close();
            return userType;
        }
        public static int AgregarMascota(int userId, string pet, string animal, string raza, int edad, string foto, string petId)
        {
            conexion.Open();
            int retorno = 0;
            MySqlCommand comando = new MySqlCommand("INSERT INTO mascotas (UsuarioId, Pet, Animal, Raza, Edad, Foto, PetId) VALUES (@userId, @pet, @animal, @raza, @edad, @foto, @petId);", conexion);
            comando.Parameters.AddWithValue("@pet", pet);
            comando.Parameters.AddWithValue("@animal", animal);
            comando.Parameters.AddWithValue("@raza", raza);
            comando.Parameters.AddWithValue("@edad", edad);
            comando.Parameters.AddWithValue("@foto", foto);
            comando.Parameters.AddWithValue("@userId", userId);
            comando.Parameters.AddWithValue("@petId", petId);

            comando.Prepare();
            retorno = comando.ExecuteNonQuery();
            conexion.Close();
            return retorno;
        }
        public static string GetPetId()
        {
            if (HttpContext.Current.Session[PetSessionKey] == null)
            {
                if (!string.IsNullOrWhiteSpace(HttpContext.Current.User.Identity.Name))
                {
                    HttpContext.Current.Session[PetSessionKey] = HttpContext.Current.User.Identity.Name;
                }
                else
                {
                    // Generate a new random GUID using System.Guid class.     
                    Guid tempPetId = Guid.NewGuid();
                    HttpContext.Current.Session[PetSessionKey] = tempPetId.ToString();
                }
            }
            return HttpContext.Current.Session[PetSessionKey].ToString();
        }

        public static void SetPetId()
        {
            if (HttpContext.Current.Session[PetSessionKey] == null)
            {
                if (!string.IsNullOrWhiteSpace(HttpContext.Current.User.Identity.Name))
                {
                    HttpContext.Current.Session[PetSessionKey] = HttpContext.Current.User.Identity.Name.ToString();
                }
                else
                {
                    // Generate a new random GUID using System.Guid class.     
                    Guid tempPetId = Guid.NewGuid();
                    HttpContext.Current.Session[PetSessionKey] = tempPetId.ToString();
                }
            }
        }
        public static int Add_Product(string product, string marca, double precio, int inventario, string imagen)
        {
            conexion.Open();
            int retorno = 0;
            MySqlCommand comando = new MySqlCommand("INSERT INTO productos (Product, Marca, Precio, Inventario, Imagen) VALUES (@product, @marca, @precio, @inventario, @imagen);", conexion);
            comando.Parameters.AddWithValue("@product", product);
            comando.Parameters.AddWithValue("@marca", marca);
            comando.Parameters.AddWithValue("@precio", precio);
            comando.Parameters.AddWithValue("@inventario", inventario);
            comando.Parameters.AddWithValue("@imagen", imagen);

            comando.Prepare();
            retorno = comando.ExecuteNonQuery();
            conexion.Close();
            return retorno;
        }

        public static Producto Search_Product(int id)
        {
            Producto producto = new Producto();
            conexion.Open();
            MySqlCommand cmd = new MySqlCommand("SELECT * FROM productos WHERE Id = @id;", conexion);
            cmd.Parameters.AddWithValue("@id", id);
            MySqlDataReader reader = cmd.ExecuteReader();

            while (reader.Read())
            {
                producto.Id = reader.GetInt32(0);
                producto.Product = reader.GetString(1);
                producto.Marca = reader.GetString(2);
                producto.Precio = reader.GetDouble(3);
                producto.Inventario = reader.GetInt32(4);
                producto.Imagen = reader.GetString(5);
            }
            conexion.Close();
            return producto;
        }

        public static DataTable Fetch_Products(bool imgElement)
        {
            conexion.Open();
            MySqlDataAdapter DA = new MySqlDataAdapter();
            MySqlCommand cmd = new MySqlCommand("SELECT * FROM productos;", conexion);
            DA.SelectCommand = cmd;
            DataTable DT = new DataTable();

            DA.Fill(DT);

            if (imgElement)
            {
                foreach (DataRow row in DT.Rows)
                {
                    row["Imagen"] = "<img width='100px' class='thumbnail' src='./images/" + row["Imagen"] + "' />";
                }
            }
            conexion.Close();
            return DT;
        }

        public static int Update_Product(int id, string product, string marca, double precio, int inventario)
        {
            conexion.Open();
            int retorno = 0;
            string query = "UPDATE productos SET ";
            query += "Product = @product, ";
            query += "Marca = @marca, ";
            query += "Precio = @precio, ";
            query += "Inventario = @inventario ";
            query += "WHERE Id = @id;";

            MySqlCommand cmd = new MySqlCommand(query, conexion);
            cmd.Parameters.AddWithValue("@product", product);
            cmd.Parameters.AddWithValue("@marca", marca);
            cmd.Parameters.AddWithValue("@precio", precio);
            cmd.Parameters.AddWithValue("@inventario", inventario);
            cmd.Parameters.AddWithValue("@id", id);

            retorno = cmd.ExecuteNonQuery();

            conexion.Close();
            return retorno;
        }
        public static int Update_Product(int id, string product, string marca, double precio, int inventario, string imagen)
        {
            conexion.Open();
            int retorno = 0;
            string query = "UPDATE productos SET ";
            query += "Product = @product, ";
            query += "Marca = @marca, ";
            query += "Precio = @precio, ";
            query += "Inventario = @inventario ";
            query += "Imagen = @imagen ";
            query += "WHERE Id = @id;";

            MySqlCommand cmd = new MySqlCommand(query, conexion);
            cmd.Parameters.AddWithValue("@product", product);
            cmd.Parameters.AddWithValue("@marca", marca);
            cmd.Parameters.AddWithValue("@precio", precio);
            cmd.Parameters.AddWithValue("@inventario", inventario);
            cmd.Parameters.AddWithValue("@imagen", imagen);
            cmd.Parameters.AddWithValue("@id", id);

            retorno = cmd.ExecuteNonQuery();

            conexion.Close();
            return retorno;
        }

        public static int Delete_Product(int id)
        {
            int retorno = 0;
            conexion.Open();
            MySqlCommand cmd = new MySqlCommand("DELETE FROM productos WHERE Id = @id", conexion);
            cmd.Parameters.AddWithValue("@id", id);
            retorno = cmd.ExecuteNonQuery();

            conexion.Close();
            return retorno;
        }
        public static string GetCartId()
        {
            if (HttpContext.Current.Session[CartSessionKey] == null)
            {
                if (!string.IsNullOrWhiteSpace(HttpContext.Current.User.Identity.Name))
                {
                    HttpContext.Current.Session[CartSessionKey] = HttpContext.Current.User.Identity.Name;
                }
                else
                {
                    // Generate a new random GUID using System.Guid class.     
                    Guid tempCartId = Guid.NewGuid();
                    HttpContext.Current.Session[CartSessionKey] = tempCartId.ToString();
                }
            }
            return HttpContext.Current.Session[CartSessionKey].ToString();
        }

        public static void SetCartId()
        {
            if (HttpContext.Current.Session[CartSessionKey] == null)
            {
                if (!string.IsNullOrWhiteSpace(HttpContext.Current.User.Identity.Name))
                {
                    HttpContext.Current.Session[CartSessionKey] = HttpContext.Current.User.Identity.Name.ToString();
                }
                else
                {
                    // Generate a new random GUID using System.Guid class.     
                    Guid tempCartId = Guid.NewGuid();
                    HttpContext.Current.Session[CartSessionKey] = tempCartId.ToString();
                }
            }
        }
        public static int AddToCart(int productId, string cartId, int userId)
        {
            int retorno = 0;
            conexion.Open();

            MySqlCommand cmd = new MySqlCommand("SELECT * FROM cart WHERE ProductoID = @prodId AND UsuarioID = @userId;", conexion);
            cmd.Parameters.AddWithValue("@prodId", productId);
            cmd.Parameters.AddWithValue("@userId", userId);
            //cmd.Parameters.AddWithValue("@cartId", cartId);
            cmd.Prepare();

            if (cmd.ExecuteScalar() == null)
            {
                MySqlCommand insertCmd = new MySqlCommand("INSERT INTO cart (ProductoID, UsuarioID, Cantidad, Precio, CartId) VALUES ( @prodId, @userId, 1, (SELECT Precio FROM productos  WHERE Id = @prodId), @cartId);", conexion);
                insertCmd.Parameters.AddWithValue("@prodId", productId);
                insertCmd.Parameters.AddWithValue("@userId", userId);
                insertCmd.Parameters.AddWithValue("@cartId", cartId);
                insertCmd.Prepare();

                retorno = insertCmd.ExecuteNonQuery();

            }
            else
            {
                MySqlCommand updateCmd = new MySqlCommand("UPDATE cart SET Cantidad = Cantidad + 1 WHERE ProductoID = @prodId AND UsuarioID = @userId", conexion);
                updateCmd.Parameters.AddWithValue("@prodId", productId);
                updateCmd.Parameters.AddWithValue("@userId", userId);
                //updateCmd.Parameters.AddWithValue("@cartId", cartId);
                updateCmd.Prepare();

                retorno = updateCmd.ExecuteNonQuery();
            }
            conexion.Close();
            return retorno;
        }
        public static DataTable Fetch_Cart(int userId)
        {
            try
            {
                conexion.Open();
            }
            catch (Exception e)
            {

            }

            MySqlDataAdapter DA = new MySqlDataAdapter();
            MySqlCommand cmd = new MySqlCommand("SELECT cart.*, productos.Product, productos.Imagen FROM cart INNER JOIN productos ON cart.ProductoId = productos.Id WHERE UsuarioId = @userId;", conexion);
            cmd.Parameters.AddWithValue("@userId", userId);
            cmd.Prepare();
            DA.SelectCommand = cmd;
            DataTable DT = new DataTable();

            DA.Fill(DT);


            foreach (DataRow row in DT.Rows)
            {
                row["Imagen"] = "<img width='100px' class='thumbnail' src='./images/" + row["Imagen"] + "' />";
            }

            conexion.Close();
            return DT;
        }

        public static int Delete_From_Cart(int productId, int userId)
        {
            int retorno = 0;
            conexion.Open();

            MySqlCommand cmd = new MySqlCommand("DELETE FROM cart WHERE ProductoId = @productId AND @userId;", conexion);
            cmd.Parameters.AddWithValue("@productId", productId);
            cmd.Parameters.AddWithValue("@userId", userId);

            retorno = cmd.ExecuteNonQuery();

            conexion.Close();
            return retorno;
        }

        public static double Cart_Total(int userId)
        {
            conexion.Open();
            double total = 0;
            MySqlCommand cmd = new MySqlCommand("SELECT SUM(cart.Cantidad * cart.Precio) FROM cart WHERE UsuarioId = @userid ", conexion);
            cmd.Parameters.AddWithValue("@userid", userId);
            cmd.Prepare();
            if (!double.TryParse(cmd.ExecuteScalar().ToString(), out total))
            {
                conexion.Close();
                return 0;
            }

            conexion.Close();
            return total;
        }

        public static int Check_Out(int userId)
        {

            conexion.Open();
            int retorno = 1;

            string strFileName;
            string strFilePath;
            string strFolder;

            List<CartItem> items = new List<CartItem>();
            Guid QRText = Guid.NewGuid();

            MySqlCommand readCmd = new MySqlCommand("SELECT * FROM cart WHERE UsuarioId = @userId", conexion);
            readCmd.Parameters.AddWithValue("@userId", userId);

            MySqlDataReader reader = readCmd.ExecuteReader();
            double totalPurchase = 0;
            if (!reader.HasRows)
            {
                conexion.Close();
                return 0;
            }
            int purchasedItems = 0;
            while (reader.Read())
            {
                CartItem item = new CartItem();
                item.ItemId = reader.GetInt32(0);
                item.ProductID = reader.GetInt32(1);
                item.UserId = reader.GetInt32(2);
                item.Cantidad = reader.GetInt32(3);
                item.Precio = reader.GetDouble(4);
                item.CartId = reader.GetString(5);

                totalPurchase += item.Precio * item.Cantidad;
                purchasedItems += item.Cantidad;

                items.Add(item);
            }
            conexion.Close();


            try
            {
                //Generar el código QR


                strFolder = HttpContext.Current.Server.MapPath("./QRs/");


                strFileName = QRText.ToString() + ".png";
                strFileName = Path.GetFileName(strFileName);

                strFilePath = strFolder + strFileName;

                QrEncoder encoder = new QrEncoder(ErrorCorrectionLevel.H);

                var qrCode = encoder.Encode(QRText.ToString());
                var renderer = new GraphicsRenderer(new FixedModuleSize(5, QuietZoneModules.Two), Brushes.Black, Brushes.White);

                using (var stream = new FileStream(strFilePath, FileMode.Create))
                    renderer.WriteToStream(qrCode.Matrix, ImageFormat.Png, stream);
                //Fin de creación de código QR

                //Generar la venta y actualizar productos;
                using (TransactionScope scope = new TransactionScope())
                {
                    conexion.Open();
                    //Insertar Venta
                    MySqlCommand saleCmd = new MySqlCommand("INSERT INTO sales (UsuarioId, Total, Productos,Marcas, QRText, Date) VALUES (@userId, @total, @items,@marcas, @qr, NOW());", conexion);
                    saleCmd.Parameters.AddWithValue("@userId", userId);
                    saleCmd.Parameters.AddWithValue("@total", totalPurchase);
                    saleCmd.Parameters.AddWithValue("@items", purchasedItems);
                    saleCmd.Parameters.AddWithValue("@marcas", purchasedItems);
                    saleCmd.Parameters.AddWithValue("@qr", QRText.ToString());

                    int guardado = (int)saleCmd.ExecuteNonQuery();
                    if (guardado != 0)
                    {

                        int saleID = Convert.ToInt32(saleCmd.LastInsertedId);

                        //Insertar los detalles de la venta de cada producto y actualizar el inventario
                        MySqlCommand checkInventory = new MySqlCommand("SELECT Inventario FROM productos WHERE Id = @itemId;", conexion);
                        checkInventory.Parameters.AddWithValue("@itemId", 0);

                        MySqlCommand insertSalesDetails = new MySqlCommand("INSERT INTO sales_details (SalesId, ItemId, MarcaId, Cantidad, Precio, PrecioTotal) " +
                        "VALUES (@salesID, @itemId, @marcaId, @ctd, @precio, @preciototal);", conexion);

                        MySqlCommand updateInventory = new MySqlCommand("UPDATE productos SET Inventario = (Inventario - @itemsSold) WHERE Id = @itemId;", conexion);

                        MySqlCommand deleteCartItem = new MySqlCommand("DELETE FROM cart WHERE Id = @entryId;", conexion);
                        deleteCartItem.Parameters.AddWithValue("@entryId", 0);

                        updateInventory.Parameters.AddWithValue("@itemsSold", 0);
                        updateInventory.Parameters.AddWithValue("@itemId", 0);

                        insertSalesDetails.Parameters.AddWithValue("@salesId", 0);
                        insertSalesDetails.Parameters.AddWithValue("@itemId", 0);
                        insertSalesDetails.Parameters.AddWithValue("@@marcaId", 0);
                        insertSalesDetails.Parameters.AddWithValue("@ctd", 0);
                        insertSalesDetails.Parameters.AddWithValue("@precio", 0.0);
                        insertSalesDetails.Parameters.AddWithValue("@preciototal", 0.0);

                        checkInventory.Prepare();
                        updateInventory.Prepare();
                        insertSalesDetails.Prepare();
                        deleteCartItem.Prepare();

                        int currentInventory = 0;
                        int newInventory = 0;
                        object inventoryObject;
                        int detailAdded = 0;
                        foreach (CartItem item in items)
                        {
                            //Verificar que haya suficientes existencia del item
                            checkInventory.Parameters[0].Value = item.ProductID;
                            inventoryObject = checkInventory.ExecuteScalar();
                            if (inventoryObject.Equals(DBNull.Value))
                            {
                                conexion.Close();
                                return 0;
                            }

                            currentInventory = Convert.ToInt32(inventoryObject);
                            newInventory = currentInventory - item.Cantidad;

                            if (newInventory < 0)
                            {
                                conexion.Close();
                                return 0;
                            }

                            //Insertar en la tabla de detalles de ventas 
                            insertSalesDetails.Parameters[0].Value = saleID;
                            insertSalesDetails.Parameters[1].Value = item.ProductID;
                            insertSalesDetails.Parameters[2].Value = item.MarcaID;
                            insertSalesDetails.Parameters[3].Value = item.Cantidad;
                            insertSalesDetails.Parameters[4].Value = item.Precio;
                            insertSalesDetails.Parameters[5].Value = item.Precio * item.Cantidad;

                            detailAdded = insertSalesDetails.ExecuteNonQuery();

                            if (detailAdded != 1)
                            {
                                conexion.Close();
                                return 0;
                            }


                            //Actualizar las existencias del producto
                            updateInventory.Parameters[0].Value = item.Cantidad;
                            updateInventory.Parameters[1].Value = item.ProductID;

                            if (updateInventory.ExecuteNonQuery() != 1)
                            {
                                conexion.Close();
                                return 0;
                            }


                            deleteCartItem.Parameters[0].Value = item.ItemId;

                            if (deleteCartItem.ExecuteNonQuery() != 1)
                            {
                                conexion.Close();
                                return 0;
                            }



                        }
                        retorno = 1;
                        scope.Complete();
                    }
                    else
                    {
                        return 0;
                    }



                }

            }
            catch (Exception e)
            {
                conexion.Close();
                retorno = 0;
                Debug.Fail(e.Message);
                throw e;
            }

            HttpContext.Current.Session["QRName"] = strFileName;
            conexion.Close();
            return retorno;
        }

        public static DataTable Get_Sales()
        {
            conexion.Open();
            MySqlDataAdapter DA = new MySqlDataAdapter();
            MySqlCommand cmd = new MySqlCommand("SELECT sales_details.Id, sales_details.SalesId as 'Id Venta', productos.Product as 'Producto', sales_details.Cantidad as 'Cantidad', sales_details.Precio as 'Precio Unidad', " +
            "sales_details.PrecioTotal as 'Total',  DATE_FORMAT(sales.Fecha, '%d/%c/%Y') as 'Fecha', usuarios.Nombre_Usuario as 'Comprador' FROM sales_details " +
            "INNER JOIN productos ON sales_details.ItemId = productos.Id INNER JOIN sales ON sales.Id = sales_details.SalesId INNER JOIN usuarios ON sales.UsuarioId = usuarios.Id_Usuario ORDER BY sales_details.SalesId; ", conexion);
            DA.SelectCommand = cmd;
            DataTable DT = new DataTable();

            DA.Fill(DT);

            conexion.Close();
            return DT;
        }

        public static DataTable Get_Sale(string QRCode)
        {
            conexion.Open();
            MySqlDataAdapter DA = new MySqlDataAdapter();
            MySqlCommand cmd = new MySqlCommand("SELECT sales_details.Id, sales_details.SalesId as 'Id Venta', productos.Product as 'Producto', sales_details.Cantidad as 'Cantidad', sales_details.Precio as 'Precio Unidad', " +
            "sales_details.PrecioTotal as 'Total',  DATE_FORMAT(sales.Fecha, '%d/%c/%Y') as 'Fecha', usuarios.Nombre_Usuario as 'Comprador' FROM sales_details " +
            "INNER JOIN productos ON sales_details.ItemId = productos.Id INNER JOIN sales ON sales.Id = sales_details.SalesId INNER JOIN usuarios ON sales.UsuarioId = usuarios.Id WHERE sales.QRTEXT = @qr ORDER BY sales_details.SalesId; ", conexion);

            cmd.Parameters.AddWithValue("@qr", QRCode);
            cmd.Prepare();

            DA.SelectCommand = cmd;
            DataTable DT = new DataTable();

            DA.Fill(DT);

            conexion.Close();
            return DT;
        }

    }
}