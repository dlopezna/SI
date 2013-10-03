using System;
using System.Collections.Generic;
using System.Text;
using System.Web.Security;
using System.Data.Common;
using System.Data;
using Microsoft.Practices.EnterpriseLibrary.Data;

namespace SecurityServices
{
    public static class SecurityManager
    {

        public static MembershipUserCollection getAllUsers()
        {

            MembershipUserCollection users = Membership.GetAllUsers();
            return users;
        
        }

        public static List<Rol> getAllRoles() {

            List<Rol> Listaroles= new List<Rol>();
            Rol _rol= null;
            string[] roles = Roles.GetAllRoles();
            foreach (string rol in roles)
            {
                _rol = new Rol();
                _rol.Nombre = rol;

                Listaroles.Add(_rol);
            }
            return Listaroles;
        }

        public static List<Rol> getRolesByUser(MembershipUser usuario)
        {
            List<Rol> Listaroles= new List<Rol>();
            Rol _rol= null;
            string[] roles = Roles.GetAllRoles();
            foreach (string rol in roles)
            {
               if(Roles.IsUserInRole(rol,usuario.UserName)){
                _rol = new Rol();
                _rol.Nombre = rol;

                Listaroles.Add(_rol);
               }
            }

            return Listaroles;

        }

        public static void guardarUsuario(string UserName) {
            MembershipUser selectuser = Membership.GetUser(UserName);
            Membership.UpdateUser(selectuser); 
        }

        public static void eliminarUsuario(string UserName)
        {
            Membership.DeleteUser(UserName);

        }

        public static List<Cliente> getAllClientes() {
            List<Cliente> clientes = new List<Cliente>();
            Cliente _cliente;
            Database db = DatabaseFactory.CreateDatabase("IGMIncidenciasConnectionString");
            DbCommand cmd = db.GetStoredProcCommand("paGetClientes");

            using (IDataReader dr = db.ExecuteReader(cmd))
            {

                while (dr.Read())
                {
                    _cliente = new Cliente();
                    _cliente.Id = int.Parse(dr["idCliente"].ToString());
                    _cliente.Nombre = dr["Nombre"].ToString().ToUpper();
                    _cliente.Telefono = dr["Telefono"].ToString();
                    _cliente.Email = dr["Email"].ToString();

                    clientes.Add(_cliente);
                }
            }

            return clientes;
        }

        public static bool IsUserInCliente(object idUsuario, string idCliente)
        {
            bool isInClient = false;
            Database db = DatabaseFactory.CreateDatabase("IGMIncidenciasConnectionString");
            DbCommand cmd = db.GetStoredProcCommand("paIsUserInCliente");
            db.AddInParameter(cmd, "@idcliente",DbType.Int32, int.Parse(idCliente));
            db.AddInParameter(cmd, "@idusuario",DbType.Guid,new Guid(idUsuario.ToString()));
            
            using (IDataReader dr = db.ExecuteReader(cmd))
            {

                while (dr.Read())
                {
                    isInClient = true;
                }
            }

            return isInClient;
        }

        public static void RemoveUserFromCliente(object idUsuario, string idCliente)
        {
            try
            {

                Database db = DatabaseFactory.CreateDatabase("IGMIncidenciasConnectionString");
                DbCommand cmd = db.GetStoredProcCommand("paRemoveUserFromCliente");

                db.AddInParameter(cmd, "@idcliente", DbType.Int32, int.Parse(idCliente));
                db.AddInParameter(cmd, "@idusuario", DbType.Guid, new Guid(idUsuario.ToString()));

                db.ExecuteNonQuery(cmd);
            }

            catch (Exception ex)
            {

                throw ex;
            }
        }

        public static void AddUserToCliente(object idUsuario, string idCliente)
        {
            try
            {

                Database db = DatabaseFactory.CreateDatabase("IGMIncidenciasConnectionString");
                DbCommand cmd = db.GetStoredProcCommand("paAddUserToCliente");

                db.AddInParameter(cmd, "@idcliente", DbType.Int32, int.Parse(idCliente));
                db.AddInParameter(cmd, "@idusuario", DbType.Guid, new Guid(idUsuario.ToString()));

                db.ExecuteNonQuery(cmd);
            }

            catch (Exception ex)
            {

                throw ex;
            }
        }

