USE mrp_inventory_project;
UPDATE inventario
SET stock = CASE id_producto
    WHEN 'MAT-001' THEN 3  -- Resina Epóxica
    WHEN 'MAT-002' THEN 5  -- Dióxido de Titanio
    WHEN 'MAT-004' THEN 2  -- Aditivo Antiespumante
    WHEN 'MAT-005' THEN 8  -- Carga Carbonato de Calcio
    WHEN 'MAT-011' THEN 4  -- Resina Poliuretánica
    WHEN 'MAT-012' THEN 7  -- Pigmento Azul
    WHEN 'MAT-014' THEN 1  -- Aditivo Dispersante
    WHEN 'MAT-016' THEN 6  -- Catalizador Isocianato
END
WHERE id_producto IN (
    'MAT-001', 'MAT-002', 'MAT-004', 'MAT-005', 
    'MAT-011', 'MAT-012', 'MAT-014', 'MAT-016'
);