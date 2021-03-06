﻿using System;
using static VendaDeAutomoveis.Enums.EnumsExtensions;

namespace VendaDeAutomoveis.Entidades
{
    public class Banco : Entity
    {
        public CorBanco Cor { get; set; }

        public ModeloBanco Modelo { get; set; }

        public bool Multimidia { get; set; }

        public decimal Valor { get; set; }
    }
}