        public static void AddCliente(Cliente nuevoCliente, string[] plantas)
        {
            try
            {

                Database db = DatabaseFactory.CreateDatabase("IGMIncidenciasConnectionString");
                DbCommand cmd = db.GetStoredProcCommand("paAddCliente");

                db.AddInParameter(cmd, "@nombre", DbType.String, nuevoCliente.Nombre);
                db.AddInParameter(cmd, "@email", DbType.String, nuevoCliente.Email);
                db.AddInParameter(cmd, "@telefono", DbType.String, nuevoCliente.Telefono);
                db.AddOutParameter(cmd, "@idcliente", DbType.Int32, 4);
             
                db.ExecuteNonQuery(cmd);
                nuevoCliente.Id = (Int32)db.GetParameterValue(cmd, "@idcliente");

                foreach (string planta in plantas)
                {
                    if(!planta.Equals(""))
                        AddPlantaToCliente(nuevoCliente, planta);
                }
                   
                
            }

            catch (Exception ex)
            {

                throw ex;
            }
        }

        public static void AddPlantaToCliente(Cliente cliente, string planta)
        {
            try
            {
                Database db = DatabaseFactory.CreateDatabase("IGMIncidenciasConnectionString");
                DbCommand cmd = db.GetStoredProcCommand("paAddPlantaToCliente");

                db.AddInParameter(cmd, "@idcliente", DbType.Int32, cliente.Id);
                db.AddInParameter(cmd, "@planta", DbType.String, planta);

                db.ExecuteNonQuery(cmd);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public static void RemovePlantaFromCliente(Cliente cliente, string planta) {
            try
            {
                Database db = DatabaseFactory.CreateDatabase("IGMIncidenciasConnectionString");
                DbCommand cmd = db.GetStoredProcCommand("paRemovePlantaFromCliente");

                db.AddInParameter(cmd, "@idcliente", DbType.Int32, cliente.Id);
                db.AddInParameter(cmd, "@planta", DbType.String, planta);

                db.ExecuteNonQuery(cmd);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        
        public static void GuardarCliente(int Id, string Nombre, string Telefono, string Email){

            try
            {

                Database db = DatabaseFactory.CreateDatabase("IGMIncidenciasConnectionString");
                DbCommand cmd = db.GetStoredProcCommand("paClienteUPD");

                db.AddInParameter(cmd, "@nombre", DbType.String, Nombre);
                db.AddInParameter(cmd, "@email", DbType.String, Email);
                db.AddInParameter(cmd, "@telefono", DbType.String, Telefono);
                db.AddInParameter(cmd, "@idcliente", DbType.Int32, Id);

                db.ExecuteNonQuery(cmd);
            }

            catch (Exception ex)
            {

                throw ex;
            }
        
        
        }

        public static void RemoveCliente(int Id) {
            try
            {
                Database db = DatabaseFactory.CreateDatabase("IGMIncidenciasConnectionString");
                DbCommand cmd = db.GetStoredProcCommand("paRemoveCliente");

                db.AddInParameter(cmd, "@idcliente", DbType.Int32, Id);
                
                db.ExecuteNonQuery(cmd);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        
        }

        public static bool IsPlantaInCliente(int id, string planta) {
            try
            {
                bool isInClient = false;
                Database db = DatabaseFactory.CreateDatabase("IGMIncidenciasConnectionString");
                DbCommand cmd = db.GetStoredProcCommand("paIsPlantaInCliente");
                db.AddInParameter(cmd, "@idCliente", DbType.Int32, id);
                db.AddInParameter(cmd, "@nserie", DbType.String, planta );

                using (IDataReader dr = db.ExecuteReader(cmd))
                {

                    while (dr.Read())
                    {
                        isInClient = true;
                    }
                }

                return isInClient;

            }
            catch (Exception ex)
            {
                
                throw ex;
            }
        
        
        
        }

    }

    public class Cliente {
        private int id;

        public int Id
        {
            get { return id; }
            set { id = value; }
        }
        private string nombre;

        public string Nombre
        {
            get { return nombre; }
            set { nombre = value; }
        }
        private string telefono;

        public string Telefono
        {
            get { return telefono; }
            set { telefono = value; }
        }
        private string email;

        public string Email
        {
            get { return email; }
            set { email = value; }
        }

    }


    public class Rol {

        private string nombre;

        public string Nombre
        {
            get { return nombre; }
            set { nombre = value; }
        }
        private string descripcion;

        public string Descripcion
        {
            get { return descripcion; }
            set { descripcion = value; }
        }

    
    }


}
