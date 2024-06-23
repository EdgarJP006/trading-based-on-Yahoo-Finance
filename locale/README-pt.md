[![en](https://img.shields.io/badge/lang-en-blue.svg)](https://github.com/EdgarJP006/trading-based-on-Yahoo-Finance/blob/main/README.md)
[![pt-br](https://img.shields.io/badge/lang-pt--br-green.svg)](https://github.com/EdgarJP006/trading-based-on-Yahoo-Finance/blob/main/locale/README-pt.md)
[![es](https://img.shields.io/badge/lang-es-yellow.svg)](https://github.com/EdgarJP006/trading-based-on-Yahoo-Finance/blob/main/locale/README-es.md)
[![zh-CN](https://img.shields.io/badge/lang-zh--br-red.svg)](https://github.com/EdgarJP006/trading-based-on-Yahoo-Finance/blob/main/locale/README-zh_CN.md)


# Análise dos aplicativos de ciência de dados no projeto de finanças
Este projeto se concentra no desenvolvimento de algoritmos de negociação com base em dados históricos do Yahoo Finance, usando a ciência de dados para prever o comportamento do mercado financeiro. O principal objetivo é explorar a eficácia de dois modelos de previsão: regressão linear e Profeta, para gerar estratégias de negociação mais informadas.

## 1. Introdução
A motivação por trás do projeto decorre da quantidade crescente de dados financeiros disponíveis e da necessidade de ferramentas para analisá-los e extrair informações valiosas. A inteligência artificial (IA) e a ciência de dados oferecem soluções para esse problema, permitindo que os investidores tomem decisões mais precisas e lucrativas.
## 2. Aplicativos de ciência de dados em finanças
A IA desempenha um papel fundamental na análise de dados financeiros, identificando padrões e tendências que podem influenciar as decisões de investimento. O aprendizado de máquina, um ramo da IA, permite prever os movimentos do mercado com maior precisão, proporcionando uma vantagem competitiva significativa nas negociações.
O impacto do uso da IA em finanças é global. As decisões baseadas na análise de dados podem influenciar o comportamento dos investidores em todo o mundo, afetando a estabilidade e o crescimento econômico global. A capacidade de antecipar e responder rapidamente às flutuações do mercado pode atenuar os efeitos das crises econômicas.
## 3. Estratégias de negociação baseadas em ciência de dados
As estratégias de negociação baseadas na ciência de dados usam algoritmos que analisam dados históricos para prever movimentos futuros do mercado. Essas estratégias podem ser automatizadas, aumentando a eficiência e reduzindo o risco de erro humano.
O projeto usará dados históricos de empresas listadas em bolsa obtidos do Yahoo Finance, incluindo preços de fechamento, volume de negociação e outros indicadores financeiros. Esses dados serão analisados e usados para criar modelos de previsão.
## 4. Desenvolvimento do algoritmo de negociação com regressão linear e profeta
### 4.1 Pré-processamento de dados
- Preparação de dados: A biblioteca yfinance é usada para baixar dados históricos da Apple Inc (AAPL) de 1º de janeiro de 2020 a 1º de janeiro de 2024. 
Você pode pesquisar outros dados reais em https://finance.yahoo.com/lookup/
Basta procurar a empresa, copiar seu símbolo (ID), por exemplo, o da Netflix é NFLX ou o do Mercado Livre é MELI, e colá-lo na linha. 
`data = yf.download('AAPL', start='2020-01-01', end='2024-01-01')`
- Conversão de data: A coluna "Date" é convertida em um valor numérico "DateNum" que representa o número de dias desde 1º de janeiro de 1. Isso permite que a data seja usada como uma variável independente no modelo de regressão linear.
- Divisão de dados: O conjunto de dados é dividido em conjuntos de treinamento e teste (80% de treinamento, 20% de teste) para avaliar o desempenho do modelo.
### 4.2 Seleção de variáveis
- Variável dependente: "Close" (preço de fechamento da ação).
- Variável independente: "DateNum" (número de dias desde 1º de janeiro de 1).
### 4.3 Treinamento do modelo
- Regressão linear: A classe LinearRegression do scikit-learn é usada para treinar um modelo de regressão linear com os dados de treinamento. O modelo aprende a relação linear entre a data e o preço de fechamento.
### 4.4 Validação do modelo.
- Previsões: Os dados de teste são usados para fazer previsões do preço de fechamento usando o modelo treinado.
- Métricas de avaliação: O erro quadrático médio (MSE) e o coeficiente de determinação (R²) são calculados para avaliar a precisão do modelo.
### 4.5 Interpretação dos resultados
Primeiro, para o modelo de regressão linear, as métricas são obtidas:
- Erro quadrático médio (MSE): 283,44141934748717.
- O MSE representa as diferenças quadráticas médias entre os valores reais e os valores previstos.
- Um MSE baixo indica que o modelo está fazendo boas previsões. Nesse caso, o MSE é relativamente alto, o que sugere que o modelo não é tão preciso na previsão do preço de fechamento.
- Pontuação R^2: 0,7032079298869716
- O R² indica a proporção da variação na variável dependente (preço de fechamento) que é explicada pela variável independente (data).
- Um R² próximo de 1 indica que o modelo explica a maior parte da variação nos dados. Nesse caso, o R² é 0,70, o que significa que o modelo explica aproximadamente 70% da variação no preço de fechamento.
Por outro lado, para o modelo com o Prophet:
- Erro médio quadrático (MSE): 46,376
- O MSE representa as diferenças quadráticas médias entre os valores reais e os valores previstos pelo modelo do Prophet.
- Um MSE baixo indica que o modelo está fazendo previsões muito próximas dos valores reais. Nesse caso, o MSE de 46,376 indica que as previsões do Prophet estão muito próximas dos preços de fechamento reais.
- Pontuação R^2: 0,958
- O R² indica a proporção da variação no preço de fechamento que é explicada pela data de acordo com o modelo do Prophet.
- Um R² próximo de 1 sugere que o modelo explica a maior parte da variação no preço de fechamento.
- O valor de 0,958 implica que o modelo Prophet explica cerca de 95,8% da variabilidade nos preços de fechamento, o que é muito alto e sugere um excelente ajuste do modelo aos dados.
### 4.6 Gráfico de resultados
 
1717390646742
- O gráfico mostra os preços de fechamento reais (linha azul) e as previsões do modelo (pontos vermelhos).
- É possível observar que o modelo de regressão linear não se ajusta perfeitamente aos dados reais, especialmente em períodos de maior volatilidade.
- A linha vermelha da previsão é uma linha reta, refletindo a natureza linear do modelo.
 
1717390826962
- O gráfico mostra os preços de fechamento reais (pontos pretos) e as previsões do modelo (linha azul). Os pontos pretos representam os dados históricos de preços, enquanto a linha azul representa a previsão do modelo Prophet.
- A área sombreada ao redor da linha azul representa a faixa de erro ou incerteza da previsão. Isso significa que o modelo Prophet prevê que o preço estará dentro dessa faixa com uma certa probabilidade.
- É possível observar que o modelo se ajusta muito bem aos dados reais, mas há alguns períodos em que a previsão não é tão precisa. O modelo Prophet é um modelo sazonal, portanto, pode-se observar que a previsão é mais precisa nos períodos em que a sazonalidade é mais pronunciada.
### 4.7 Estratégias de negociação
- Regressão linear: O modelo de regressão linear pode ser usado para gerar sinais de compra/venda com base na tendência do preço de fechamento.
- Se o modelo prever um preço de fechamento mais alto do que o preço atual, isso pode ser considerado um sinal de compra.
- Se o modelo prever um preço de fechamento inferior ao preço atual, poderá ser considerado um sinal de venda.
- Prophet: O modelo Prophet pode ser usado para prever o preço de fechamento no futuro, o que pode ser útil para estratégias de investimento de longo prazo.
- Se o modelo prever um aumento no preço de fechamento no futuro, isso pode ser considerado uma reversão.
- Se o modelo prever uma queda no preço de fechamento no futuro, pode-se considerar que um investimento deve ser evitado.
### 4.8 Considerações adicionais
- Limitações do modelo: Os modelos de regressão linear e de Profeta são simples e podem não captar todas as complexidades do mercado financeiro.
- Otimização do modelo: O modelo pode ser otimizado usando diferentes parâmetros e variáveis para melhorar sua precisão.
- Análise de risco: É importante realizar uma análise de risco antes de implementar qualquer estratégia de negociação baseada em modelos preditivos.
## 5. Conclusões e trabalhos futuros
O projeto demonstra como a ciência de dados pode ser aplicada com eficácia na área financeira para desenvolver estratégias de negociação. Os modelos de regressão linear e Profeta oferecem abordagens complementares para a previsão do preço das ações, cada um com seus próprios pontos fortes e limitações.
Limitações:
- Disponibilidade e qualidade dos dados.
- Simplicidade dos modelos usados.
- Necessidade de ajustar continuamente os algoritmos para se adaptar às mudanças nas condições do mercado.
Propostas para trabalhos futuros:
- Explorar o uso de modelos mais avançados, como redes neurais profundas.
- Incorporar mais variáveis macroeconômicas e sentimentais nos modelos de previsão.
## 7. Referências
- Yahoo Finance: https://finance.yahoo.com/
- Scikit-learn: https://scikit-learn.org/
- Prophet: https://facebook.github.io/prophet/
## 8. Anexos
Outros indicadores de tendência
| Símbolo | Nome da empresa |
|---|---|
| Symbol | Company Name |
|---|---|
| NVD | NVIDIA Corporation |
| SIR | Sirius XM Holdings Inc. |
| AAPL | Apple Inc. |
| BAC | Bank of America Corporation |
| T | AT&T Inc. |
| MARA | Marathon Digital Holdings, Inc. |
| CSCO | Cisco Systems, Inc. |
| ADT | ADT Inc. |
| AMD | Advanced Micro Devices, Inc. |
| PLTR | Palantir Technologies Inc. |
| TSLA | Tesla, Inc. |
| WBD | Warner Bros. Discovery, Inc. |
| MU | Micron Technology, Inc. |
| INTC | Intel Corporation |
| AMZN | Amazon.com, Inc. |
| SWN | Southwestern Energy Company |
| BMY | Bristol-Myers Squibb Company |
| GOLD | Barrick Gold Corporation |
| F | Ford Motor Company |
| NU | Nu Holdings Ltd. |
| CMA | Comerica Incorporated |
| GOOGL | Alphabet Inc. |
| GDDY | GoDaddy Inc. |
| CLSK | CleanSpark, Inc. |
| BTG | B2Gold Corp. |
| RHI | Robert Half Inc. |
| NWG | NatWest Group plc |
| KMI | Kinder Morgan, Inc. |
| ITUB | Itaú Unibanco Holding S.A. |
| SNAP | Snap Inc. |
| PFE | Pfizer Inc. |
| GOOG | Alphabet Inc. |
| KO | The Coca-Cola Company |
| CX | CEMEX, S.A.B. de C.V. |
| COP | ConocoPhillips |
| SLB | Schlumberger Limited |
| KVU | Kenvue Inc. |
| RIOT | Riot Platforms, Inc. |
| GME | GameStop Corp. |
| SOFI | SoFi Technologies, Inc. |
| HPE | Hewlett Packard Enterprise Company |
| INFY | Infosys Limited |
| NVAX | Novavax, Inc. |
| QCOM | QUALCOMM Incorporated |
| VALE | Vale S.A. |
| NIO | NIO Inc. |
| ABEV | Ambev S.A. |
| RIVN | Rivian Automotive, Inc. |
| OXY | Occidental Petroleum Corporation |
| CVX | Chevron Corporation |
| PATH | UiPath Inc. |
| WFC | Wells Fargo & Company |
| CMCSA | Comcast Corporation |
| AAL | American Airlines Group Inc. |
| HBAN | Huntington Bancshares Incorporated |
| CCL | Carnival Corporation & plc |
| MSFT | Microsoft Corporation |
| RIG | Transocean Ltd. |
| PCG | PG&E Corporation |
| FCX | Freeport-McMoRan Inc. |
| EXC | Exelon Corporation |
| GILD | Gilead Sciences, Inc. |
| MRO | Marathon Oil Corporation |
| CDE | Coeur Mining, Inc. |
| AWELL | Welltower Inc. |
| LYFT | Lyft, Inc. |
| ARO | Roivant Sciences Ltd. |
| TSM | Taiwan Semiconductor Manufacturing Company Limited |
| KR | The Kroger Co. |
| GM | General Motors Company |
| XOM | Exxon Mobil Corporation |
| HOOD | Robinhood Markets, Inc. |
| DKNG | DraftKings Inc. |
| KHC | The Kraft Heinz Company |
| META | Meta Platforms, Inc. |
| VZ | Verizon Communications Inc. |
| CSX | CSX Corporation |
| ALT | Arcadia Lithium plc |
| SBUX | Starbucks Corporation |
| KKR | KKR & Co. Inc. |
| WMT | Walmart Inc. |
| DELL | Dell Technologies Inc. |
| DJT | Trump Media & Technology Group Corp. |
| SRPT | Sarepta Therapeutics, Inc. |
| KGCI | Kinross Gold Corporation |
| IQ | iQIYI, Inc. |
| ARM | Arm Holdings plc |
| AMCR | Amcor plc |
| LCID | Lucid Group, Inc. |
| NI | NiSource Inc. |
