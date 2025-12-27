# 🛡️ CEH Quiz Master - PWA

Aplicación Progressive Web App para practicar el examen de Certified Ethical Hacker.

## 📱 Instalar en Android

### Opción 1: GitHub Pages (Recomendado)

1. **Sube los archivos a tu repositorio GitHub**
   ```
   ceh-quiz-pwa/
   ├── index.html
   ├── manifest.json
   ├── sw.js
   ├── icon-192.png
   └── icon-512.png
   ```

2. **Activa GitHub Pages**
   - Ve a tu repositorio → Settings → Pages
   - Source: Deploy from a branch
   - Branch: main / (root)
   - Save

3. **Accede desde tu Android**
   - Abre Chrome en tu teléfono
   - Ve a: `https://tu-usuario.github.io/tu-repo/`
   - Aparecerá un banner "Instalar App" o ve al menú ⋮ → "Añadir a pantalla de inicio"

### Opción 2: Netlify (Gratis)

1. Ve a [netlify.com](https://netlify.com)
2. Arrastra la carpeta `ceh-quiz-pwa` al área de deploy
3. ¡Listo! Tendrás una URL como `https://nombre-random.netlify.app`

### Opción 3: Servidor local (para pruebas)

```bash
# Con Python
cd ceh-quiz-pwa
python -m http.server 8080

# Con Node.js
npx serve ceh-quiz-pwa
```

Luego accede desde tu teléfono (misma red WiFi): `http://192.168.x.x:8080`

## ✨ Características

- ✅ **Funciona offline** - Una vez cargada, no necesita internet
- ✅ **Instalable** - Se añade al home screen como app nativa
- ✅ **Pantalla completa** - Sin barra del navegador
- ✅ **Sincronización GitHub** - Actualiza preguntas desde tu repo
- ✅ **Respuestas expandibles** - Tooltips para textos largos
- ✅ **Timer por pregunta** - Controla tu tiempo
- ✅ **Importar/Exportar JSON** - Backup de tus preguntas

## 📁 Estructura del proyecto

```
ceh-quiz-pwa/
├── index.html      # App principal (React)
├── manifest.json   # Configuración PWA
├── sw.js          # Service Worker (offline)
├── icon-192.png   # Icono pequeño
└── icon-512.png   # Icono grande
```

## 🔄 Sincronización con GitHub

1. Crea un archivo `sample_questions.json` en tu repo
2. En la app, ve a ⚙️ Configuración
3. Ingresa la URL: `https://github.com/tu-usuario/tu-repo`
4. Presiona "Sincronizar"

### Formato del JSON

```json
[
  {
    "id": 1,
    "question": "¿Tu pregunta aquí?",
    "category": "Scanning",
    "answers": [
      { "text": "Respuesta A", "isCorrect": true, "justification": "Explicación..." },
      { "text": "Respuesta B", "isCorrect": false, "justification": null }
    ],
    "multipleCorrect": false
  }
]
```

## 🎨 Personalización

### Cambiar colores
Edita las variables CSS en `index.html`:
```css
:root {
  --accent: #007aff;      /* Color principal */
  --success: #34c759;     /* Correcto */
  --error: #ff3b30;       /* Incorrecto */
}
```

### Cambiar iconos
Reemplaza `icon-192.png` y `icon-512.png` con tus propios iconos.

## 📝 Notas

- La app guarda todo en `localStorage` del navegador
- Los datos se mantienen aunque cierres la app
- Para resetear: Borrar datos del sitio en Chrome

---

¡Buena suerte en tu examen CEH! 🎓
