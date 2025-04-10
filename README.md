# El rol de Bitcoin en un portafolio de 3 activos (Actualización hasta abril 2025)

Este repositorio presenta un análisis sobre la inclusión de **Bitcoin (BTC)** en un portafolio de inversión junto a **acciones de EE. UU. (S&P 500)** y **oro**, siguiendo la misma línea del estudio original disponible en [DataCamp](https://www.datacamp.com/datalab/w/21cc7714-89b7-48e4-b1b3-7733e95e536a). Allí se investigaron:

1. **Comparación de rendimiento y riesgo** de Bitcoin frente a oro y S&P 500.  
2. **Impacto de Bitcoin** en un portafolio diversificado (volatilidad, Sharpe ratio, drawdown, etc.).  
3. **Posible rol de Bitcoin** como cobertura contra la inflación.  
4. **Optimización de portafolios** (mínima volatilidad y máximo Sharpe ratio) usando modelos de **mean-variance** y la librería [PyPortfolioOpt](https://github.com/robertmartin8/PyPortfolioOpt).

## Resumen del estudio original (2014-2021)
- **Rendimiento sobresaliente de Bitcoin**: BTC tuvo un crecimiento anual promedio (CAGR) de ~100% pero con una volatilidad muy superior a la de acciones y oro.  
- **Correlación**: Con una correlación moderada (0.3) respecto al S&P 500, Bitcoin no aportó una gran diversificación, pero sí mejoró el rendimiento ajustado al riesgo (Sharpe ratio ~1.3).  
- **Inflación**: BTC no mostró evidencia clara de servir como cobertura contra la inflación.  
- **Portafolios óptimos**:
  - **Mínima volatilidad**: habitualmente 0% BTC, mayor peso en oro y acciones.  
  - **Máxima Sharpe**: ~13% BTC, con mayor retorno esperado, pero también mayor riesgo.  
- **Conclusiones clave**:  
  - Una pequeña exposición (p. ej., 2% en BTC) mejoró el rendimiento global sin elevar drásticamente la volatilidad.  
  - El estudio subraya que los resultados son “backward-looking” y se recomienda investigación adicional con un enfoque forward-looking.

## Actualización: hasta el 09/04/2025
En esta **nueva fase**, repetiremos el mismo enfoque analítico para abarcar los datos históricos **hasta el 09 de abril de 2025**. El objetivo es:

1. Confirmar si **Bitcoin** ha mantenido su patrón de alta volatilidad y alto rendimiento en los últimos años.  
2. Revisar las **correlaciones** con el S&P 500 y oro (y su posible rol frente a la inflación).  
3. Hallar de nuevo los **portafolios de mínima volatilidad y máximo Sharpe** con PyPortfolioOpt.  
4. Comparar las **conclusiones** con el estudio previo (2014-2021) y ver si el rol de BTC en una cartera de tres activos ha cambiado.

## Referencias
- [Estudio original en DataCamp](https://www.datacamp.com/datalab/w/21cc7714-89b7-48e4-b1b3-7733e95e536a)
- [PyPortfolioOpt (Martin, R. A., 2021)](https://doi.org/10.21105/joss.03066)
- Datos de inflación: [U.S. Bureau of Labor Statistics](https://www.bls.gov/)
- Datos de mercados: [Yahoo Finance](https://finance.yahoo.com/)

> **Nota**: Este análisis sigue siendo un ejercicio basado en datos históricos y supuestos simplificados de la teoría de portafolios. Es fundamental complementarlo con investigaciones cualitativas y escenarios futuros más amplios sobre Bitcoin y otros activos.
