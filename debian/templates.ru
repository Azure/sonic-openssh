Template: ssh/upgrade_to_openssh
Type: boolean
Description: Are you sure you want to upgrade to OpenSSH?
 This version of ssh (a.k.a. OpenSSH) is supposed to be a 100% compatible
 drop in replacement for the original (non-free) implemetation.
 .
 If you find that it is not, please report the problem as a bug.
 .
 You can still find the old version of ssh in the ssh-nonfree package
 (although the only reason you are likely to want that is if you also
 want to install the ssh2 package).
 .
 NOTE: If you're upgrading a machine remotely, via ssh, make sure you have at
 least one other ssh session running as root, and once this is installed,
 check that you can still log in (with a third session), before logging out.
Description-ru: Вы уверены, что хотите обновить OpenSSH?
 Эта версия ssh(он же OpenSSH) является 100%-совместимой с оригинальной
 (несвободной) реализацией.
 .
 Если вы обнаружили различие, то, пожалуйста, сообщите об этой ошибке.
 .
 Вы  можете  по  прежнему  найти старую версию ssh в пакете ssh-nonfree
 (хотя действительно необходимо его использовать только, если вы хотите
 установить еще и пакет ssh2).
 .
 Примечание: Если вы удаленно обновляете машину через ssh, то убедитесь
 что  как  минимум  еще  одна сессия ssh запущена от root, и как только
 процесс  обновления  закончится,  убедитесь,  что  вы  сможете войти в
 систему (установив третью сессию), перед тем как отсоединяться.

Template: ssh/protocol2_default
Type: note
Description: SSH uses protocol 2 by default.
 This version of SSH (unlike previous ones) uses ssh
 protocol version 2 by default. The key file formats have changed
 between the protocol versions, so your old key files will not be
 useful. You may either pass the '-1' option to ssh to force it to use
 the older protocol (and your old keys), or generate new keys. Protocol
 version 2 is thought to be more secure, so this is the preferred
 course of action. See README.Debian for a little more information
 .
 Also, due to problems with IPv4 and IPv6 interoperation, IPv4 is now
 the default (this is a change from previous versions). Passing ssh the
 -6 flag will cause IPv6 addresses to be used. Once the current issues
 with using IPv6 on machines with IPv4 addresses have been solved, the
 previous default will be restored
Description-ru: SSH использует по умолчанию протокол версии 2.
 Эта  версия  SSH  (в  отличии  от  предыдущих) использует по умолчанию
 протокол  версии  2.  В  этой  версии  протокола изменен формат файлов
 ключей,  так что ваши старые ключи станут бесполезными. Вы можете либо
 указывать  опцию  '-1' для ssh, чтобы принудительно использовать более
 старую  версию  протокола,  либо  сгенерируйте новый  ключи.  Протокол
 версии  2  более защищенный, и поэтому предопределен по умолчанию. См.
 подробности в файле README.Debian.
 .
 Также   из-за  проблем  взаимосоответствия  IPv4  и  IPv6,  сейчас  по
 умолчанию  по  умолчанию  используется  IPv4  (в отличии от предыдущих
 версий).  Чтобы использовать IPv6, надо задать флаг -6. Как только все
 сложности  с  использованием  IPv6  на  машинах  с адресами IPv4 будут
 решены, то прежнее поведение по умолчанию будет восстановлено.

Template: ssh/ancient_version
Type: note
Description: You are trying to upgrade from an ancient version of non-free ssh
 This is bound to be using IDEA encryption for your identity files.
 You should upgrade to a vaguely contemporary (1.2.15 or later) version of
 non-free ssh, and then upgrade all your key files using ssh-keygen -u
 before attempting to migrate to OpenSSH.
 .
 Alternatively, you could just forget about that, and generate new keys.
Description-ru: Вы пытаетесь обновить древнюю версию коммерческого ssh
 Она  ограничена  использованием   шифрования  IDEA  для  ваших  файлов
 идентификации. Рекомендуется обновить более современные версии (1.2.15
 или  более  поздние) коммерческого ssh, и потом обновить ваши ключевые
 файлы командой `ssh-keygen -u` перед попыткой перейти на OpenSSH.
 .
 Как вариант, можете забыть обо всем этом и сгенерировать новые ключи.

Template: ssh/use_old_init_script
Type: boolean
Description: Do you want to continue (and risk killing active ssh sessions) ?
 The version of /etc/init.d/ssh that you have installed, is likely to kill
 all running sshd instances.  If you are doing this upgrade via an ssh
 session, that would be a Bad Thing(tm).
 .
 You can fix this by adding "--pidfile /var/run/sshd.pid" to the
 start-stop-daemon line in the stop section of the file.
