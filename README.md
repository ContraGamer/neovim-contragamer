# Configuración de Neovim

Esta es mi configuración personal de Neovim basada en **lazy.nvim**.

## Instalación de Neovim

1. Instala Neovim (versión 0.9 o superior). En sistemas basados en Debian se puede ejecutar:
   ```sh
   sudo apt install neovim
   ```
   Consulta la documentación de tu distribución para otros métodos.
   En macOS se recomienda usar [iTerm2](https://iterm2.com) como terminal y se puede instalar Neovim con Homebrew:
   ```sh
   brew install neovim
   ```
   En Windows se recomienda usar Windows Terminal y descargar la versión oficial y coloca la configuración en `%LOCALAPPDATA%\nvim` (puedes crear un enlace con `mklink` o copiar los archivos).

2. Clona este repositorio en la ubicación que prefieras y enlaza el archivo `init.lua` en `~/.config/nvim`:
   ```sh
   git clone <URL-del-repo> ~/neovim-contragamer
   mkdir -p ~/.config/nvim
   ln -s ~/neovim-contragamer/init.lua ~/.config/nvim/init.lua
   ln -s ~/neovim-contragamer/lua ~/.config/nvim/lua
   ```
   Esta ruta se aplica tanto a macOS como a Linux.
   Al abrir Neovim por primera vez se descargarán automáticamente los plugins.

## Dependencias

Algunos complementos requieren utilidades externas como:

- `git` y `curl` para la gestión de plugins.
- `ripgrep` para las búsquedas con Telescope.
- `make` y un compilador (por ejemplo `gcc`) para compilar extensiones nativas.
- `node` o `npm` para algunos servidores de lenguaje.

Puedes actualizar todos los plugins instalados ejecutando `:Lazy update` dentro de Neovim.

## Plugins principales

- **nvim-tree**: explorador de archivos (`<leader>ee` para alternar).
- **telescope.nvim**: búsquedas y fuzzy finder (`<leader>ff`, `<leader>fs`).
- **nvim-cmp** junto con **LSP** a través de **mason.nvim** y **lspconfig** para autocompletado y diagnosticos.
- **nvim-treesitter**: resaltado de sintaxis avanzado y selección incremental.
- **lualine** y **bufferline**: barra de estado y pestañas.
- **todo-comments**: resaltado de TODO y navegación (`[t`, `]t`).
- **which-key**: muestra sugerencias de atajos.
- **vim-maximizer**, **auto-session**, **substitute** y otros pequeños complementos.

## Atajos destacados

- `jk` en modo inserción para salir rápidamente.
- `<leader>sv` / `<leader>sh` para dividir la ventana vertical u horizontal.
- `<leader>nh` para limpiar la búsqueda.
- `<leader>ee` para el explorador de archivos de nvim-tree.
- `<leader>ff` para buscar archivos con Telescope.
- `<leader>wr` y `<leader>ws` para restaurar o guardar sesiones.
- Comandos LSP como `gd`, `gD`, `K` y `<leader>rn` al trabajar con lenguajes soportados.

¡Disfruta de Neovim!
