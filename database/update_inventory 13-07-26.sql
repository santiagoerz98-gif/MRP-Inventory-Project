USE mrp_inventory_project;
-- Caso A: Simular consumo masivo (Bajamos el stock críticamente para forzar alertas en Power BI)
UPDATE inventario 
SET stock = 120, cantidad_en_camino = 800
WHERE id_producto = 'MAT-002'; -- Pigmento Dióxido de Titanio

UPDATE inventario 
SET stock = 90
WHERE id_producto = 'MAT-004'; -- Aditivo Antiespumante

-- Caso B: Simular recepción de mercancía (Llegó el camión: sube el stock físico y se limpia el camino)
UPDATE inventario 
SET stock = stock + cantidad_en_camino, -- El tránsito pasa a ser stock físico
    cantidad_en_camino = 0
WHERE id_producto = 'MAT-003'; -- Solvente Xileno Técnico

-- Caso C: Actualización general de costos por inflación o renegociación
UPDATE inventario 
SET costo_unitario = 4.85 
WHERE id_producto = 'MAT-001';