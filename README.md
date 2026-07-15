# 🏭 Sistema de Control de Abastecimiento y Materiales (MRP) | MySQL & Power BI

[![MySQL](https://img.shields.io/badge/MySQL-00758F?style=flat-square&logo=mysql&logoColor=white)](https://www.mysql.com)
[![Power BI](https://img.shields.io/badge/Power_BI-Dashboard-F2C811?style=flat-square&logo=power-bi&logoColor=black)](https://powerbi.microsoft.com)
[![Status](https://img.shields.io/badge/Status-Completado-brightgreen?style=flat-square)](#)

Este proyecto simula y resuelve uno de los mayores dolores de cabeza en la gestión de manufactura y plantas industriales: **el riesgo de detener líneas de producción por falta de insumos o materias primas críticas (quiebres de stock), y los altos costos de almacenamiento por exceso de inventario.**

A través de una arquitectura robusta que conecta una base de datos en **MySQL** con un modelo analítico en **Power BI**, el sistema calcula de forma dinámica los Puntos de Pedido (ROP), Inventarios de Seguridad (IS) y genera alertas visuales en tiempo real para que el departamento de compras y planeación de la producción actúe de inmediato.

---

## Vista Previa del Dashboard

<p align="center">
  <img src="reports/dahsboard-preview.gif" alt="Demo interactiva del Dashboard" width="100%">
</p>

---

## El Problema de Negocio (Caso de Estudio Industrial)
Una planta de manufactura mediana sufre constantes paros en sus líneas de producción debido a:
1. **Retrasos de proveedores:** Falta de un colchón de seguridad que amortigüe variaciones en los tiempos de entrega (*Lead Times*).
2. **Dinero congelado en almacén:** Exceso de compras de materias primas de baja rotación que quitan espacio físico en la planta.
3. **Falta de automatización:** El planificador de producción pasa más de 10 horas semanales cruzando inventarios manuales en hojas de Excel para saber qué pedir al proveedor.

---

## Arquitectura de la Solución
El proyecto se diseñó utilizando un flujo de datos profesional, garantizando la escalabilidad y el rendimiento:

```text
[ Base de Datos MySQL ]  ──(Consultas de Limpieza)──>  [ Power BI / Power Query ]  ──(Modelo de datos/DAX)──>  [ Dashboard Interactivo ]
