# Brotea Scripts

Este repositorio contiene scripts de utilidad para el ecosistema Brotea, diseñados para automatizar tareas comunes y mejorar los flujos de trabajo.

## Scripts Disponibles

### convert_to_webp.sh

Script para convertir imágenes JPG y PNG a formato WebP, manteniendo la estructura de directorios original.

#### Funcionalidad

- Convierte todas las imágenes JPG y PNG de un directorio fuente a formato WebP
- Preserva la estructura de directorios original en el directorio de destino
- Utiliza una calidad de compresión del 80% para un buen equilibrio entre tamaño y calidad

#### Uso

```bash
./convert_to_webp.sh
```

#### Configuración

El script está configurado con las siguientes rutas por defecto:

- **Directorio fuente**: `/Users/cristhianrodriguez/repositories/brotea_workspace/brotea-resources`
- **Directorio destino**: `/Users/cristhianrodriguez/repositories/brotea_workspace/brotea-resources-webp`

Para modificar estas rutas, edita las variables `SOURCE_DIR` y `DEST_DIR` al inicio del script.

#### Requisitos

- Requiere la herramienta `cwebp` para la conversión de imágenes. Puedes instalarla con:
  ```bash
  # En macOS con Homebrew
  brew install webp
  
  # En Ubuntu/Debian
  sudo apt-get install webp
  ```

## Contribución

Para contribuir a este repositorio:

1. Crea un fork del repositorio
2. Crea una rama para tu funcionalidad (`git checkout -b feature/nueva-funcionalidad`)
3. Realiza tus cambios y haz commit (`git commit -am 'Añadir nueva funcionalidad'`)
4. Haz push a la rama (`git push origin feature/nueva-funcionalidad`)
5. Crea un Pull Request

## Licencia

Este proyecto está licenciado bajo la Licencia MIT - ver el archivo LICENSE para más detalles.