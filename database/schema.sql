-- Creacion de Base de datos
DROP DATABASE IF EXISTS mrp_inventory_project;
CREATE DATABASE mrp_inventory_project;
USE mrp_inventory_project;

-- Tabla de Dimensiones: Productos e Información del Proveedor
CREATE TABLE productos (
    id_producto VARCHAR(20) PRIMARY KEY,
    nombre_producto VARCHAR(100),
    categoria VARCHAR(50),
    consumo_diario_promedio DECIMAL(10,2), -- Cantidad promedio usada por día
    lead_time INT,            -- Días que tarda el proveedor en entregar
    desviacion_demanda FLOAT      -- Variabilidad en el consumo (para el Stock de Seguridad)
);

-- Tabla de Hechos: Estado Actual del Inventario
CREATE TABLE inventario (
    id_producto VARCHAR(20) PRIMARY KEY,
    stock INT,
    cantidad_en_camino INT,        -- Órdenes ya emitidas al proveedor
    costo_unitario FLOAT,
    FOREIGN KEY (id_producto) REFERENCES productos(id_producto) -- Garantiza que el producto exista
);