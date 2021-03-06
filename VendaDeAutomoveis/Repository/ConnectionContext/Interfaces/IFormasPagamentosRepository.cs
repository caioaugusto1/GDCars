﻿using System.Collections.Generic;

namespace VendaDeAutomoveis.Repository.ConnectionContext.Interfaces
{
    public interface IFormasPagamentosRepository : IRepositoryBase<GDC_Formas_Pagamentos>
    {
        IList<GDC_Formas_Pagamentos> ObterFormaPagamentoComum();

        IList<GDC_Formas_Pagamentos> ObterListarFormaPagamentoVip();
    }
}
