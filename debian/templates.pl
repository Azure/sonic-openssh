Template: ssh/privsep_tell
Type: note
Description: Privilege separation
 This version of OpenSSH contains the new privilege separation
 option. This significantly reduces the quantity of code that runs as
 root, and therefore reduces the impact of security holes in sshd.
 .
 Unfortunately, privilege separation interacts badly with PAM. Any
 PAM session modules that need to run as root (pam_mkhomedir, for
 example) will fail, and PAM keyboard-interactive authentication 
 won't work.
 .
 Privilege separation is turned on by default, so if you decide you
 want it turned off, you need to add "UsePrivilegeSeparation no" to
 /etc/ssh/sshd_config.
 .
 NB! If you are running a 2.0 series Linux kernel, then privilege
 separation will not work at all, and your sshd will fail to start
 unless you explicitly turn privilege separation off.
Description-pl: Separacja uprawnieñ
 Ta wersja OpenSSH zawiera now± opcjê separacji uprawnieñ. Znacz±co
 zmniejsza ona ilo¶æ kodu, który jest uruchamiany jako root i co
 za tym idzie redukuje efekty luk bezpieczeñstwa w sshd.
 .
 Niestety separacja uprawnieñ ¼le reaguje z PAMem. Jakikolwiek modu³
 sesji PAM, który musi byæ uruchamiany jako root (pam_mkhomedir, na
 przyk³ad) zawiedzie. Nie bêdzie dzia³aæ równie¿ interaktywna 
 autentykacja z klawiatury (keyboard-interactive authentication).
 .
 Separacja uprawnieñ jest domy¶lnie w³±czona, wiêc je¶li zdecydujesz
 siê j± wy³±czyæ, musisz dodaæ "UsePrivilegeSeparation no" do pliku
 /etc/ssh/sshd_config.
 .
 UWAGA! Je¿eli u¿ywasz j±dra Linux'a z serii 2.0, to separacja uprawnieñ
 w ogóle nie bêdzie dzia³aæ i sshd nie wystartuje dopóki w³asnorêcznie
 nie wy³±czysz separacji uprawnieñ w /etc/ssh/sshd_config.

