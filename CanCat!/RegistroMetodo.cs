using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CanCat_
{
    public class RegistroMetodo
    {
        private int id;
        public int Id
        {
            get { return id; }
            set { id = value; }
        }

        private string nombres;
        public string Nombres
        {
            get { return nombres; }
            set { nombres = value; }
        }
        private string apellidos;
        public string Apellidos
        {
            get { return apellidos; }
            set { apellidos = value; }
        }
        private string fecha;
        public string Fecha
        {
            get { return fecha; }
            set { fecha = value; }
        }
        private string genero;
        public string Genero
        {
            get { return genero; }
            set { genero = value; }
        }
        private string direccion;
        public string Direccion
        {
            get { return direccion; }
            set { direccion = value; }
        }
        private int edad;
        public int Edad
        {
            get { return edad; }
            set { edad = value; }
        }
        private string foto;
        public string Foto
        {
            get { return foto; }
            set { foto = value; }
        }


    }
}