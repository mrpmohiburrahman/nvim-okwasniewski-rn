# Neovim Configuration Documentation

Welcome to your personalized Neovim configuration! This document provides a comprehensive overview of the features and keybindings configured to enhance your development experience. Whether you're navigating files, managing Git repositories, or leveraging advanced LSP functionalities, this guide will help you make the most of your Neovim setup.

---

## Table of Contents

1. [File Explorer & Navigation](#file-explorer--navigation)
2. [Git Integration](#git-integration)
3. [Telescope Fuzzy Finder](#telescope-fuzzy-finder)
4. [Status Line](#status-line)
5. [Autocompletion](#autocompletion)
6. [Notifications & UI Enhancements](#notifications--ui-enhancements)
7. [Text Objects & Surroundings](#text-objects--surroundings)
8. [Language Server Protocol (LSP) Configuration](#language-server-protocol-lsp-configuration)
9. [Code Formatting & Highlighting](#code-formatting--highlighting)
10. [Miscellaneous Plugins & Keybindings](#miscellaneous-plugins--keybindings)

---

## File Explorer & Navigation

Efficient file navigation is crucial for productivity. This configuration leverages the `mini.files` plugin to provide a sleek and responsive file explorer, complemented by intuitive keybindings for seamless navigation.

### Features

- **MiniFiles**: A lightweight file explorer that integrates smoothly with Neovim.
- **Split Navigation**: Easily split windows horizontally or vertically while maintaining focus.
- **Keyboard-Centric**: Navigate without leaving the keyboard, enhancing speed and efficiency.

### Keybindings

| Mode | Keybinding | Action | Description |
|------|------------|--------|-------------|
| Normal | `<C-e>` | `MiniFiles.open()` | Opens the MiniFiles explorer for the current buffer. |
| Normal | `gs` | Split horizontally | Splits the window below and opens MiniFiles in the new split. |
| Normal | `gv` | Split vertically | Splits the window to the right and opens MiniFiles in the new split. |
| Normal | `<C-h>` | Move to left window | Moves focus to the left split. |
| Normal | `<C-j>` | Move to lower window | Moves focus to the lower split. |
| Normal | `<C-k>` | Move to upper window | Moves focus to the upper split. |
| Normal | `<C-l>` | Move to right window | Moves focus to the right split. |

### Usage

- **Open File Explorer**: Press `<C-e>` in normal mode to toggle the file explorer.
- **Navigate Splits**: Use `<C-h>`, `<C-j>`, `<C-k>`, `<C-l>` to move between splits seamlessly.
- **Split Windows**: Press `gs` to split the window horizontally or `gv` to split vertically within the file explorer.

---

## Git Integration

Manage your Git repositories directly from Neovim with enhanced features for version control, including Git signs, LazyGit integration, and conflict resolution.

### Features

- **Gitsigns.nvim**: Adds Git signs to the gutter and provides utilities for managing changes.
- **LazyGit.nvim**: Integrates the LazyGit UI for Git operations within Neovim.
- **Git-Conflict.nvim**: Simplifies conflict resolution with intuitive commands.

### Keybindings

| Mode | Keybinding | Action | Description |
|------|------------|--------|-------------|
| Normal | `<leader>gg` | `:LazyGit` | Opens LazyGit for managing Git repositories. |
| Normal | `<leader>gp` | `:Gitsigns preview_hunk` | Previews the current Git hunk. |
| Normal | `<leader>gb` | `:Gitsigns blame_line` | Shows blame information for the current line. |
| Normal | `<leader>ga` | `:Gitsigns blame` | Shows blame information for the entire file. |

### Usage

- **Open LazyGit**: Press `<leader>gg` to launch the LazyGit interface within Neovim.
- **Preview Git Hunk**: Use `<leader>gp` to preview changes in the current hunk.
- **Blame Line**: Press `<leader>gb` to view blame information for the current line.
- **Blame File**: Use `<leader>ga` to see blame information for the entire file.

---

## Telescope Fuzzy Finder

Enhance your search capabilities with Telescope, a highly extendable fuzzy finder over lists. Quickly find files, buffers, help tags, and more with customizable keybindings.

### Features

- **Fuzzy Searching**: Quickly locate files, buffers, help tags, and more with fuzzy matching.
- **Extensions**: Integrates with various extensions like `fzf`, `live_grep_args`, and `ui-select` for enhanced functionality.
- **Custom Keybindings**: Tailored keybindings for different search actions.

### Keybindings

| Mode | Keybinding | Action | Description |
|------|------------|--------|-------------|
| Normal | `<leader>sh` | `Telescope help_tags` | Search Neovim help tags. |
| Normal | `<leader>sb` | `Telescope buffers` | Search open buffers. |
| Normal | `<leader>sk` | `Telescope keymaps` | Search keybindings. |
| Normal | `<leader><leader>` | `Telescope git_files` | Search Git-tracked files. |
| Normal | `<leader>ss` | `Telescope builtin` | Access all Telescope built-in functions. |
| Normal | `<leader>sf` | `Telescope find_files` | Search all files. |
| Normal | `<leader>sw` | `Telescope grep_string` | Search for the current word. |
| Normal | `<leader>sg` | `Telescope live_grep_args` | Live grep with additional arguments. |
| Normal | `<leader>sd` | `Telescope diagnostics` | Search diagnostics. |
| Normal | `<leader>sr` | `Telescope resume` | Resume the last Telescope search. |
| Normal | `<leader>s.` | `Telescope oldfiles` | Search recent files. |
| Normal | `<leader>/` | `Telescope current_buffer_fuzzy_find` | Fuzzy search in the current buffer. |
| Normal | `<leader>s/` | `Telescope live_grep` | Live grep in open files. |
| Normal | `<leader>sn` | `Telescope find_files (Neovim config)` | Search Neovim configuration files. |

### Usage

- **Search Help Tags**: Press `<leader>sh` to open Telescope's help tags search.
- **Find Buffers**: Use `<leader>sb` to list and switch between open buffers.
- **Find Keymaps**: Press `<leader>sk` to search through all keybindings.
- **Search Git Files**: Use `<leader><leader>` to search files tracked by Git.
- **Access Built-ins**: Press `<leader>ss` to explore all Telescope built-in pickers.
- **Find Files**: Use `<leader>sf` to search and open any file.
- **Grep Current Word**: Press `<leader>sw` to search for the word under the cursor.
- **Live Grep with Args**: Use `<leader>sg` for a more refined live grep search.
- **Search Diagnostics**: Press `<leader>sd` to view and navigate diagnostics.
- **Resume Search**: Use `<leader>sr` to resume the last Telescope search.
- **Recent Files**: Press `<leader>s.` to access recently opened files.
- **Fuzzy Find in Buffer**: Use `<leader>/` to perform a fuzzy search within the current buffer.
- **Live Grep in Open Files**: Press `<leader>s/` to grep through open files.
- **Search Neovim Config**: Use `<leader>sn` to search within your Neovim configuration files.

---

## Status Line

Stay informed about your editing session with a minimalist and informative status line provided by `lualine.nvim`.

### Features

- **Customizable Sections**: Tailor which information appears on your status line.
- **Performance Optimized**: Lightweight and fast, ensuring no lag during editing.
- **Integration with Icons**: Displays file type icons when enabled.

### Configuration

- **Filetype Display**: The status line includes the file type in the `lualine_x` section.
- **Theme Support**: Compatible with various color schemes like Catppuccin and Rose Pine.

### Usage

The status line automatically updates to reflect the current file type and other relevant information. No additional keybindings are required.

---

## Autocompletion

Boost your coding efficiency with intelligent autocompletion powered by `nvim-cmp` and `LuaSnip`. Enjoy context-aware suggestions and snippet expansions tailored to your coding language.

### Features

- **nvim-cmp**: A powerful completion engine supporting multiple sources.
- **LuaSnip**: A flexible snippet engine for creating and expanding code snippets.
- **LSP Integration**: Leverage language server capabilities for enhanced suggestions.
- **Custom Mappings**: Intuitive keybindings for navigating and confirming completion suggestions.

### Keybindings

| Mode | Keybinding | Action | Description |
|------|------------|--------|-------------|
| Insert | `<C-n>` | Select next item | Navigate to the next completion suggestion. |
| Insert | `<C-p>` | Select previous item | Navigate to the previous completion suggestion. |
| Insert | `<CR>` | Confirm selection | Accepts the currently selected completion item. |
| Insert | `<C-Space>` | Trigger completion | Manually triggers the completion menu. |
| Insert/Special | `<C-l>` | Expand or jump forward | Expands the snippet or jumps to the next placeholder. |
| Insert/Special | `<C-h>` | Jump backward | Jumps to the previous snippet placeholder. |

### Usage

- **Trigger Autocomplete**: Start typing, and suggestions will appear automatically. Use `<C-n>` and `<C-p>` to navigate through them.
- **Confirm Selection**: Press `<CR>` to accept the highlighted suggestion.
- **Manual Trigger**: Press `<C-Space>` to open the completion menu manually.
- **Snippet Expansion**: Use `<C-l>` to expand snippets or jump to the next placeholder.
- **Snippet Navigation**: Use `<C-h>` to jump to the previous placeholder within a snippet.

---

## Notifications & UI Enhancements

Enhance your Neovim interface with improved notifications, which include better handling of messages, command palettes, and UI selections.

### Plugins

- **Noice.nvim**: Improves Neovim's command and message UI, providing a more modern and user-friendly experience.
- **Which-Key.nvim**: Displays available keybindings in a popup, helping you discover and remember shortcuts.

### Features

- **Enhanced Notifications**: Noice.nvim provides a sleek interface for messages, errors, and other notifications.
- **Keybinding Hints**: Which-Key.nvim displays available keybindings as you type, reducing the need to memorize them.

### Configuration

- **Noice.nvim**:
  - Overrides default LSP and completion documentation views.
  - Custom routes for filtering specific messages.
  - Presets for command palettes and live renaming.
  
- **Which-Key.nvim**:
  - Groups keybindings under descriptive categories for easier discovery.

### Keybindings

- **General**: No specific keybindings; enhancements are integrated into existing workflows.
- **Which-Key.nvim Groups**:
  
  | Prefix | Group | Description |
  |--------|-------|-------------|
  | `<leader>c` | [C]ode | Code-related actions |
  | `<leader>d` | [D]ocument | Document-related actions |
  | `<leader>r` | [R]ename | Rename actions |
  | `<leader>s` | [S]earch | Search-related actions |
  | `<leader>w` | [W]orkspace | Workspace-related actions |
  | `<leader>g` | [G]it | Git-related actions |
  | `<leader>b` | [B]uffers | Buffer-related actions |

### Usage

- **Notifications**: Receive enhanced messages and notifications without disrupting your workflow.
- **Discover Keybindings**: Press any `<leader>` key combination, and Which-Key.nvim will display available keybindings for that prefix.

---

## Text Objects & Surroundings

Manipulate text more intuitively with advanced text objects and surroundings provided by `mini.ai` and `mini.surround`.

### Features

- **Mini.ai**: Enhanced text objects for better selection, including support for custom surroundings.
- **Mini.surround**: Easily add, delete, or replace surrounding characters like parentheses, brackets, quotes, etc.
- **Mini.pairs**: Automatic insertion of matching pairs for brackets, quotes, and more.

### Keybindings

| Mode | Keybinding | Action | Description |
|------|------------|--------|-------------|
| Normal/Visual | `s` | `<Nop>` | Disabled to avoid conflicts; use `Mini.surround` mappings instead. |
| Normal | `saiw)` | Add surrounding parentheses | Adds parentheses around the inner word. |
| Normal | `sd'` | Delete surrounding quotes | Removes surrounding single quotes. |
| Normal | `sr)'` | Replace surrounding parentheses with quotes | Replaces surrounding parentheses with quotes. |

### Usage

- **Add Surrounding**: Use commands like `saiw)` to add surrounding parentheses around a word.
- **Delete Surrounding**: Press `sd'` to remove surrounding single quotes.
- **Replace Surrounding**: Use `sr)'` to replace surrounding parentheses with quotes.
- **Auto-Pairing**: As you type opening brackets or quotes, the corresponding closing character is automatically inserted.

---

## Language Server Protocol (LSP) Configuration

Leverage powerful language server features such as code completion, diagnostics, and more with `nvim-lspconfig`, `mason.nvim`, and related plugins.

### Features

- **LSP Setup**: Configures multiple language servers with automatic installation via Mason.
- **Fidget.nvim**: Displays LSP status updates and progress.
- **Conform.nvim**: Autoformats code on save using configured formatters.
- **Todo-comments.nvim**: Highlights TODO, FIXME, and other annotations in comments.
- **nvim-treesitter**: Enhanced syntax highlighting and code understanding.

### Keybindings

| Mode | Keybinding | Action | Description |
|------|------------|--------|-------------|
| Normal | `gd` | `Telescope lsp_definitions` | Jump to definition of the symbol under the cursor. |
| Normal | `gr` | `Telescope lsp_references` | Find all references to the symbol under the cursor. |
| Normal | `gI` | `Telescope lsp_implementations` | Jump to implementation of the symbol under the cursor. |
| Normal | `<leader>D` | `Telescope lsp_type_definitions` | Jump to type definition. |
| Normal | `<leader>ds` | `Telescope lsp_document_symbols` | List document symbols. |
| Normal | `<leader>ws` | `Telescope lsp_dynamic_workspace_symbols` | List workspace symbols. |
| Normal | `<leader>rn` | `vim.lsp.buf.rename` | Rename symbol under cursor. |
| Normal | `<leader>ca` | `vim.lsp.buf.code_action` | Open code actions menu. |
| Normal | `K` | `vim.lsp.buf.hover` | Show hover documentation. |
| Normal | `gD` | `vim.lsp.buf.declaration` | Jump to declaration. |

### Usage

- **Navigate Definitions**: Press `gd` to jump to where a function or variable is defined.
- **Find References**: Use `gr` to list all references to a symbol across your project.
- **Implementations**: Press `gI` to navigate to implementations of an interface or abstract method.
- **Rename Symbols**: Use `<leader>rn` to rename a symbol, with changes propagated across your project.
- **Code Actions**: Press `<leader>ca` to access context-aware code actions, such as refactoring or fixing issues.
- **Hover Documentation**: Press `K` to view documentation for the symbol under the cursor.
- **Declaration**: Use `gD` to jump to the declaration of a symbol.

---

## Code Formatting & Highlighting

Maintain consistent code style and enhance readability with automated formatting and syntax highlighting.

### Features

- **Conform.nvim**: Automatically formats code on save using configured formatters like `stylua`.
- **Todo-comments.nvim**: Highlights and manages TODOs, FIXMEs, and other annotations in comments.
- **nvim-treesitter**: Provides advanced syntax highlighting and code structure understanding.
- **UFO.nvim**: Enhances code folding capabilities with support for LSP-based folding.

### Configuration

- **Conform.nvim**:
  - **Formatters**: Configured to use `stylua` for Lua files.
  - **Automatic Formatting**: Formats code upon saving a buffer.
  
- **nvim-treesitter**:
  - **Languages**: Configured for languages like Bash, C, HTML, Lua, Markdown, Vim, and Vimscript.
  - **Features**: Enables syntax highlighting, indentation, and incremental parsing.
  
- **UFO.nvim**:
  - **Folding Ranges**: Configures folding ranges to be provided by LSP servers.

### Usage

- **Autoformat on Save**: Simply save your file (`:w`), and `conform.nvim` will format it automatically.
- **Syntax Highlighting**: Enjoy enhanced syntax highlighting powered by Treesitter. Supported languages are highlighted with precision.
- **Code Folding**: Use standard Neovim folding commands enhanced by UFO.nvim for smoother code navigation.

---

## Miscellaneous Plugins & Keybindings

Enhance your Neovim experience with additional plugins that provide utilities like commenting, dynamic UI elements, and more.

### Features

- **Comment.nvim**: Easily comment and uncomment code blocks.
- **Dressing.nvim**: Improves the UI for Neovim's built-in `vim.ui` functions.
- **Startup.nvim**: Customizes the startup screen with quick access to recent files and projects.
- **Quicker.nvim**: Enhances the quickfix window for better navigation and usability.
- **MiniFiles Split Customizations**: Custom keybindings for splitting windows within MiniFiles.

### Keybindings

| Mode | Keybinding | Action | Description |
|------|------------|--------|-------------|
| Normal | `<leader>S` | `Spectre.toggle()` | Toggles the Spectre search and replace interface. |
| Normal | `<leader>sw` | `Spectre.open_visual({select_word=true})` | Opens Spectre to search the current word. |
| Visual | `<leader>sw` | `Spectre.open_visual()` | Opens Spectre to search the selected text. |
| Normal | `<leader>sp` | `Spectre.open_file_search({select_word=true})` | Searches within the current file using Spectre. |
| Normal | `s` | `<Nop>` | Disabled to prevent conflicts; use alternative surround commands. |

### Usage

- **Toggle Spectre**: Press `<leader>S` to open or close the Spectre search and replace interface.
- **Search Current Word**: Use `<leader>sw` to search for the word under the cursor using Spectre.
- **Search Selected Text**: In visual mode, select text and press `<leader>sw` to search using Spectre.
- **Search Current File**: Press `<leader>sp` to perform a search within the current file.
- **Commenting**: Use `gc` followed by a motion or in visual mode to comment/uncomment code blocks.
- **Startup Screen**: On launching Neovim, Startup.nvim provides a customizable startup screen with quick access to recent files and projects.

---

## Summary

This Neovim configuration is designed to provide a robust and efficient development environment. By leveraging a suite of powerful plugins and intuitive keybindings, you can navigate files, manage Git repositories, utilize intelligent autocompletion, and much more—all within the comfort of Neovim.

Feel free to customize and extend this setup to suit your personal workflow and preferences. Happy coding!

---

## Additional Resources

- **Neovim Documentation**: `:help` within Neovim provides comprehensive documentation for all features.
- **Plugin Repositories**: Explore each plugin's repository for more detailed information and advanced configurations.
- **Community Forums**: Engage with the Neovim community on platforms like GitHub, Reddit, and Discord for support and ideas.

---

*This documentation was generated based on the provided Neovim configuration and aims to serve as a quick reference guide to its features and keybindings.*