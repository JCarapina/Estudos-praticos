# Estudo Series Temporais
# Análise e Previsão de Fluxo de Clientes para Restaurantes

---

## **Objetivo do Projeto**

Este projeto do Alura teve como objetivo principal analisar o comportamento histórico de visitação dos clientes dos restaurantes "Chimi & Churri" e "Assa Frão" para identificar padrões, sazonalidade e, o mais importante, fornecer uma previsão de demanda para os próximos 14 dias.

O objetivo final é apoiar a gestão na tomada de decisões operacionais, como o planejamento de escalas de pessoal, a gestão de estoque e a preparação otimizada das cozinhas.

---

## **Principais Insights e Análise de Dados**

### **Visão Geral do Fluxo de Clientes:**

* A média de clientes por dia nos dois restaurantes juntos é de **75 pessoas**.
* O pico máximo de clientes combinados observado foi de **205**.
* O restaurante **"Assa Frão"** apresentou o maior pico de clientes em um único dia, com **139 clientes**.
* O restaurante **"Chimi & Churri"** registrou um máximo de **128 clientes** em um único dia.

### **Identificação de Anomalias (Outliers):**

* Foram detectados e isolados (usando Z-Score) dias com um fluxo de clientes significativamente acima ou abaixo do padrão.
* A análise dessas anomalias será crucial para entender se eventos externos (como feriados ou datas comemorativas) influenciam a demanda de forma atípica, permitindo que a gestão se prepare para ocasiões semelhantes no futuro.

### **Sazonalidade e Tendência (Série Temporal):**

* A série temporal diária foi decomposta (utilizando `statsmodels.tsa.seasonal.seasonal_decompose`) para isolar a **Tendência**, **Sazonalidade** e **Resíduos**.
* A análise revelou que o fluxo de clientes possui um **claro padrão sazonal semanal** (o que é esperado para o segmento de restaurantes, variando conforme o dia da semana).
* A Tendência ao longo do período analisado (2016 - 2017) pode ser observada para guiar estratégias de crescimento de longo prazo.

---

## **Metodologia e Modelagem**

### **Tratamento de Dados:**

Os dados foram tratados e padronizados, convertendo o índice para o formato de data (**datetime**) e realizando a **Interpolação Linear** para preencher os poucos valores faltantes (NaN) de forma a preservar a estrutura da série temporal.

### **Engenharia de Features:**

Foram extraídas informações como o **Dia da Semana** e realizada a união com uma tabela de **Datas Comemorativas/Feriados** para melhor contextualizar os dados e a análise de outliers.

### **Modelagem de Previsão:**

* Foi utilizado o modelo de **Suavização Exponencial (Exponential Smoothing - Holt-Winters)** com o componente **Sazonal Aditivo** (`seasonal = 'additive'`, `seasonal_periods = 7`). Este modelo é robusto para séries com tendência e sazonalidade bem definidas.
* O modelo foi treinado com os dados históricos para gerar uma previsão confiável.

---

## **Resultado e Previsão para Stakeholders**

### **Previsão de 14 Dias:**

O modelo gerou uma previsão de fluxo de clientes para os próximos 14 dias para ambos os restaurantes.

### **Formato de Comunicação:**

A previsão final foi exportada para um arquivo Excel (**tabela previsao para os proximos 14 dias.xlsx**) para facilitar o consumo e a utilização pelos gestores.

---

## **Tecnologias Utilizadas**

* **Python**
* **Pandas** (Tratamento e manipulação de dados)
* **Matplotlib/Plotly** (Visualização e gráficos de diagnóstico)
* **Scipy.stats** (Cálculo de Z-Score para detecção de Outliers)
* **Statsmodels.tsa.holtwinters** (Modelagem de Séries Temporais)
