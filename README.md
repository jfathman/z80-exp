## z80-exp ##

Experiment with CP/M 2.2 running on Z80.

Uses kermit to transfer files between Z80 CP/M disk and FreeBSD host.

Host platform:

  * FreeBSD 13 VM (VirtualBox / Windows 10)
  * Sabrent 4-Port USB 3.0 Hub
  * YP-05 FTDI USB Serial Adapters
  * /dev/ttyU0 SC125 Port A console
  * /dev/ttyU1 SC125 Port B kermit
  * minicom 2.7.1
  * kermit 9.0.305

Z80 platform:

  * SC128 MODULAR BACKPLANE (Z50BUS)
  * SC118 Z80 PROCESSOR CARD (Z50BUS)
  * SC127 COMPACT FLASH (Z50BUS)
  * SC125 SERIAL CARD (Z50BUS)
  * SC506 DIGITAL I/O (Z50BUS)
  * SC144 RTC & I2C CARD (Z50BUS)
  * Verbatim 4 GB CompactFlash Card
  * SCM F1 Firmware for SC118 Z80
  * CP/M 2.2 installed on CompactFlash
  * kerm411

Run minicom on FreeBSD and connect to Z80 platform:

    jfathman@freebsd:~/work/git/z80-exp $ ./minicom.sh
    Welcome to minicom 2.7.1
    OPTIONS: I18n 
    Compiled on Nov  7 2021, 16:39:57.
    Port /dev/ttyU0, 16:30:35
    Press CTRL-A Z for help on special keys

    Small Computer Monitor - Z50Bus
    *cpm
    Z50Bus CP/M BIOS 1.2 by G. Searle 2007-19

    CP/M 2.2 Copyright 1979 (c) by Digital Research
    A>

Assembler commands:

    B>A:Z80ASM LEDON/AFSX
    Z80 ASSEMBLER Copyright (C) 1983 by SLR Systems Rel. 1.30 #F10268
     LEDON/AFSX
    End of file Pass 1
    End of file Pass 2
     0 Error(s) Detected.
     5 Absolute Bytes. 0 Symbols Detected.

    B>DIR LEDON.*
    B: LEDON    COM : LEDON    LST : LEDON    Z80

    B>A:Z80ASM LEDOFF/AFSX
    Z80 ASSEMBLER Copyright (C) 1983 by SLR Systems Rel. 1.30 #F10268
     LEDOFF/AFSX
    End of file Pass 1
    End of file Pass 2
     0 Error(s) Detected.
     5 Absolute Bytes. 0 Symbols Detected.

    B>DIR LEDOFF.*
    B: LEDOFF   COM : LEDOFF   LST : LEDOFF   Z80

    B>A:Z80ASM LEDCOUNT/AFSX
    Z80 ASSEMBLER Copyright (C) 1983 by SLR Systems Rel. 1.30 #F10268
     LEDCOUNT/AFSX
    End of file Pass 1
    End of file Pass 2
     0 Error(s) Detected.
     46 Absolute Bytes. 7 Symbols Detected.

    B>DIR LEDCOUNT.*
    B: LEDCOUNT COM : LEDCOUNT LST : LEDCOUNT Z80

Run kermit on FreeBSD platform:

    jfathman@freebsd:~/work/git/z80-exp $ ./kermit.sh
    Entering server mode on /dev/ttyU1
    Type Ctrl-C to quit.
    C-Kermit 9.0.305 OPEN SOURCE: Alpha.04, 15 Sep 2021, freebsd [192.168.0.12]
       Current Directory: /usr/home/jfathman/work/git/z80-exp
    Communication Device: /dev/ttyU1
     Communication Speed: 9600
                  Parity: none
             RTT/Timeout:
               File Type:
               File Size:
            Bytes So Far:
                          ...10...20...30...40...50...60...70...80...90..100
     Estimated Time Left:
      Transfer Rate, CPS:
            Window Slots:
             Packet Type:
            Packet Count:
           Packet Length:
             Error Count:
              Last Error:
            Last Message:X to cancel file, Z to cancel group,
                         <CR> to resend last packet,E to send
    Error packet, ^C to quit immediately, ^L to refresh screen.

Run kerm411 on Z80 platform:

    B>A:KERM411
    Kermit-80 v4.11 configured for Generic CP/M-80 with Generic (Dumb) CRT Terminal type
    For help, type ? at any point in a command

    Kermit-80   0B:>REMOTE CD /home/jfathman/work/git/z80-exp/backups/drive-b
    <</usr/home/jfathman/work/git/z80-exp/backups/drive-b>>

    Kermit-80   0B:>SEND *.*
    Starting ... %0
    Sending...
    LEDON.COM
    LEDOFF.COM
    LEDCOUNT.COM
    LEDON.LST
    LEDOFF.LST
    LEDCOUNT.LST
    LEDON.Z80
    LEDOFF.Z80
    LEDCOUNT.Z80
    Completed

    Kermit-80   0B:>REMOTE DIR
    <<DIRECTORY ./*>>
    -rw-r--r--       128  2021-12-30 16:41:28  ledcount.com
    -rw-r--r--      2688  2021-12-30 16:41:34  ledcount.lst
    -rw-r--r--       642  2021-12-30 16:41:36  ledcount.z80
    -rw-r--r--       128  2021-12-30 16:41:27  ledoff.com
    -rw-r--r--       512  2021-12-30 16:41:30  ledoff.lst
    -rw-r--r--        57  2021-12-30 16:41:35  ledoff.z80
    -rw-r--r--       128  2021-12-30 16:41:27  ledon.com
    -rw-r--r--       512  2021-12-30 16:41:29  ledon.lst
    -rw-r--r--        54  2021-12-30 16:41:35  ledon.z80