Template: ssh/privsep_ask
Type: boolean
Default: true
Description: Enable Privilege separation
 This version of OpenSSH contains the new privilege separation
 option. This significantly reduces the quantity of code that runs as
 root, and therefore reduces the impact of security holes in sshd.
 .
 Unfortunately, privilege separation interacts badly with PAM. Any
 PAM session modules that need to run as root (pam_mkhomedir, for
 example) will fail, and PAM keyboard-interactive authentication 
 won't work.
 .
 Since you've opted to have me generate an sshd_config file for you,
 you can choose whether or not to have Privilege Separation turned on
 or not. Unless you are running 2.0 (in which case you *must* say no
 here or your sshd won't start at all) or know you need to use PAM
 features that won't work with this option, you should say yes here.
Description-pl: W³±czenie separacji uprawnieñ
 Ta wersja OpenSSH zawiera now± opcjê separacji uprawnieñ. Znacz±co
 zmniejsza ona ilo¶æ kodu, który jest uruchamiany jako root i co
 za tym idzie redukuje efekty luk bezpieczeñstwa w sshd.
 .
 Niestety separacja uprawnieñ ¼le reaguje z PAMem. Jakikolwiek modu³
 sesji PAM, który musi byæ uruchamiany jako root (pam_mkhomedir, na
 przyk³ad) zawiedzie. Nie bêdzie dzia³aæ równie¿ interaktywna 
 autentykacja z klawiatury (keyboard-interactive authentication).
 .
 Zdecydowa³e¶ siê na to abym wygenerowa³ dla ciebie plik sshd_config,
 i mo¿esz wybraæ czy chcesz w³±czyæ Separacjê Uprawnieñ, czy te¿ nie.
 Je¶li nie u¿ywasz j±dra z serii 2.0 (w którym to przypadku *musisz*
 odpowiedzieæ tutaj 'nie' albo sshd w ogóle nie ruszy) i je¶li nie 
 musisz korzystaæ z mo¿liwo¶ci PAMa, które nie bêd± dzia³a³y z t± opcj±,
 powiniene¶ odpowiedzieæ tutaj 'tak'.

Template: ssh/new_config
Type: boolean
Default: true
Description: Generate new configuration file
 This version of OpenSSH has a considerably changed configuration file from 
 the version shipped in Debian 'Potato', which you appear to be upgrading from.
 I can now generate you a new configuration file (/etc/ssh/sshd.config), which
 will work with the new server version, but will not contain any customisations
 you made with the old version. 
 .
 Please note that this new configuration file will set the value of 
 'PermitRootLogin' to yes (meaning that anyone knowing the root password can
 ssh directly in as root). It is the opinion of the maintainer that this is
 the correct default (see README.Debian for more details), but you can always
 edit sshd_config and set it to no if you wish.
 .
 It is strongly recommended that you let me generate a new configuration file 
 for you.
Description-pl: Wygeneruj nowy plik konfiguracyjny
 W tej wersji OpenSSH zmieni³ siê plik konfiguracyjny w stosunku do wersji 
 dostarczanej z Debianem 'Potato', któr± zdajesz siê aktualizowaæ. Mogê teraz 
 wygenerowaæ nowy plik konfiguracyjny (/etc/ssh/sshd.config), który bêdzie
 dzia³a³ z now± wersj± serwera, ale nie bêdzie zawiera³ ¿adnych dokonanych
 przez ciebie w starej wersji zmian.
 .
 Zauwa¿ proszê, ¿e nowy plik konfiguracyjny bêdzie ustawia³ warto¶æ opcji
 'PermitRootLogin' na 'tak' (co oznacza, ¿e ka¿dy kto zna has³o root'a mo¿e
 zdalnie zalogowaæ siê przez ssh jako root). W opinii opiekuna pakietu to
 jest poprawna warto¶æ domy¶lna (szczegó³y w README.Debian), ale mo¿esz sobie
 wyedytowaæ sshd_config i ustawiæ tê opcjê na 'nie' je¶li siê z t± opini± nie
 zgadzasz.
 .
 Jest bardzo wskazane aby¶ pozwoli³ mi wygenerowaæ nowy plik konfiguracyjny.

Template: ssh/protocol2_only
Type: boolean
Default: true
Description: Allow SSH protocol 2 only
 This version of OpenSSH supports version 2 of the ssh protocol, which
 is much more secure.  Disabling ssh 1 is encouraged, however this
 will slow things down on low end machines and might prevent older
 clients from connecting (the ssh client shipped with "potato" is affected).
 .
 Also please note that keys used for protocol 1 are different so you will
 not be able to use them if you only allow protocol 2 connections.
 .
 If you later change your mind about this setting, README.Debian has 
 instructions on what to do to your sshd_config file.
Description-pl: Zezwalaj wy³±cznie na wersjê 2 protoko³u SSH
 Ta wersja OpenSSH wspiera drug± wersjê protoko³u ssh, która jest znacznie
 bardziej bezpieczna. Wy³±czenie ssh 1 jest zalecane, choæ spowalnia to
 dzia³anie na starych maszynach i mo¿e uniemo¿liwiæ po³±czenie starszym
 wersjom klientów (dotyczy to np. klienta ssh do³±czanego do "potato").
 .
 Ponadto, zauwa¿ proszê, ¿e klucze u¿ywane przez protokó³ 1 s± inne, wiêc
 nie bêdziesz móg³ ich u¿ywaæ je¶li zezwolisz na korzystanie wy³±cznie z
 wersji 2 protoko³u.
 .
 Je¶li pó¼niej zmienisz zdanie co do tego ustawienia, to instrukcje co 
 zmieniæ w sshd_config znajduj± siê w README.Debian.

Template: ssh/ssh2_keys_merged
Type: note
Description: ssh2 keys merged in configuration files
 As of version 3 OpenSSH no longer uses separate files for ssh1 and
 ssh2 keys. This means the authorized_keys2 and known_hosts2 files
 are no longer needed. They will still be read in order to maintain
 backwards compatibility
Description-pl: klucze ssh2 w³±czone do plików konfiguracyjnych
 Pocz±wszy od wersji 3 OpenSSH nie u¿ywa ju¿ osobnych plików dla kluczy
 ssh1 i ssh2. Oznacza to, ¿e pliki authorized_keys2 i known_hosts2 nie
 s± ju¿ potrzebne. Bêd± one jednak odczytywane aby zachowaæ wsteczn±
 kompatybilno¶æ.

Template: ssh/use_old_init_script
Type: boolean
Default: false
Description: Do you want to continue (and risk killing active ssh sessions) ?
 The version of /etc/init.d/ssh that you have installed, is likely to kill
 all running sshd instances.  If you are doing this upgrade via an ssh
 session, that would be a Bad Thing(tm).
 .
 You can fix this by adding "--pidfile /var/run/sshd.pid" to the
 start-stop-daemon line in the stop section of the file.
Description-pl: Czy chcesz kontynuowaæ (i ryzykowaæ zabicie aktywnych sesji ssh) ?
 Zainstalowana w³a¶nie wersja /etc/init.d/ssh mo¿e zabiæ wszystkie dzia³aj±ce
 obecnie kopie sshd. Je¶li robisz ten upgrade via ssh, to by³aby Z³a Rzecz(tm).
 .
 Mo¿esz to naprawiæ dodaj±c "--pidfile /var/run/sshd.pid" do linijki
 start-stop-daemon w sekcji stop tego pliku.

Template: ssh/forward_warning
Type: note
Description: NOTE: Forwarding of X11 and Authorization disabled by default.
 For security reasons, the Debian version of ssh has ForwardX11 and
 ForwardAgent set to ``off'' by default.
 .
 You can enable it for servers you trust, either
 in one of the configuration files, or with the -X command line option.
 .
 More details can be found in /usr/share/doc/ssh/README.Debian
Description-pl: UWAGA: Przekazywanie (forwarding) X11 i Autoryzacji jest domy¶lnie wy³±czone.
 Ze wzglêdów bezpieczeñstwa Debianowa wersja ssh ma ForwardX11 i ForwardAgent
 ustawione  domy¶lnie na 'off'.
 .
 Dla zaufanych serwerów mo¿esz w³±czyæ te opcje w pliku konfiguracyjnym lub
 przy pomocy opcji -X z linii komend.
 .
 Wiêcej szczegó³ów znajdziesz w /usr/share/doc/ssh/README.Debian.

Template: ssh/insecure_rshd
Type: note
Description: Warning: rsh-server is installed --- probably not a good idea
 having rsh-server installed undermines the security that you were probably
 wanting to obtain by installing ssh.  I'd advise you to remove that package.
Description-pl: Uwaga: serwer rsh jest zainstalowany --- prawdopodobnie nienajlepszy pomys³
 Posiadanie zainstalowanego serwera rsh podminowuje zabezpieczenia, które 
 prawdopodobnie starasz siê uzyskaæ instaluj±c ssh. Radzi³bym usun±æ ten 
 pakiet.

Template: ssh/insecure_telnetd
Type: note
Description: Warning: telnetd is installed --- probably not a good idea
 I'd advise you to either remove the telnetd package (if you don't actually
 need to offer telnet access) or install telnetd-ssl so that there is at
 least some chance that telnet sessions will not be sending unencrypted
 login/password and session information over the network.