Description-ru: Вы хотите продолжить (рискуя потерять активные ssh-соединения)?
 Версия  /etc/init.d/ssh,  которую  вы  устанавливаете, может убить все
 запущенные  процессы  ssh.  Если вы осуществляете это обновление через
 ssh сессию, то это Плохая Вещь (tm).
 .
 Это можно исправить добавлением "--pidfile /var/run/sshd.pid" в строке
 start-stop-daemon в разделе stop этого файла.

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
Description-ru: ПРИМЕЧАНИЕ: Форвардинг X11 и Authorization запрещен по умолчанию.
 По причинам безопасности, в версии для Debian ssh имеет ForwardX11 и
 ForwardAgent установленными в ``off'' по умолчанию.
 .
 Вы можете разрешить их для серверов, которым доверяете либо в одном из
 настроечных файлов, или параметром командной строки -X.
 .
 Дополнительую информацию можно найти в /usr/share/doc/ssh/README.Debian

Template: ssh/insecure_rshd
Type: note
Description: Warning: rsh-server is installed --- probably not a good idea
 having rsh-server installed undermines the security that you were probably
 wanting to obtain by installing ssh.  I'd advise you to remove that package.
Description-ru: Предупреждение: установлен rsh-server --- видимо, не очень хорошо
 Установленный  rsh-server  снижает  безопасность,  которую вы вероятно
 хотите повысить устанавливая ssh. Рекомендуется удалить этот пакет.

Template: ssh/insecure_telnetd
Type: note
Description: Warning: telnetd is installed --- probably not a good idea
 I'd advise you to either remove the telnetd package (if you don't actually
 need to offer telnet access) or install telnetd-ssl so that there is at
 least some chance that telnet sessions will not be sending unencrypted
 login/password and session information over the network.
Description-ru: Предупреждение: установлен telnetd --- видимо, не очень хорошо
 Я рекомендовал бы вам удалить пакет telnetd (если вам действительно не
 нужен доступ telnet) или установить  telnet-ssl,  чтобы  иметь хотя бы
 возможность  не  передавать  по  сети  незашифрованные  имена и пароли
 пользователей и прочую информацию в telnet-сессиях.

Template: ssh/encrypted_host_key_but_no_keygen
Type: note
Description: Warning: you must create a new host key
 There is an old /etc/ssh/ssh_host_key, which is IDEA encrypted.
 OpenSSH can not handle this host key file, and I can't find the
 ssh-keygen utility from the old (non-free) SSH installation.
 .
 You will need to generate a new host key.
Description-ru: Предупреждение: вы должны создать новый ключ машины.
 Есть старый /etc/ssh/ssh_host_key, который зашифрован IDEA. OpenSSH не
 может  работать  с  этим  ключом  машины,  и  я  не могу найти утилиту 
 ssh-keygen от старой (несвободной) инсталляции SSH.
 .
 Вам надо будет сгенерировать новый ключ хоста.

Template: ssh/SUID_client
Type: boolean
Default: true
Description: Do you want /usr/bin/ssh to be installed SUID root?
 You have the option of installing the ssh client with the SUID bit set.
 .
 If you make ssh SUID, you will be able to use Rhosts/RhostsRSA
 authentication, but will not be able to use socks via the LD_PRELOAD
 trick.  This is the traditional approach.
 .
 If you do not make ssh SUID, you will be able to use socks, but
 Rhosts/RhostsRSA authentication will stop working, which may stop you
 logging in to remote systems.  It will also mean that the source
 port will be above 1024, which may confound firewall rules you've set up.
 .
 If in doubt, I suggest you install it with SUID.  If it causes
 problems you can change your mind later by running:   dpkg-reconfigure ssh 
Description-ru: Хотите установить /usr/bin/ssh как SUID root?
 Вы  имеете  возможность  установить /usr/bin/ssh с установленным битом
 SUID.
 .
 Если  вы  делаете  ssh SUID, то вы сможете использовать аутентификацию
 Rhosts/RhostsRSA,  но  не сможете использовать socks через LD_PRELOAD.
 Это традиционное поведение.
 .
 Если  вы  сделаете ssh SUID, то вы сможете использовать socks, но зато
 аутентификация  Rhosts/RhostsRSA  не будет работать, что может сделать
 невозможным вашу регистрацию на удаленных системах. Также это означает
 что номер источникового порта будет больше 1024, что может не нарушить
 работу установленных вами правил файрвола.
 .
 Если вы не знаете, что решить, то рекомендуется установить его с битом
 SUID. Если вы потом передумаете, то эту установку можно будет изменить
 командой: "dpkg-reconfigure ssh".

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
Description-ru: Хотите запустить сервер sshd?
 Этот пакет содержит и ssh-клиент, и ssh-сервер.
 .
 Обычно  sshd  Secure Shell Server  запускается  для удаленного входа в
 регистрации в системе через ssh.
 .
 Если  вас  интересует  только  использование ssh-клиента для исходящих
 соединений с  этой  машины, и вы  не хотите входить в ее систему через
 ssh, то вы можете сейчас запретить sshd.
