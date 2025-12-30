# Previsão de Qualidade do Ar: Análise e Forecasting de Níveis de Ozônio

## Objetivo do Projeto

Desenvolver um modelo de Ciência de Dados capaz de analisar o histórico de concentração de ozônio ($O_3$) e gerar previsões para os próximos **365 dias**. O objetivo é fornecer insights estratégicos para órgãos de controle ambiental e saúde pública, permitindo o monitoramento antecipado de picos de poluição e a emissão de alertas preventivos para a população.

## Principais Insights e Análise de Dados

A análise revelou um comportamento cíclico e sazonal na concentração do poluente, exigindo estratégias de monitoramento dinâmicas.

### 1. Visão Geral da Variação dos Níveis de Ozônio

| Métrica | Período de Baixa (Inverno/Chuva) | Período de Alta (Verão/Seca) | Média Geral |
| :--- | :--- | :--- | :--- |
| **Concentração Média** | ~40 - 60 $\mu g/m^3$ | ~80 - 110 $\mu g/m^3$ | ~85 $\mu g/m^3$ |
| **Comportamento** | Estável e seguro | Volátil com picos | Sazonalidade forte |


### 2. Anomalias Identificadas

* **Estabilidade Noturna:** Durante a noite e períodos chuvosos, os níveis caem drasticamente, comportando-se dentro dos limites seguros sem grandes *outliers*.
* **Alertas Críticos:** O modelo detectou probabilidade de eventos acima de **100 $\mu g/m^3$** (como visto na amostra de Maio/2023).

### 3. Sazonalidade e Tendência

* **Sazonalidade:** O modelo **Prophet** capturou ciclos anuais claros. Existe um padrão de crescimento dos níveis de ozônio conforme a transição da primavera para o verão, e queda no outono.
* **Tendência:** A análise de longo prazo projetada para o próximo ano mostra uma manutenção dos níveis médios, sem tendência explosiva de crescimento, mas com manutenção dos picos sazonais recorrentes.

## Metodologia e Modelagem

O projeto seguiu um pipeline rigoroso de *Time Series Forecasting*:

* **Coleta e Tratamento:** Limpeza de dados históricos e tratamento de datas (`ds`) e valores (`y`) para adequação ao framework do Prophet.
* **Análise Exploratória (EDA):** Identificação de padrões visuais utilizando gráficos interativos para compreender a distribuição dos dados ao longo do tempo.
* **Modelagem Preditiva:**
    * Utilização do algoritmo **Facebook Prophet**, escolhido por sua robustez em lidar com *sazonalidade anual* e feriados/eventos atípicos, além de ser resiliente a dados faltantes na série temporal.
    * Treinamento realizado com dados até **05/05/2023**.
* **Validação:** Monitoramento da métrica de erro **RMSE** (Raiz do Erro Quadrático Médio), que resultou em **17.43** nos dados de teste, indicando uma precisão aceitável para fenômenos atmosféricos complexos.

## Resultado e Previsão

As previsões fornecem um cenário claro para tomada de decisão, acessível via aplicação web.

* **Entrega:** Uma aplicação interativa em **Streamlit** permite que o usuário final escolha o horizonte de previsão (ex: 30, 60, 365 dias).
* **Tabelas e Gráficos:** Geração automática de tabelas com a previsão dia a dia e gráficos de tendência com intervalos de confiança.
* **Ação Recomendada:**
    * **Monitoramento:** Intensificar a medição física nos dias onde o modelo prevê picos acima de 100 $\mu g/m^3$.
    * **Planejamento:** Utilizar os dados exportáveis (CSV) para relatórios mensais de qualidade do ar.

## Tecnologias Utilizadas

* **Manipulação de Dados:** Pandas
* **Visualização:** Plotly (Gráficos interativos)
* **Modelagem Estatística:** Facebook Prophet
* **Deploy:** Streamlit
