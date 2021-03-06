﻿using System;
using System.ComponentModel.DataAnnotations;

namespace VendaDeAutomoveis.Entidades
{
    public class Performance  : Entity
    {
        public Performance()
        {
            Cliente = new Cliente();
            Cor_Veiculo = new Cor_Veiculo();
            Roda = new Roda();
            Banco = new Banco();
        }

        public double ValorTotal { get; set; }

        [Required]
        public Guid IdCliente { get; set; }

        public virtual Cliente Cliente { get; set; }

        [Required]
        public Guid IdRoda { get; set; }

        public virtual Roda Roda { get; set; }

        [Required]
        public Guid IdBanco { get; set; }

        public virtual Banco Banco { get; set; }

        [Required]
        public Guid IdCorVeiculo { get; set; }

        public virtual Cor_Veiculo Cor_Veiculo { get; set; }
    }
}