<div align="center">

# 🖧 Racó Hosting

**Nube privada autogestionada · Jellyfin · Minecraft · Almacenamiento**

Proyecto de **Óscar**, alumno de **2º de SMX** (Sistemas Microinformáticos y Redes)

**🇪🇸 Español** · [🇬🇧 English](README.en.md)

![Estado](https://img.shields.io/badge/estado-proyecto%20de%20demostraci%C3%B3n-e08a00?style=for-the-badge)
![NAS](https://img.shields.io/badge/servidores-2%20NAS%20ASUSTOR-0f6b5c?style=for-the-badge)
![Docker](https://img.shields.io/badge/Docker-contenedores-2496ED?style=for-the-badge&logo=docker&logoColor=white)
![Imagen Docker](https://img.shields.io/badge/ghcr.io-imagen%20web-2496ED?style=for-the-badge&logo=docker&logoColor=white)
![Jellyfin](https://img.shields.io/badge/Jellyfin-streaming-00A4DC?style=for-the-badge&logo=jellyfin&logoColor=white)
![Minecraft](https://img.shields.io/badge/Minecraft-servidor-62B47A?style=for-the-badge)
![Espacio disponible](https://img.shields.io/badge/dynamic/json?url=https%3A%2F%2Fraw.githubusercontent.com%2FOskillar28%2Fraco-hosting%2Fmain%2Fdocs%2Fcapacidad.json&query=%24.disponible_tb&suffix=%20TB&label=espacio%20disponible&color=e08a00&style=for-the-badge&cacheSeconds=300)

[🌐 Web del servicio](https://oskillar28.github.io/raco-hosting/) · [💶 Tarifas](#-servicios-y-tarifas) · [🏗️ Infraestructura](#️-infraestructura) · [📬 Contacto](#-contacto)

</div>

---

## 📌 Resumen

**Racó Hosting** es un proyecto de alojamiento a pequeña escala montado sobre **dos servidores NAS** que administro en casa. Pongo a disposición de particulares y grupos de amigos parte de su capacidad para tres servicios:

| Servicio | Para qué sirve | Precio |
|---|---|---:|
| 🎬 **Jellyfin** | Tu propio servidor multimedia privado ("Netflix con tu contenido") | **5 €/mes** |
| ⛏️ **Minecraft** | Servidor 24/7 para tu grupo, **16 GB de RAM y mods** | **10 €/mes** |
| 💾 **Almacenamiento 1–16 TB** | Espacio privado para copias, fotos y documentos | **desde 2,99 €/mes** |

> 🧪 **Proyecto de demostración, no comercial.** De momento no se contrata ni se cobra ningún servicio; los precios son orientativos.

---

## 👨‍🎓 Sobre mí

Estudio **2º de SMX** y llevo a la práctica lo que aprendo en clase con un laboratorio propio: redes, Linux, virtualización, contenedores y copias de seguridad. Este proyecto demuestra competencias del ciclo en un entorno real con usuarios reales:

- Administración de **sistemas operativos en red** (Linux, ADM de ASUSTOR)
- **Servicios en red**: streaming, servidores de juego, compartición de archivos
- **Seguridad informática**: acceso remoto cifrado, usuarios y permisos, copias de seguridad
- **Virtualización y contenedores**: Docker y VirtualBox

---

## 💶 Servicios y tarifas

### 🎬 Jellyfin — 5 €/mes

**¿Qué es?** [Jellyfin](https://jellyfin.org) es un software libre y gratuito que convierte un servidor en tu propio servicio de streaming. Organiza películas, series, música y fotos, descarga portadas y sinopsis, recuerda por dónde te quedaste y lo reproduce en cualquier dispositivo.

**¿Qué incluye?**
- ✅ Cuenta personal en el servidor Jellyfin
- ✅ Apps para Smart TV, Android, iOS y navegador web
- ✅ Acceso desde fuera de casa mediante conexión cifrada
- ✅ Sin anuncios y sin suscripciones de terceros

**Cómo funciona:**

```mermaid
flowchart LR
    A[📁 Subes tu contenido] --> B[🗂️ Jellyfin lo organiza]
    B --> C[📺 Smart TV]
    B --> D[📱 Móvil]
    B --> E[💻 Navegador]
```

> ⚠️ El servicio es **el servidor**, no el contenido. Cada cliente sube material sobre el que tiene derechos de uso. No se venden ni comparten películas ni series.

### ⛏️ Servidor de Minecraft — 10 €/mes

- ✅ **16 GB de RAM** para tu servidor, encendido 24/7
- ✅ **Mods y modpacks incluidos**: te los instalo yo
- ✅ **Copia de seguridad diaria** del mundo
- ✅ **Trato directo en castellano**: hablas con quien administra el servidor
- ✅ **Java Edition** con lista blanca: solo entran los jugadores autorizados
- ℹ️ Pensado para grupos de hasta ~10 jugadores

> 💡 **16 GB por 10 €** son **0,63 € por GB**: la mayoría de servicios cobra entre 1 y 3 € por GB.

### 💾 Almacenamiento — desde 2,99 €/mes

**Capacidad para alquilar (se actualiza en tiempo real):**

![Disponible](https://img.shields.io/badge/dynamic/json?url=https%3A%2F%2Fraw.githubusercontent.com%2FOskillar28%2Fraco-hosting%2Fmain%2Fdocs%2Fcapacidad.json&query=%24.disponible_tb&suffix=%20TB&label=disponible&color=2e9e5b&style=for-the-badge&cacheSeconds=300)
![Alquilado](https://img.shields.io/badge/dynamic/json?url=https%3A%2F%2Fraw.githubusercontent.com%2FOskillar28%2Fraco-hosting%2Fmain%2Fdocs%2Fcapacidad.json&query=%24.alquilado_tb&suffix=%20TB&label=alquilado&color=e08a00&style=for-the-badge&cacheSeconds=300)
![Total](https://img.shields.io/badge/dynamic/json?url=https%3A%2F%2Fraw.githubusercontent.com%2FOskillar28%2Fraco-hosting%2Fmain%2Fdocs%2Fcapacidad.json&query=%24.total_tb&suffix=%20TB&label=total%20para%20alquilar&color=0f6b5c&style=for-the-badge&cacheSeconds=300)

| Espacio | Precio | Con copia en el 2.º NAS | € por TB |
|---:|---:|---:|---:|
| **1 TB** | **2,99 €/mes** | 4,99 €/mes | 2,99 € |
| **2 TB** | **4,99 €/mes** | 6,99 €/mes | 2,50 € |
| **8 TB** | **14,99 €/mes** | 16,99 €/mes | 1,87 € |
| **16 TB** ⭐ | **24,99 €/mes** | 26,99 €/mes | 1,56 € |

- Todos los planes en **RAID 5** (aguanta el fallo de un disco).
- **Copia en el segundo NAS:** +2 €/mes en cualquier tamaño.

- Carpeta privada con usuario y contraseña propios
- Acceso por web, app o unidad de red

---

## 🏗️ Infraestructura

```mermaid
flowchart TB
    Cliente([👤 Cliente]) -->|Conexión cifrada VPN / túnel| Red
    subgraph Red[🏠 Red local]
        NAS1[🖥️ NAS-01 · ASUSTOR AS5404T<br/>4 × 18 TB · 10 TB para alquilar<br/>Jellyfin · Docker · VMs]
        NAS2[🗄️ NAS-02 · ASUSTOR AS6806T<br/>6 × 24 TB · RAID 5 · 80 TB para alquilar<br/>Almacenamiento · Copias]
        NAS1 <-->|Copias cruzadas| NAS2
    end
```

| Equipo | Función | Detalles |
|---|---|---|
| **NAS-01** · ASUSTOR AS5404T | Servicios | 4 discos de 18 TB. Jellyfin, contenedores Docker, máquinas virtuales. **10 TB para alquilar** |
| **NAS-02** · ASUSTOR AS6806T | Almacenamiento | 6 discos de 24 TB en RAID 5. Espacio de clientes y copias de seguridad. **80 TB para alquilar** |
| **Acceso remoto** | Seguridad | Conexión cifrada (VPN/túnel), sin abrir puertos del router |
| **Protección** | Fiabilidad | Volumen en RAID 5 (aguanta el fallo de un disco) + copias periódicas entre ambos NAS |
| **SAI** | Energía | Aguanta cortes breves de luz y apaga los NAS de forma segura si el corte se alarga |

---

## 🔒 Seguridad y privacidad

- Cada cliente tiene **usuario y carpeta propios**; nadie más accede a sus datos.
- Los servicios se ejecutan en **contenedores aislados**.
- El acceso desde internet va siempre por **conexión cifrada**.
- Al darte de baja, puedes **descargar todos tus datos** antes de que se borren.

## ⚖️ Condiciones

- Entorno doméstico: puede haber cortes puntuales de luz o conexión. Los mantenimientos se avisan con antelación.
- Pago mensual por Bizum o transferencia, sin permanencia.
- Prohibido almacenar o compartir contenido ilegal o sin derechos.

---

## 🌐 Web del servicio

### 👉 [Visitar la web de Racó Hosting](https://oskillar28.github.io/raco-hosting/)

[![Web de Racó Hosting](docs/captura-web.jpg)](https://oskillar28.github.io/raco-hosting/)

**https://oskillar28.github.io/raco-hosting/** · Versión en inglés: **https://oskillar28.github.io/raco-hosting/en/**

## 🐳 Desplegar con Docker

La web también se publica como imagen Docker en **GitHub Packages**, lista para ejecutarse en cualquier NAS o servidor con Docker:

```bash
docker run -d -p 8080:80 --name raco-web --restart unless-stopped ghcr.io/oskillar28/raco-hosting:latest
```

Después se abre en `http://IP-DEL-NAS:8080` (castellano) o `http://IP-DEL-NAS:8080/en/` (inglés). Para actualizarla:

```bash
docker pull ghcr.io/oskillar28/raco-hosting:latest && docker rm -f raco-web && docker run -d -p 8080:80 --name raco-web --restart unless-stopped ghcr.io/oskillar28/raco-hosting:latest
```

La imagen (nginx + la web) se construye y publica automáticamente con GitHub Actions cada vez que cambia la web.

## 📬 Contacto

¿Te interesa algún servicio? Apúntate a la **[lista de interesados de la web](https://oskillar28.github.io/raco-hosting/#contacto)**. No se cobra nada: te aviso por correo si el servicio se pone en marcha.

---

<details>
<summary>🛠️ Administración: actualizar el contador de espacio</summary>

El contador de la web y las insignias de este README leen el archivo [`docs/capacidad.json`](docs/capacidad.json).

**Forma rápida (sin editar archivos):**
1. Pestaña **Actions** → **Actualizar espacio alquilado** → **Run workflow**.
2. Elige `alquilar` o `liberar` y escribe los TB (por ejemplo `1`).
3. Pulsa **Run workflow**. En unos minutos se actualizan la web y el README.

El proceso no deja alquilar más de lo que queda libre ni liberar más de lo alquilado.

</details>

<div align="center">

**Racó Hosting** · Proyecto de 2º SMX · 2026

</div>
