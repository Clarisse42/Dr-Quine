début global

section .text
début: mov rax, 0x02000004;  appel système pour écriture
mov rdi, 1;  le descripteur de fichier 1 est stdout
mov rsi, message;  adresse de la chaîne à afficher
mov rdx, 13;  nombre d'octets
appel système;  invoquer le système d'exploitation pour faire l'écriture
mov rax, 0x02000001;  appel système pour sortir
xor rdi, rdi;  code de sortie 0
appel système;  invoquer le système d'exploitation pour quitter

section .data
message: db "Bonjour le monde", 10;  notez la nouvelle ligne à la fin
