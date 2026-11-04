<div align="center">

# 🖧 Racó Hosting

**Nube privada autogestionada · Jellyfin · Minecraft · Almacenamiento**

Proyecto de **Óscar**, alumno de **2º de SMX** (Sistemas Microinformáticos y Redes)

![Estado](https://img.shields.io/badge/estado-en%20servicio-2e9e5b?style=for-the-badge)
![NAS](https://img.shields.io/badge/servidores-2%20NAS%20ASUSTOR-0f6b5c?style=for-the-badge)
![Docker](https://img.shields.io/badge/Docker-contenedores-2496ED?style=for-the-badge&logo=docker&logoColor=white)
![Jellyfin](https://img.shields.io/badge/Jellyfin-streaming-00A4DC?style=for-the-badge&logo=jellyfin&logoColor=white)
![Minecraft](https://img.shields.io/badge/Minecraft-servidor-62B47A?style=for-the-badge)

[🌐 Web del servicio](#-web-del-servicio) · [💶 Tarifas](#-servicios-y-tarifas) · [🏗️ Infraestructura](#️-infraestructura) · [📬 Contacto](#-contacto)

</div>

---

## 📌 Resumen

**Racó Hosting** es un proyecto de alojamiento a pequeña escala montado sobre **dos servidores NAS** que administro en casa. Pongo a disposición de particulares y grupos de amigos parte de su capacidad para tres servicios:

| Servicio | Para qué sirve | Precio |
|---|---|---:|
| 🎬 **Jellyfin** | Tu propio servidor multimedia privado ("Netflix con tu contenido") | **5 €/mes** |
| ⛏️ **Minecraft** | Servidor dedicado 24/7 para tu grupo | **10 €/mes** |
| 💾 **Almacenamiento 1 TB** | Espacio privado para copias, fotos y documentos | **5 – 7 €/mes** |

> Pago mensual, **sin permanencia**. Trato directo con quien administra los servidores.

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

- ✅ Servidor **Java Edition** dedicado a tu grupo, encendido 24/7
- ✅ **Lista blanca**: solo entran los jugadores autorizados
- ✅ **Copia de seguridad diaria** del mundo
- ✅ Plugins o mods bajo petición
- ℹ️ Pensado para grupos pequeños (hasta ~10 jugadores)

### 💾 Almacenamiento — desde 5 €/mes

| Plan | Capacidad | Protección | Precio |
|---|---:|---|---:|
| **Básico** | 1 TB | RAID (tolera el fallo de un disco) | **5 €/mes** |
| **Plus** | 1 TB | RAID + copia en el segundo NAS | **7 €/mes** |

- Carpeta privada con usuario y contraseña propios
- Acceso por web, app o unidad de red

---

## 🏗️ Infraestructura

```mermaid
flowchart TB
    Cliente([👤 Cliente]) -->|Conexión cifrada VPN / túnel| Red
    subgraph Red[🏠 Red local]
        NAS1[🖥️ NAS-01 · ASUSTOR AS5404T<br/>4 bahías<br/>Jellyfin · Docker · VMs]
        NAS2[🗄️ NAS-02 · ASUSTOR AS6806T<br/>6 bahías<br/>Almacenamiento · Copias]
        NAS1 <-->|Copias cruzadas| NAS2
    end
```

| Equipo | Función | Detalles |
|---|---|---|
| **NAS-01** · ASUSTOR AS5404T | Servicios | 4 bahías. Jellyfin, contenedores Docker, máquinas virtuales |
| **NAS-02** · ASUSTOR AS6806T | Almacenamiento | 6 bahías. Espacio de clientes y copias de seguridad |
| **Acceso remoto** | Seguridad | Conexión cifrada (VPN/túnel), sin abrir puertos del router |
| **Protección** | Fiabilidad | RAID + copias periódicas entre ambos NAS |
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

La carpeta [`docs/`](docs/) contiene la página comercial (`index.html`), un único archivo sin dependencias publicado con GitHub Pages en **https://oskillar28.github.io/raco-hosting/** y que también se puede alojar en el NAS.

## 📬 Contacto

¿Te interesa algún servicio? Usa el **formulario de contacto de la web** indicando qué servicio quieres y cuántos usuarios o jugadores seréis. Respondo por correo en menos de 24 horas.

---

<div align="center">

**Racó Hosting** · Proyecto de 2º SMX · 2026

</div>
