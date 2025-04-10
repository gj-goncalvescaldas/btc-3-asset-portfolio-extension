# El papel del Bitcoin en una cartera de inversión de tres activos (actualización hasta abril de 2025)

Este repositorio presenta un análisis actualizado sobre la inclusión del **Bitcoin (BTC)** en una cartera de inversión diversificada junto con **acciones estadounidenses (índice S&P 500)** y **oro**, siguiendo la misma metodología del estudio original disponible en [DataCamp](https://www.datacamp.com/datalab/w/21cc7714-89b7-48e4-b1b3-7733e95e536a).

---

## 📖 Índice de contenidos
1. [Introducción: ¿Qué es el Bitcoin y por qué considerarlo?](#1-introducción-qué-es-el-bitcoin-y-por-qué-considerarlo-en-una-cartera-de-inversión)
2. [Objetivos del análisis](#2-objetivos-del-análisis)
3. [Resumen del estudio original (2014-2021)](#3-resumen-del-estudio-original-2014-2021)
4. [Actualización del análisis hasta abril de 2025](#4-actualización-del-análisis-hasta-abril-de-2025)
5. [Próximo paso: FTSE All-World](#5-próximo-paso-ftse-all-world)
6. [Referencias](#6-referencias)
7. [Nota importante](#7-nota-importante)

---

## 1. Introducción: ¿Qué es el Bitcoin y por qué considerarlo en una cartera de inversión?

**Bitcoin (BTC)** es la criptomoneda más conocida y utilizada en todo el mundo. Creada en 2009 por una persona o grupo de personas bajo el seudónimo **Satoshi Nakamoto**, Bitcoin surgió como una moneda digital descentralizada, independiente de cualquier banco central, gobierno o entidad financiera tradicional.

La tecnología blockchain sobre la que se basa permite registrar las transacciones de manera segura, transparente e inalterable.

### ¿Por qué me interesa especialmente el Bitcoin?

En lo personal, Bitcoin es un activo que me gusta particularmente debido a varias razones:

- **Independencia financiera**: Bitcoin no depende de gobiernos ni bancos centrales, a diferencia de las monedas fiat tradicionales.

- **Seguridad e incorruptibilidad**: Gracias a la blockchain, las transacciones de Bitcoin quedan registradas de forma pública y no pueden ser manipuladas.

- **Innovación tecnológica**: Es la aplicación más destacada de la tecnología blockchain, con un enorme impacto potencial a futuro.

- **Potencial de crecimiento**: A pesar de su histórico crecimiento, considero que Bitcoin aún presenta recorrido a largo plazo como reserva de valor alternativa.

- **Diversificación de carteras**: Me interesa especialmente analizar el papel de Bitcoin dentro de una cartera diversificada compuesta por:
  - **S&P 500** → Representa las principales empresas de Estados Unidos.
  - **Oro** → Tradicional activo refugio.
  - **Bitcoin** → Activo digital, descentralizado e independiente de gobiernos.

El objetivo principal de este análisis es comprobar, con datos actualizados hasta abril de 2025, si Bitcoin aporta valor dentro de una cartera diversificada de estos tres activos.

---

## 2. Objetivos del análisis

Este estudio pretende responder a las siguientes preguntas:

- ¿Cómo ha sido el rendimiento y riesgo histórico de Bitcoin comparado con el S&P 500 y el oro?
- ¿Qué impacto tiene añadir Bitcoin a una cartera diversificada?
- ¿Cuál sería la asignación óptima de cada activo para minimizar el riesgo o maximizar el ratio de Sharpe?

---

## 3. Resumen del estudio original (2014-2021)

El estudio original realizado en DataCamp analizó el papel del Bitcoin dentro de una cartera diversificada de 3 activos:

- S&P 500 (acciones EEUU)
- Oro
- Bitcoin

### Objetivo principal del estudio

> *¿Mejora realmente el rendimiento ajustado al riesgo de una cartera tradicional si incluimos Bitcoin?*

### ¿Qué hizo el estudio?

- Exploró precios y rentabilidades históricas de BTC, S&P 500 y oro.
- Analizó volatilidades, drawdowns, Value at Risk (VaR) y ratio de Sharpe.
- Estudió las correlaciones entre activos.
- Analizó la relación de Bitcoin con la inflación.
- Construyó carteras optimizadas usando PyPortfolioOpt:
  - Minimizar volatilidad.
  - Maximizar Sharpe Ratio.

### Resultados principales

| Métrica        | Bitcoin | S&P 500 | Oro    |
|----------------|---------|---------|--------|
| Rentabilidad anual media (CAGR) | ~103%   | ~12,5%  | ~5,4%  |
| Volatilidad anual  | 82,5%   | 14,4%   | 12,6%   |
| Sharpe Ratio       | 1,3     | 0,9     | 0,4     |

- Correlación BTC - S&P 500 → ~0,3 (relación moderada).
- No se encontró evidencia de que BTC cubra contra inflación.
- Cartera de mínima volatilidad → Sin Bitcoin.
- Cartera de máximo Sharpe → ~13% en Bitcoin.
- Solución intermedia conservadora → Incluir 2% Bitcoin para mejorar rentabilidad sin aumentar demasiado el riesgo.

---

## 4. Actualización del análisis hasta abril de 2025

Este repositorio replica exactamente el análisis del estudio original, pero actualizando los datos hasta el **9 de abril de 2025**.

Queremos comprobar si los resultados se mantienen en un periodo más largo y reciente, y si Bitcoin sigue teniendo un papel relevante en una cartera diversificada junto a S&P 500 y oro.

---

## 5. Próximo paso: FTSE All-World

Una vez finalizado este análisis, el siguiente paso será realizar el mismo estudio, pero sustituyendo el índice S&P 500 por el **FTSE All-World**, un índice que representa de forma mucho más completa las bolsas de todo el mundo.

El objetivo será analizar si Bitcoin sigue aportando valor dentro de una cartera más global compuesta por:

- **FTSE All-World** → Acciones globales.
- **Oro** → Refugio tradicional.
- **Bitcoin** → Activo digital, independiente de gobiernos.

---

## 6. Referencias

- [Estudio original en DataCamp](https://www.datacamp.com/datalab/w/21cc7714-89b7-48e4-b1b3-7733e95e536a)
- [PyPortfolioOpt (Martin, R. A., 2021)](https://doi.org/10.21105/joss.03066)
- Datos históricos de inflación: [U.S. Bureau of Labor Statistics](https://www.bls.gov/)
- Datos históricos de mercados financieros: [Yahoo Finance](https://finance.yahoo.com/)

---

## 7. Nota importante

Este análisis está basado en datos históricos y en supuestos simplificados de la teoría moderna de carteras. Por tanto, debe complementarse con análisis cualitativos adicionales y considerar distintos escenarios futuros para la correcta toma de decisiones de inversión.
