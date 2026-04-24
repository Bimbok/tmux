### **Prefix & Global**

| Key Combination    | Action         | Type   |
| :----------------- | :------------- | :----- |
| **`Ctrl + Space`** | **Prefix Key** | Global |
| `Prefix + r`       | reload         | Prefix |

### **Pane Management & Navigation**

| Key Combination     | Action                                     | Type      |
| :------------------ | :----------------------------------------- | :-------- |
| `Alt + h`           | Select Left Pane                           | No-Prefix |
| `Alt + j`           | Select Down Pane                           | No-Prefix |
| `Alt + k`           | Select Up Pane                             | No-Prefix |
| `Alt + l`           | Select Right Pane                          | No-Prefix |
| `Alt + Left Arrow`  | Select Left Pane                           | No-Prefix |
| `Alt + Right Arrow` | Select Right Pane                          | No-Prefix |
| `Alt + Up Arrow`    | Select Up Pane                             | No-Prefix |
| `Alt + Down Arrow`  | Select Down Pane                           | No-Prefix |
| `Prefix + "`        | Horizontal Split (keeps current directory) | Prefix    |
| `Prefix + %`        | Vertical Split (keeps current directory)   | Prefix    |

### **Window Management & Navigation**

| Key Combination       | Action                          | Type                |
| :-------------------- | :------------------------------ | :------------------ |
| `Shift + Left Arrow`  | Previous Window                 | No-Prefix           |
| `Shift + Right Arrow` | Next Window                     | No-Prefix           |
| `Alt + H`             | Previous Window                 | No-Prefix           |
| `Alt + L`             | Next Window                     | No-Prefix           |
| `Alt + 1` through `9` | Switch to Window 1 to 9         | No-Prefix           |
| `Prefix + <`          | Swap/Move Window Left           | Prefix (Repeatable) |
| `Prefix + >`          | Swap/Move Window Right          | Prefix (Repeatable) |
| `Prefix + .`          | Move window to a specific index | Default Prefix      |

### **Copy Mode (Vi-Style)**

_Note: To enter this mode, use the default `Prefix + [`._

| Key Combination | Action                             | Mode         |
| :-------------- | :--------------------------------- | :----------- |
| `v`             | Begin Selection (Visual Mode)      | Copy-Mode-Vi |
| `Ctrl + v`      | Rectangle Toggle (Block Selection) | Copy-Mode-Vi |
| `y`             | Copy Selection and Cancel (Yank)   | Copy-Mode-Vi |

### **Plugin Specific**

| Key Combination    | Action                     | Plugin   |
| :----------------- | :------------------------- | :------- |
| `Prefix + o`       | Open Session Manager (fzf) | SessionX |
| `Prefix + P`       | Open Floax Menu            | Floax    |
| `Prefix + u`       | Open URL search (fzf)      | FZF-URL  |
| `Prefix + I`       | Install Plugins            | TPM      |
| `Prefix + U`       | Update Plugins             | TPM      |
| `Prefix + Alt + u` | Uninstall removed plugins  | TPM      |
