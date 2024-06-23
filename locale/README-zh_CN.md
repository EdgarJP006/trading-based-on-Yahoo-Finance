[![en](https://img.shields.io/badge/lang-en-blue.svg)](https://github.com/EdgarJP006/trading-based-on-Yahoo-Finance/blob/main/README.md)
[![pt-br](https://img.shields.io/badge/lang-pt--br-green.svg)](https://github.com/EdgarJP006/trading-based-on-Yahoo-Finance/blob/main/locale/README-pt.md)
[![es](https://img.shields.io/badge/lang-es-yellow.svg)](https://github.com/EdgarJP006/trading-based-on-Yahoo-Finance/blob/main/locale/README-es.md)
[![zh-CN](https://img.shields.io/badge/lang-zh--br-red.svg)](https://github.com/EdgarJP006/trading-based-on-Yahoo-Finance/blob/main/locale/README-zh_CN.md)


# 金融数据科学应用项目分析
本项目侧重于基于雅虎财经的历史数据开发交易算法，利用数据科学预测金融市场行为。主要目标是探索线性回归和先知这两种预测模型的有效性，以生成更明智的交易策略。

## 1. 项目介绍
该项目的动机源于可用金融数据量的不断增加，以及对分析这些数据并提取有价值信息的工具的需求。人工智能（AI）和数据科学为这一问题提供了解决方案，使投资者能够做出更准确、更有利的决策。
## 2. 数据科学在金融领域的应用
人工智能在分析金融数据、识别可影响投资决策的模式和趋势方面发挥着关键作用。机器学习作为人工智能的一个分支，可以更准确地预测市场动向，在交易中提供显著的竞争优势。
在金融领域使用人工智能的影响是全球性的。基于数据分析的决策可以影响全球投资者的行为，从而影响全球经济的稳定和增长。预测和快速应对市场波动的能力可以减轻经济危机的影响。
## 3. 基于数据科学的交易策略
基于数据科学的交易策略使用分析历史数据的算法来预测未来的市场走势。这些策略可以实现自动化，从而提高效率并降低人为错误的风险。
该项目将使用从雅虎财经获得的上市公司历史数据，包括收盘价、交易量和其他财务指标。这些数据将被分析并用于建立预测模型。
## 4. 利用线性回归和先知开发交易算法
### 4.1 数据预处理
- 数据准备： 使用 yfinance 库下载苹果公司 (AAPL) 2020 年 1 月 1 日至 2024 年 1 月 1 日的历史数据。
您可以在 https://finance.yahoo.com/lookup/ 上搜索其他实际数据。
只需查找公司，复制其代码（ID），例如 Netflix 的代码是 NFLX，Mercado Libre 的代码是 MELI，然后将其粘贴到一行中。
数据 = yf.download('AAPL', start='2020-01-01', end='2024-01-01')`。
- 日期转换： 日期 "列转换为数值 "DateNum"，表示自 1 月 1 日以来的天数。 这样，日期就可以用作线性回归模型中的自变量。
- 数据分割： 数据集分为训练集和测试集（80% 训练，20% 测试），以评估模型的性能。
#### 4.2 变量选择
- 因变量： "收盘价"（股票收盘价）。
- 自变量： "DateNum"（1 月 1 日以来的天数）。
#### 4.3 模型训练
- 线性回归： scikit-learn 的 LinearRegression 类用于使用训练数据训练线性回归模型。该模型学习日期和收盘价之间的线性关系。
### 4.4 模型验证。
- 预测： 测试数据用于使用训练好的模型预测收盘价。
- 评估指标： 计算均方误差 (MSE) 和决定系数 (R²)，以评估模型的准确性。
### 4.5 结果解释
首先得出线性回归模型的指标：
- 平均平方误差（MSE）：283.44141934748717。
- MSE 表示实际值与预测值之间的均方差。
- MSE 值越低，说明模型的预测效果越好。在本例中，MSE 相对较高，表明模型预测收盘价的准确性不高。
- R^2 分数：0.7032079298869716
- R² 表示因变量（收盘价）中由自变量（日期）解释的方差比例。
- R² 接近 1 表示模型解释了数据中的大部分方差。在本例中，R² 为 0.70，这意味着模型解释了收盘价中约 70% 的方差。

另一方面，对于带有先知的模型，平均平方误差（MSE）：46.376：
- 平均平方误差 (MSE)：46.376
- MSE 表示实际值与先知模型预测值之间的均方差。
- MSE 值越低，说明模型的预测值越接近实际值。在本例中，46.376 的 MSE 表示先知预测值非常接近实际收盘价。
- R^2 分数： 0.958
- R² 表示根据先知模型用日期解释的收盘价方差比例。
- R² 接近 1 表示模型可以解释收盘价中的大部分差异。
- 0.958 的值意味着先知模型解释了约 95.8%的收盘价变异，这是一个非常高的值，表明模型与数据的拟合度非常高。
#### 4.6 结果图
 
1717390646742
- 该图显示了实际收盘价（蓝线）和模型预测值（红点）。
- 可以看出，线性回归模型并不能完全拟合实际数据，尤其是在波动较大的时期。
- 预测的红线是一条直线，反映了模型的线性性质。
 
1717390826962
- 图中显示了实际收盘价（黑点）和模型预测值（蓝线）。黑点代表历史价格数据，蓝线代表先知模型预测。
- 蓝线周围的阴影区域代表预测的误差范围或不确定性。这意味着先知模型预测价格将以一定的概率处于该范围内。
- 可以看出，该模型与实际数据非常吻合，但在某些时段的预测并不准确。先知模型是一个季节性模型，因此可以观察到，在季节性比较明显的时期，预测会更准确。
### 4.7 交易策略
- 线性回归： 线性回归模型可用于根据收盘价趋势生成买入/卖出信号。
- 如果模型预测的收盘价高于当前价格，则可视为买入信号。
- 如果模型预测的收盘价低于当前价格，则可视为卖出信号。
- 先知： 先知模型可用于预测未来的收盘价，这对长期投资策略非常有用。
- 如果模型预测未来收盘价上涨，则可视为反转信号。
- 如果模型预测未来收盘价下跌，则可考虑避免投资。
### 4.8 其他考虑因素
- 模型局限性： 线性回归模型和先知模型比较简单，可能无法反映金融市场的所有复杂情况。
- 模型优化： 可以使用不同的参数和变量对模型进行优化，以提高其准确性。
- 风险分析： 在实施任何基于预测模型的交易策略之前，进行风险分析非常重要。
## 5. 结论和未来工作
该项目展示了数据科学如何有效地应用于金融领域，以制定交易策略。线性回归和先知模型为股价预测提供了互补的方法，它们各有自己的优势和局限性。
局限性：
- 数据的可用性和质量。
- 所用模型的简单性。
- 需要不断调整算法以适应不断变化的市场条件。
未来工作建议：
- 探索使用更先进的模型，如深度神经网络。
- 在预测模型中纳入更多宏观经济和情感变量。
## 7. 参考文献
- 雅虎财经：https://finance.yahoo.com/
- Scikit-learn: https://scikit-learn.org/
- 先知：https://facebook.github.io/prophet/
## 8. 附件
其他热门股票
| 公司名称
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
