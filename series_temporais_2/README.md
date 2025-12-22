# Previsão Climática: Análise e Forecasting de Temperaturas (3 Fazendas)

## Objetivo do Projeto
Desenvolver um modelo de Ciência de Dados capaz de analisar o histórico de temperaturas e gerar previsões para os próximos **3 anos (2024-2027)** para três fazendas distintas. O objetivo é fornecer insights estratégicos para mitigar riscos climáticos e otimizar o planejamento agrícola, permitindo ações preventivas contra geadas ou calor excessivo.

## Principais Insights e Análise de Dados

A análise revelou perfis climáticos distintos para cada propriedade, exigindo estratégias de manejo diferenciadas.

### 1. Visão Geral da Variação das Temperaturas (2024-2027)

| Métrica |  Fazenda 1 (Estável) | Fazenda 2 (Sazonal) | Fazenda 3 (Quente) |
| :--- | :---: | :---: | :---: |
| **Média de Temperatura** | **~23.5°C** | **~20.1°C** | **~31.2°C** |
| **Maior Pico (Verão)** | 26.15°C (Jul/25) | 27.38°C (Mar/25) | 35.69°C (Set/26) |
| **Menor Pico (Inverno)** | 20.46°C (Jan/25) | 15.21°C (Dez/25) | 26.10°C (Mai/26) |
| **Variação da Média** |  **Baixa** (Estável) |  **Média** (Ciclos definidos) | **Alta** (Picos extremos) |


### 2. Anomalias Identificadas
* **Fazenda 1:** Apresenta o clima mais comportado. Não foram detectadas anomalias estatísticas graves (outliers > 3 desvios padrão). Ideal para culturas sensíveis a mudanças bruscas.
* **Fazenda 2:** Identificada maior amplitude térmica. Os meses de final de ano (Dez-Jan) apresentam quedas significativas (~15°C), exigindo atenção para **risco de geada leve**.
* **Fazenda 3:** Registra picos de calor intenso (>35°C) entre Agosto e Setembro. Alerta para necessidade de **irrigação intensiva** e proteção contra estresse térmico nas lavouras.

### 3. Sazonalidade e Tendência
* **Sazonalidade:** O modelo capturou ciclos anuais claros em todas as unidades.
    * *Fazenda 1:* Ciclo suave.
    * *Fazenda 2:* Ciclo "em V", com inverno e verão bem marcados.
    * *Fazenda 3:* Ciclo de calor crescente no segundo semestre.
* **Tendência:** A análise de longo prazo (1963-2024) projetada para 2027 mostra uma leve **tendência de aquecimento** gradual nas Fazendas 1 e 3, consistente com mudanças climáticas regionais.

##  Metodologia e Modelagem
O projeto seguiu um pipeline rigoroso de **Time Series Forecasting**:

1.  **Coleta e Tratamento:** Limpeza de dados históricos e indexação temporal (`datetime`) para garantir a continuidade da série (freqüência mensal `MS`).
2.  **Análise Exploratória (EDA):** Decomposição da série em *Tendência*, *Sazonalidade* e *Resíduos* para entender o comportamento base.
3.  **Modelagem Preditiva:**
    * Utilização do **Statsmodels** para criar modelos **SARIMA** (Seasonal AutoRegressive Integrated Moving Average).
    * Ajuste de parâmetros (p,d,q) baseado na autocorrelação (ACF/PACF).
4.  **Validação:** Monitoramento da métrica de erro MAE e MSE.

##  Resultado e Previsão
As previsões indicam cenários de estabilidade para a Fazenda 1, mas exigem intervenção de gestão para as Fazendas 2 e 3.
* **Entrega:** Tabelas completas com a previsão mês a mês para os próximos 36 meses foram geradas.
* **Ação Recomendada:**
    * *Fazenda 2:* Planejar plantio de inverno com variedades resistentes ao frio.
    * *Fazenda 3:* Reforçar sistema hídrico para os meses de Setembro/Outubro.

##  Tecnologias Utilizadas
* **Manipulação de Dados:** Pandas
* **Visualização:** Matplotlib 
* **Modelagem Estatística:** Statsmodels (ARIMA/SARIMA)


