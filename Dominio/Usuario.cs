﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Dominio
{

    public enum TipoUsuario
    {
        NORMAL = 1,
        ADMIN = 2

    }

    public class Usuario
    {

        public int Id { get; set; }

        public string User { get; set; }

        public string Pass { get; set; }

        public TipoUsuario TipoUser { get; set; }

        public Usuario(string user,string pass,bool admin) {

            User = user;
            Pass = pass;
            TipoUser = admin ? TipoUsuario.ADMIN : TipoUsuario.NORMAL;
        
        }



    }
}
