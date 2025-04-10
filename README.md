# El papel del Bitcoin en una cartera de inversión de tres activos (actualización hasta abril de 2025)

Este repositorio contiene un análisis sobre la inclusión del **Bitcoin (BTC)** en una cartera de inversión diversificada junto con **acciones estadounidenses (índice S&P 500)** y **oro**, siguiendo la metodología propuesta en el estudio original disponible en [DataCamp](https://www.datacamp.com/datalab/w/21cc7714-89b7-48e4-b1b3-7733e95e536a). En dicho estudio se investigaron los siguientes aspectos:

1. **Comparación del rendimiento y del riesgo** del Bitcoin en relación con el oro y el índice S&P 500.  
2. **Impacto del Bitcoin** en una cartera diversificada desde el punto de vista del riesgo y la rentabilidad (volatilidad, ratio de Sharpe, pérdidas máximas acumuladas o drawdowns, entre otros indicadores).  
3. **Potencial papel del Bitcoin** como activo de cobertura frente a la inflación.  
4. **Optimización de carteras** mediante los modelos clásicos de media-varianza (**mean-variance optimization**) y la librería [PyPortfolioOpt](https://github.com/robertmartin8/PyPortfolioOpt).

## Resumen del estudio original (2014-2021)
- **Rendimiento excepcional del Bitcoin**: BTC mostró un crecimiento anual compuesto medio (CAGR) en torno al 100 %, aunque acompañado de una volatilidad significativamente superior a la de las acciones y el oro.  
- **Correlación moderada**: La correlación del Bitcoin con el índice S&P 500 (aproximadamente del 0,3) sugiere que, aunque su aportación a la diversificación es limitada, sí mejora notablemente la rentabilidad ajustada al riesgo de la cartera (ratio de Sharpe alrededor de 1,3).  
- **Relación con la inflación**: El estudio concluyó que el Bitcoin no presentó una evidencia clara para actuar como cobertura frente a la inflación durante el periodo analizado.  
- **Carteras óptimas obtenidas**:
  - **Cartera de mínima volatilidad**: habitualmente no incluía Bitcoin (0 % asignado), privilegiando una combinación de acciones y oro.  
  - **Cartera de máximo Sharpe**: sugería una asignación en torno al 13 % en Bitcoin, ofreciendo mayores retornos esperados aunque acompañados de un mayor riesgo.  
- **Conclusiones clave**:  
  - Una pequeña exposición al Bitcoin (por ejemplo, un 2 %) incrementaba significativamente la rentabilidad sin aumentar notablemente la volatilidad.  
  - El estudio recalca que los resultados obtenidos son retrospectivos (basados en datos históricos), por lo que recomienda complementarlos con análisis prospectivos (forward-looking).

## Actualización del estudio hasta abril de 2025
En esta **nueva fase**, se seguirá exactamente el mismo enfoque metodológico, ampliando el análisis para abarcar datos históricos hasta el **9 de abril de 2025**. El objetivo de esta actualización es:

1. Comprobar si el **Bitcoin** ha mantenido en los últimos años su patrón característico de alta volatilidad y alto rendimiento observado hasta 2021.  
2. Analizar la evolución de sus **correlaciones** con el índice S&P 500 y con el oro, así como su potencial relación con la inflación en este nuevo periodo.  
3. Calcular nuevamente las **carteras óptimas** para los objetivos de mínima volatilidad y máximo ratio de Sharpe, utilizando para ello la librería PyPortfolioOpt.  
4. Comparar los resultados y las conclusiones de este nuevo análisis con los obtenidos en el estudio previo (2014-2021), para evaluar posibles cambios en el papel del Bitcoin dentro de una cartera diversificada de tres activos.

## Referencias
- [Estudio original en DataCamp](https://www.datacamp.com/datalab/w/21cc7714-89b7-48e4-b1b3-7733e95e536a)
- [PyPortfolioOpt (Martin, R. A., 2021)](https://doi.org/10.21105/joss.03066)
- Datos históricos de inflación: [U.S. Bureau of Labor Statistics](https://www.bls.gov/)
- Datos históricos de mercados financieros: [Yahoo Finance](https://finance.yahoo.com/)

> **Nota importante**: Este análisis está basado en datos históricos y en ciertos supuestos simplificados de la teoría moderna de carteras. Por lo tanto, debe complementarse con investigaciones adicionales cualitativas y prospectivas, teniendo en cuenta diversos escenarios futuros que podrían afectar al comportamiento del Bitcoin y del resto de activos considerados.
