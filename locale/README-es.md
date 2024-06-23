[![es](https://img.shields.io/badge/lang-en-blue.svg)](https://github.com/EdgarJP006/trading-based-on-Yahoo-Finance/blob/main/README.md)
[![pt-br](https://img.shields.io/badge/lang-pt--br-green.svg)](https://github.com/EdgarJP006/trading-based-on-Yahoo-Finance/blob/main/locale/README-pt.md)
[![es](https://img.shields.io/badge/lang-es-amarillo.svg)](https://github.com/EdgarJP006/trading-based-on-Yahoo-Finance/blob/amin/locale/README-es.md)
[![zh-CN](https://img.shields.io/badge/lang-zh--br-red.svg)](https://github.com/EdgarJP006/trading-based-on-Yahoo-Finance/blob/main/locale/README-zh_CN.md)


# Análisis del Proyecto de Aplicaciones de Ciencia de Datos en Finanzas
Este proyecto se centra en el desarrollo de algoritmos comerciales basados ​​en datos históricos de Yahoo Finance, utilizando ciencia de datos para predecir el comportamiento del mercado financiero. El objetivo principal es explorar la efectividad de dos modelos de predicción: regresión lineal y Prophet, para generar estrategias comerciales más informadas.

## 1. Introducción
La motivación detrás del proyecto surge de la creciente cantidad de datos financieros disponibles y la necesidad de herramientas para analizarlos y extraer información valiosa. La inteligencia artificial (IA) y la ciencia de datos ofrecen soluciones a este problema, permitiendo a los inversores tomar decisiones más precisas y rentables.
## 2. Aplicaciones de la ciencia de datos en finanzas
La IA desempeña un papel clave en el análisis de datos financieros, identificando patrones y tendencias que pueden influir en las decisiones de inversión. El aprendizaje automático, una rama de la IA, permite predecir los movimientos del mercado con mayor precisión, proporcionando una importante ventaja competitiva en el comercio.
El impacto del uso de la IA en las finanzas es global. Las decisiones basadas en el análisis de datos pueden influir en el comportamiento de los inversores en todo el mundo, afectando la estabilidad económica y el crecimiento globales. La capacidad de anticipar y responder rápidamente a las fluctuaciones del mercado puede mitigar los efectos de las crisis económicas.
## 3. Estrategias comerciales basadas en la ciencia de datos
Las estrategias comerciales basadas en la ciencia de datos utilizan algoritmos que analizan datos históricos para predecir movimientos futuros del mercado. Estas estrategias se pueden automatizar, aumentando la eficiencia y reduciendo el riesgo de error humano.
El proyecto utilizará datos históricos sobre las empresas que cotizan en bolsa obtenidos de Yahoo Finance, incluidos precios de cierre, volumen de operaciones y otros indicadores financieros. Estos datos serán analizados y utilizados para construir modelos predictivos.
## 4. Desarrollo del algoritmo comercial con regresión lineal y profeta
### 4.1 Preprocesamiento de datos
- Preparación de datos: la biblioteca yfinance se utiliza para descargar datos históricos de Apple Inc (AAPL) desde el 1 de enero de 2020 al 1 de enero de 2024.
Puede buscar otros datos reales en https://finance.yahoo.com/lookup/
Solo busca la empresa, copia su Símbolo (ID) ejemplo el de Netflix es NFLX o el de Mercado Libre es MELI y pégalo en la línea.
`datos = yf.download('AAPL', inicio='2020-01-01', fin='2024-01-01')`
- Conversión de fecha: la columna "Fecha" se convierte en un valor numérico "DateNum" que representa el número de días desde el 1 de enero de 1. Esto permite que la fecha se utilice como variable independiente en el modelo de regresión lineal.
- División de datos: el conjunto de datos se divide en conjuntos de entrenamiento y prueba (80% entrenamiento, 20% prueba) para evaluar el rendimiento del modelo.
### 4.2 Selección de variables
- Variable Dependiente: "Close" (precio de cierre de la acción).
- Variable Independiente: “DateNum” (número de días desde el 1 de enero de 1).
### 4.3 Entrenamiento modelo
- Regresión lineal: la clase LinearRegression de scikit-learn se utiliza para entrenar un modelo de regresión lineal con los datos de entrenamiento. El modelo aprende la relación lineal entre la fecha y el precio de cierre.
### 4.4 Validación del modelo.
- Predicciones: los datos de prueba se utilizan para hacer predicciones del precio de cierre utilizando el modelo entrenado.
- Métricas de evaluación: El error cuadrático medio (MSE) y el coeficiente de determinación (R²) se calculan para evaluar la precisión del modelo.
### 4.5 Interpretación de los resultados
Primero para el modelo de Regresión Lineal se obtienen las métricas:
- Error cuadrático medio (MSE): 283,44141934748717.
- El MSE representa las diferencias medias cuadráticas entre los valores reales y los valores predichos.
- Un MSE bajo indica que el modelo está haciendo buenas predicciones. En este caso, el MSE es relativamente alto, lo que sugiere que el modelo no es tan preciso a la hora de predecir el precio de cierre.
- Puntuación R^2: 0,7032079298869716
- El R² indica la proporción de la varianza de la variable dependiente (precio de cierre) que se explica por la variable independiente (fecha).
- Un R² cercano a 1 indica que el modelo explica la mayor parte de la varianza de los datos. En este caso, el R² es 0,70, lo que significa que el modelo explica aproximadamente el 70% de la variación en el precio de cierre.
Por otro lado, para el modelo con Prophet:
- Error cuadrático medio (MSE): 46,376
- El MSE representa las diferencias medias cuadráticas entre los valores reales y los valores predichos por el modelo Prophet.
- Un MSE bajo indica que el modelo está ganando p
