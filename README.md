# Torti — Mi tortuga 🐢💛

PWA de seguimiento de largo plazo para Torti.

## V4 · Super Update

- Torti Score 0–100 de **seguimiento** (no diagnóstico médico)
- Centro de cambios respecto a los registros recientes
- Resumen diario de acciones pendientes
- Curva de crecimiento combinada: peso + largo + ancho
- Comparación por 30 días, 6 meses, 1 año o todo el historial
- Caparazón Timeline con fotografías por ángulo y comparador deslizante antes ↔ ahora
- Nutrición avanzada: calendario de 30 días, variedad, frecuencia, favoritos y repeticiones
- Biblioteca orientativa para `Chelonoidis denticulatus` con recomendados, ocasionales, limitados y alimentos a evitar
- Hábitat inteligente: temperatura, humedad, UVB, agua, sustrato y limpieza
- Gráficas de temperatura y humedad
- Rutinas automáticas con intervalos configurables
- Control visual de salud
- Registro de medicamentos y tratamientos
- Modo veterinario con expediente imprimible / PDF
- Pasaporte de Torti imprimible
- Life Timeline con hitos, primer registro, pesos, aniversarios y cantidad de registros
- Perfil editable
- Respaldo completo JSON e importación
- Conector de sincronización real preparado para Supabase
- Soporte offline como PWA

## Sincronización en la nube

La app no envía datos a terceros por defecto. En **Torti → Respaldo y nube** puedes configurar un proyecto Supabase y una tabla `torti_sync` con `sync_code` único para activar la sincronización. Sin credenciales, los datos continúan guardándose localmente y pueden respaldarse con JSON.

## iPhone

Publica `main` con GitHub Pages. Abre la app en Safari → Compartir → **Añadir a pantalla de inicio**.

> Torti organiza datos y observaciones del cuidador. No diagnostica ni sustituye una evaluación veterinaria profesional.
