# Hercules

The ***Hercules Emulator** is an open-source software that emulates *IBM mainframe* systems. It allows users to run mainframe operating systems, such as *z/OS, z/VM, and z/VSE*, on standard PC hardware, primarily x86 machines. Hercules is primarily used by enthusiasts, researchers, and developers for learning, testing, and legacy application support outside of an actual mainframe environment. **Hercules** is still the main open-source way to emulate IBM System/370, ESA/390, and z/Architecture on ordinary PCs. It *emulates* the CPU and common I/O (CKD/FBA DASD, tape, 3270, card, printer, CTC), **not** a full “*virtual mainframe product*.” You still supply an OS or standalone program and IPL it. In summary, Hercules is a powerful yet accessible tool to emulate IBM mainframes on standard computers. It is ideal for experimentation, education, and practical testing without needing expensive hardware.

## Key Features
- Mainframe Emulation:
- Emulates IBM System/370, ESA/390, and z/Architecture mainframes.
- Supports a variety of peripheral devices, including tape drives, disk storage, printers, and network adapters.

## Open-Source Nature
- Released under the Q Public License (QPL).
- Actively maintained by a community of volunteers.
- Provides full source code access, which allows customization and experimentation.

## Supported Operating Systems
You can run Classic OS (MVS, VM, VSE) or modern mainframe systems (z/OS).

Special support for Linux on IBM Z systems (s390x architecture).

### Cross-Platform Support:
- Runs on Windows, Linux, macOS, and other Unix-like systems.
Some platforms require compiling from source.

Notes:
You must provide your own legal copies of mainframe OS images; Hercules does not include operating systems.
There is an active community and mailing list for support, documentation, and sample configurations.

### Hercules today

There are two lineages people mix up:

- **Classic 3.x** (last official 3.13, 2017). Many distro packages still ship 3.12/3.13.
- **SDL Hercules 4.x Hyperion** — the actively maintained line. Homebrew and current docs point at **4.9.1** (December 2025). This is what you want for new work.

License remains the **Q Public License (QPL)**, not GPL.

## TurboHercules and other “alternatives”

**TurboHercules** was Roger Bowler’s 2009 commercial spin-off. It tried to sell supported Hercules plus IBM OS licenses, ran into IBM licensing, filed (then dropped) an EU complaint, and is not a living product today. Treat it as history, not a current alternative.

There is no widely used second hobby emulator for S/370/ESA/390/z. Academic 3090-style projects exist but are not practical replacements.

## Software you can actually run

Hercules does **not** include IBM operating systems.

- **Legal hobby/public-domain stacks:** OS/360, DOS/360–DOS/VS, VM/370, MVS 3.8j (the well-known “turnkey” distributions), TSS, and Linux for S/390/z.
- **Licensed IBM systems** (z/OS, current z/VM, VSE, etc.) need a proper IBM license. Emulating the hardware does not grant OS rights.

Turnkey MVS 3.8j images are the usual first path: prebuilt DASD, sample `hercules.cnf`, and IPL instructions.

## Install sketch (Linux)

Distro packages are often old 3.x:

```bash
sudo apt update
sudo apt install hercules   # frequently 3.13 on Debian/Ubuntu
```

For current 4.x, build Hyperion from GitHub or use a package that tracks it (e.g. Homebrew `hercules` on macOS is 4.9.1).

Start with a config file:

```bash
hercules -f hercules.cnf
```

Then from the Hercules console: mount volumes if needed and `ipl` the correct device.

## Config notes

The sample in your text is too thin and not valid Hercules syntax. A minimal S/370-style skeleton looks more like:

```text
CPUMODEL   148
ARCHMODE   S/370
MAINSIZE   16
NUMCPU     1
CNSLPORT   3270

# 3270 console
0700 3270

# example CKD DASD — paths and unit addresses must match your images
0120 3350 mvsres.3380
0121 3350 mvs000.3380
```

`CPUMODEL 370` and a bare `DISK 0 ...` line are not how Hercules is configured. Device statements are `cuu type filename` (or `devinit` at runtime). `MAINSIZE 2G` is a z/Architecture-sized machine; classic OS/360/MVS 3.8 want tens of MB, not gigabytes.

`NODELAY` exists as a performance/timing option; use it only if you know why.

## Practical path

1. Install Hyperion 4.x if you can; otherwise 3.13 is still usable for MVS 3.8 / OS/360.
2. Start from a **turnkey** package rather than sysgenning from scratch.
3. Use tn3270 (x3270, wc3270, etc.) to the `CNSLPORT`.
4. IPL the SYSRES address given in that turnkey’s docs.

Hercules is still the right tool for preservation, learning JCL/TSO/MVS internals, and running public-domain mainframe software. The hardware emulator is free; the legal limit is which operating systems you load onto it.

## Use Cases:
- Learning and exploring mainframe architecture and systems.
- Running legacy applications without a physical mainframe.
- Testing, debugging, or migration planning for mainframe software.
- Educational purposes in universities or training programs.

## Resources:
- Hercules [Repository] (http://www.hercules-390.org/)
- https://sdl-hercules-390.github.io/html/
- https://github.com/SDL-Hercules-390/hyperion
