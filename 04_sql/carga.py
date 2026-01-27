
#%%
import pandas as pd
import sqlite3
import os

conexao = sqlite3.connect('loja.db')
print("🔌 Banco conectado!")

try:
    df_pedidos = pd.read_csv('dados/Pedidos.csv')
    # Ajuste os nomes da esquerda (CSV) conforme necessário
    df_pedidos = df_pedidos.rename(columns={
        'ID': 'Id',
        'IDCliente': 'IdCliente',
        'DataHoraPedido': 'DataHoraPedido',
        'Status': 'Status'
    })

    # Joga pro banco
    df_pedidos.to_sql('pedidos', conexao, if_exists='append', index=False)
    print(f"✅ Pedidos importados: {len(df_pedidos)} registros.")

except Exception as e:
    print(f"❌ Erro em Pedidos: {e}")

try:
 
    df_itens = pd.read_csv('dados/itensdepedido.csv')


    df_itens = df_itens.rename(columns={
        'IDPedido': 'IdPedido',
        'IDProduto': 'IdProduto',
        'Quantidade': 'Quantidade',
        'PrecoUnitario': 'PrecoUnitario'
    })

    # Joga pro banco
    df_itens.to_sql('itens_pedido', conexao, if_exists='append', index=False)
    print(f"✅ Itens importados: {len(df_itens)} registros.")

except Exception as e:
    print(f"❌ Erro em Itens: {e}")

conexao.close()
#%%