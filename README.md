[![en](https://img.shields.io/badge/lang-en-blue.svg)](https://github.com/EdgarJP006/trading-based-on-Yahoo-Finance/blob/main/README.md)
[![pt-br](https://img.shields.io/badge/lang-pt--br-green.svg)](https://github.com/EdgarJP006/trading-based-on-Yahoo-Finance/blob/main/locale/README-pt.md)
[![es](https://img.shields.io/badge/lang-es-yellow.svg)](https://github.com/EdgarJP006/trading-based-on-Yahoo-Finance/blob/main/locale/README-es.md)
[![zh-CN](https://img.shields.io/badge/lang-zh--br-red.svg)](https://github.com/EdgarJP006/trading-based-on-Yahoo-Finance/blob/main/locale/README-zh_CN.md)


# Analysis of the Data Science Applications in Finance Project
This project focuses on the development of trading algorithms based on historical data from Yahoo Finance, using data science to predict financial market behavior. The main objective is to explore the effectiveness of two prediction models: linear regression and Prophet, to generate more informed trading strategies.

## 1. Introduction
The motivation behind the project stems from the increasing amount of financial data available and the need for tools to analyze it and extract valuable information. Artificial intelligence (AI) and data science offer solutions to this problem, allowing investors to make more accurate and profitable decisions.
## 2. Data Science Applications in Finance
AI plays a key role in the analysis of financial data, identifying patterns and trends that can influence investment decisions. Machine learning, a branch of AI, allows predicting market movements with greater accuracy, providing a significant competitive advantage in trading.
The impact of the use of AI in finance is global. Decisions based on data analytics can influence investor behavior worldwide, affecting global economic stability and growth. The ability to anticipate and respond quickly to market fluctuations can mitigate the effects of economic crises.
## 3. Trading Strategies Based on Data Science
Data science-based trading strategies use algorithms that analyze historical data to predict future market movements. These strategies can be automated, increasing efficiency and reducing the risk of human error.
The project will use historical data on listed companies obtained from Yahoo Finance, including closing prices, trading volume and other financial indicators. This data will be analyzed and used to build predictive models.
## 4. Development of the Trading Algorithm with Linear Regression and Prophet
### 4.1 Data Preprocessing
- Data Preparation: The yfinance library is used to download historical data from Apple Inc (AAPL) from January 1, 2020 to January 1, 2024. 
You can search for other actual data at https://finance.yahoo.com/lookup/
Just look for the company, copy its Symbol (ID) example Netflix's is NFLX or Mercado Libre's is MELI and paste it in the line. 
`data = yf.download('AAPL', start='2020-01-01', end='2024-01-01')`
- Date Conversion: The "Date" column is converted to a numeric value "DateNum" representing the number of days since January 1, 1. This allows the date to be used as an independent variable in the linear regression model.
- Data Splitting: The data set is split into training and test sets (80% training, 20% test) to evaluate the performance of the model.
### 4.2 Variable Selection
- Dependent Variable: "Close" (stock closing price).
- Independent Variable: "DateNum" (number of days since January 1, 1).
### 4.3 Model Training
- Linear Regression: The LinearRegression class of scikit-learn is used to train a linear regression model with the training data. The model learns the linear relationship between date and closing price.
### 4.4 Model Validation.
- Predictions: Test data are used to make predictions of the closing price using the trained model.
- Evaluation Metrics: The mean square error (MSE) and the coefficient of determination (R²) are calculated to evaluate the accuracy of the model.
### 4.5 Interpretation of Results
First for the Linear Regression model the metrics are obtained:
- Mean Squared Error (MSE): 283.44141934748717.
- The MSE represents the mean squared differences between the actual values and the predicted values.
- A low MSE indicates that the model is making good predictions. In this case, the MSE is relatively high, suggesting that the model is not as accurate in predicting the closing price.
- R^2 Score: 0.7032079298869716
- The R² indicates the proportion of the variance in the dependent variable (closing price) that is explained by the independent variable (date).
- An R² close to 1 indicates that the model explains most of the variance in the data. In this case, the R² is 0.70, which means that the model explains approximately 70% of the variance in the closing price.
On the other hand, for the model with Prophet:
- Mean Squared Error (MSE): 46.376
- The MSE represents the mean squared differences between the actual values and the values predicted by the Prophet model.
- A low MSE indicates that the model is making predictions very close to the actual values. In this case, the MSE of 46.376 indicates that the Prophet predictions are very close to the actual closing prices.
- R^2 Score: 0.958
- The R² indicates the proportion of the variance in the closing price that is explained by the date according to the Prophet model.
- An R² close to 1 suggests that the model explains most of the variance in the closing price.
-  The value of 0.958 implies that the Prophet model explains about 95.8% of the variability in closing prices, which is very high and suggests an excellent fit of the model to the data.
### 4.6 Results Graph
 ![shows the actual closing prices](https://raw.githubusercontent.com/EdgarJP006/trading-based-on-Yahoo-Finance/main/Ciencia%20de%20Datos%20al%20campo%20de%20las%20Finanza/Figuras/Imagen1.png) 
1717390646742
- The graph shows the actual closing prices (blue line) and the model predictions (red dots).
- It can be seen that the linear regression model does not fit the actual data perfectly, especially in periods of higher volatility.
- The red line of the prediction is a straight line, reflecting the linear nature of the model.
 ![The graph shows the actual closing prices](https://raw.githubusercontent.com/EdgarJP006/trading-based-on-Yahoo-Finance/main/Ciencia%20de%20Datos%20al%20campo%20de%20las%20Finanza/Figuras/Imagen3.png) 
1717390826962
- The graph shows the actual closing prices (black dots) and the model predictions (blue line). The black dots represent the historical price data, while the blue line represents the Prophet model prediction.
- The shaded area around the blue line represents the range of error or uncertainty of the prediction. This means that the Prophet model predicts that the price will be within that range with a certain probability.
- It can be seen that the model fits the actual data quite well, but there are some periods where the prediction is not as accurate. The Prophet model is a seasonal model, so it can be observed that the prediction is more accurate in periods where the seasonality is more pronounced.
### 4.7 Trading Strategies
- Linear Regression: The linear regression model can be used to generate buy/sell signals based on the closing price trend.
- If the model predicts a closing price higher than the current price, it can be considered a buy signal.
- If the model predicts a closing price lower than the current price, it can be considered a sell signal.
- Prophet: The Prophet model can be used to predict the closing price in the future, which can be useful for long-term investment strategies.
- If the model predicts an increase in the closing price in the future, it can be considered a reversal.
- If the model predicts a decrease in the closing price in the future, an investment can be considered to be avoided.
### 4.8 Additional Considerations
- Model Limitations: The linear regression and Prophet models are simple and may not capture all the complexities of the financial market.
- Model Optimization: The model can be optimized using different parameters and variables to improve its accuracy.
- Risk Analysis: It is important to perform a risk analysis before implementing any trading strategy based on predictive models.
## 5. Conclusions and Future Work
The project demonstrates how data science can be effectively applied in the financial arena to develop trading strategies. Linear regression and Prophet models offer complementary approaches to stock price prediction, each with their own strengths and limitations.
Limitations:
- Availability and quality of data.
- Simplicity of the models used.
- Need to continually adjust algorithms to adapt to changing market conditions.
Proposals for Future Work:
- Explore the use of more advanced models, such as deep neural networks.
- Incorporate more macroeconomic and sentimental variables in prediction models.
## 7. References
- Yahoo Finance: https://finance.yahoo.com/
- Scikit-learn: https://scikit-learn.org/
- Prophet: https://facebook.github.io/prophet/
## 8. Annexes
Other Trending Tickers
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