Description-pl: Uwaga: telnetd jest zainstalowany --- prawdopodobnie nienajlepszy pomys³
 Radzi³bym albo usun±æ pakiet telnetd (je¶li nie potrzebujesz koniecznie
 udostêpniaæ telnet'a) albo zainstalowaæ telnetd-ssl aby by³a choæ szansza,
 ¿e sesje telnet nie bêd± przesy³aæ niezaszyfrowanego loginu/has³a oraz 
 danych sesji przez sieæ.

Template: ssh/encrypted_host_key_but_no_keygen
Type: note
Description: Warning: you must create a new host key
 There is an old /etc/ssh/ssh_host_key, which is IDEA encrypted.
 OpenSSH can not handle this host key file, and I can't find the
 ssh-keygen utility from the old (non-free) SSH installation.
 .
 You will need to generate a new host key.
Description-pl: Uwaga: musisz utworzyæ nowy klucz hosta 
 Istnieje stary /etc/ssh/ssh_host_key, który jest zaszyfrowany przez
 IDEA. OpenSSH nie umie korzystaæ z tak zaszyfrowanego klucza, a nie
 mo¿e znale¼æ polecenia ssh-keygen ze starego SSH (non-free).
 .
 Bêdziesz musia³ wygenerowaæ nowy klucz hosta.

Template: ssh/SUID_client
Type: boolean
Default: true
Description: Do you want /usr/lib/ssh-keysign to be installed SUID root?
 You have the option of installing the ssh-keysign helper with the SUID
 bit set.
 .
 If you make ssh-keysign SUID, you will be able to use SSH's Protocol 2
 host-based authentication.
 .
 If in doubt, I suggest you install it with SUID.  If it causes
 problems you can change your mind later by running:   dpkg-reconfigure ssh 
Description-pl: Czy chcesz aby /usr/lib/ssh-keysign by³ zainstalowany jako SUID root? 
 Masz mo¿liwo¶æ zainstalowania pomocniczego programu ssh-keysign z w³±czonym
 bitem SETUID.
 .
 Je¶li uczynisz ssh-keysign SUIDowym, bêdziesz móg³ u¿ywaæ opartej na hostach
 autentykacji drugiej wersji protoko³u SSH.
 .
 Je¶li masz w±tpliwo¶ci, radzê zainstalowaæ go z SUIDem. Je¶li to sprawia
 problemy, mo¿esz zmieniæ swoje zdanie uruchamiaj±c pó¼niej polecenie:
 dpkg-reconfigure ssh

Template: ssh/run_sshd
Type: boolean
Default: true
Description: Do you want to run the sshd server ?
 This package contains both the ssh client, and the sshd server.
 .
 Normally the sshd Secure Shell Server will be run to allow remote
 logins via ssh.
 .
 If you are only interested in using the ssh client for outbound
 connections on this machine, and don't want to log into it at all
 using ssh, then you can disable sshd here.
Description-pl: Czy chcesz uruchamiaæ serwer sshd ?
 Ten pakiet zawiera zarówno klienta ssh, jak i serwer sshd.
 .
 Normalnie serwer sshd (Secure Shell Server) bêdzie uruchomiony aby
 umo¿liwiæ zdalny dostêp przez ssh.
 .
 Je¶li jeste¶ zainteresowny u¿ywaniem wy³±cznie klienta ssh dla po³±czeñ
 wychodz±cych z tej maszyny, i nie chcesz siê na ni± logowaæ przy pomocy
 ssh, to mo¿esz teraz wy³±czyæ serwer sshd.
