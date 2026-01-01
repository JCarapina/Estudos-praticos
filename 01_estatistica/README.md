# Análise Estatística Inferencial: Testes de Hipótese em Negócios e Saúde

## Objetivo do Projeto
Aplicar rigor estatístico na tomada de decisão estratégica, utilizando inferência para validar hipóteses em cenários de **Marketing (Teste A/B/C)** e **Saúde (Eficácia Clínica)**. O objetivo é demonstrar como ir além da análise exploratória básica, garantindo que as diferenças observadas entre grupos ou correlações entre variáveis sejam estatisticamente significativas (p-valor < 0.05) e não fruto do acaso.

## Principais Insights e Análise de Dados
A análise aplicou testes paramétricos e não-paramétricos em três conjuntos de dados distintos, revelando padrões comportamentais claros.

### 1. Engajamento em Publicidade (Trailers de Filmes)
Foi comparado o tempo de retenção (visualização) entre diferentes gêneros de trailers. A **ANOVA One-Way** seguida do teste **Post-hoc de Tukey** revelou uma superioridade clara do gênero Sci-Fi.

| Gênero | Tempo Médio de Visualização | Desvio Padrão | Performance Relativa |
| :--- | :--- | :--- | :--- |
| **Futurista** | **~129.21 s** | 20.31 | **Líder (Alta Retenção)** |
| Comédia | ~98.35 s | 17.48 | Média |
| Drama | ~90.49 s | 18.67 | Baixa |

**Conclusão:** Trailers futuristas retêm o usuário por cerca de **30% mais tempo** que os de comédia ou drama, indicando maior ROI potencial para este gênero.

### 2. Eficácia de Tratamento (Saúde Mental)
Análise longitudinal monitorando níveis de ansiedade nos mesmos pacientes em três momentos (Início, 3 meses, 6 meses), utilizando **ANOVA de Medidas Repetidas**.

* **Queda Consistente:** Houve uma redução total de **~53.4%** no nível médio de ansiedade ao final do período.
* **Momentos Críticos:**
    * *Início:* Média de 30.25
    * *3 Meses:* Média de 21.58
    * *6 Meses:* Média de 14.08
* **Significância:** A correção de **Bonferroni** confirmou que a melhoria foi estatisticamente significativa entre todas as etapas, validando a eficácia do protocolo.

### 3. Comportamento do Cliente (Correlações)
Investigação da relação entre a satisfação declarada e o engajamento com a marca, utilizando coeficientes de correlação de postos para dados ordinais.

* **Associação Forte:** Identificou-se uma forte correlação positiva entre Satisfação e Engajamento.
    * **Spearman:** 0.84 (Relação muito forte)
    * **Kendall:** 0.75 (Mais conservador, adequado para empates nos rankings)
* **Insight:** Clientes mais satisfeitos não apenas "gostam" da marca, mas interagem ativamente com ela. Estratégias de *Customer Success* têm impacto direto no engajamento.

## Metodologia e Modelagem
O projeto seguiu um pipeline rigoroso de validação estatística:

1.  **Verificação de Premissas:**
    * **Normalidade:** Teste de Shapiro-Wilk (para decidir entre testes paramétricos ou não-paramétricos).
    * **Homocedasticidade:** Teste de Levene (validação de variâncias iguais entre grupos).
2.  **Testes de Comparação de Grupos:**
    * **ANOVA One-Way:** Para comparar médias de 3+ grupos independentes.
    * **Kruskal-Wallis:** Alternativa não-paramétrica quando a normalidade não é atendida.
    * **Tukey HSD:** Para identificar exatamente *quais* grupos diferem entre si.
3.  **Análise de Categorias:**
    * **Chi-Quadrado e Fisher:** Para testar independência entre variáveis categóricas.
4.  **Correlações:**
    * **Pearson, Spearman e Kendall:** Seleção dinâmica baseada na natureza dos dados (lineares vs. monotônicos).

## Resultado e Ação Recomendada

As análises fornecem direcionamentos claros baseados em dados comprovados:

* **Marketing:** Redirecionar orçamento de mídia para trailers **Futuristas/Sci-Fi** em campanhas de topo de funil, dado seu poder superior de retenção.
* **Produto:** Priorizar iniciativas que aumentem a pontuação de **Satisfação do Cliente (CSAT)**, pois foi provado estatisticamente que esta métrica é uma alavanca direta para o Engajamento com a marca.
* **Clínico:** Manter o protocolo de tratamento atual para ansiedade, pois os dados comprovam eficácia contínua e não apenas pontual.

## Tecnologias Utilizadas

* **Linguagem:** Python
* **Manipulação de Dados:** Pandas
* **Estatística Avançada:** `scipy.stats`, `statsmodels` e `pingouin`
* **Visualização:** Seaborn, Matplotlib
