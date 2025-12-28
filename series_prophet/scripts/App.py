# %%
import streamlit as st
from prophet.serialize import model_from_json
import json
import pandas as pd 
from prophet.plot import plot_plotly
# %%

def load_model():
    with open('../modelo/modelo_prophet.json', 'r') as file_in:
        modelo = model_from_json(json.load(file_in))
    return modelo

modelo = load_model()
# %%
# Adicionando textos ao layout do Streamlit
st.title('Previsão de Níveis de Ozônio (O3) Utilizando a Biblioteca Prophet')

st.caption('''Este projeto utiliza a biblioteca Prophet para prever os níveis de ozônio em ug/m3. O modelo
           criado foi treinado com dados até o dia 05/05/2023 e possui um erro de previsão (RMSE - Erro Quadrático Médio) igual a 17.43 nos dados de teste.
           O usuário pode inserir o número de dias para os quais deseja a previsão, e o modelo gerará um gráfico
           interativo contendo as estimativas baseadas em dados históricos de concentração de O3.
           Além disso, uma tabela será exibida com os valores estimados para cada dia.''')

st.subheader('Insira o número de dias para previsão:')

dias = st.number_input('', min_value=1, max_value=365, value=1, step=1)

if 'previsao_feita' not in st.session_state:
    st.session_state['previsao_feita'] = False
    st.session_state['dados_previsao'] = None 

if st.button('Gerar Previsão'):
    st.session_state.previsao_feita = True
    futuro = modelo.make_future_dataframe(periods=dias, freq='D')
    previsao = modelo.predict(futuro)
    st.session_state['dados_previsao'] = previsao

if st.session_state.previsao_feita:
    fig = plot_plotly(modelo, st.session_state['dados_previsao'])
    fig.update_layout({
        'plot_bgcolor': 'rgba(255, 255, 255, 1)',  # Define o fundo da área do gráfico como branco
        'paper_bgcolor': 'rgba(255, 255, 255, 1)', # Define o fundo externo ao gráfico como branco
        'title': {'text': "Previsão de Ozônio", 'font': {'color': 'black'}},
        'xaxis': {'title': 'Data', 'title_font': {'color': 'black'}, 'tickfont': {'color': 'black'}},
        'yaxis': {'title': 'Nível de Ozônio (O3 μg/m3)', 'title_font': {'color': 'black'}, 'tickfont': {'color': 'black'}}
    })
    st.plotly_chart(fig)





# %%
