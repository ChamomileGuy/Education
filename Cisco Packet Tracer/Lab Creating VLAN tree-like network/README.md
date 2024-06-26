Description of the lab:
При выполнении задания ЗАПРЕЩАЕТСЯ использовать для настройки вкладку Config. Все настройки выполнять только через CLI.

1. Пожалуйста, убедитесь, что вы скачали .pkt файл в этой лабораторной работе.
2. Всем роутерам и свитчам назначить hostname.
В тексте задания будут использоваться номера устройств назначенные packet tracer'ом при добавлении девайса в топологию.
3. Настроить VLAN согласно цветовой схеме, представленной в файле CPT.
Интерфейсы коммутаторов, к которым подключены компьютеры, настраиваются в режим access. Остальные интерфейсы коммутаторов настриваются в режим trunk (кроме линков между Switch4 и Router2). В транковых каналах должны быть разрешены только VLAN-ы необходимые в рамках данной топологии. Все неиспользуемые интерфейсы на коммутаторах должны быть административно выключены. (подсказка - команда interface range).
4. Каждому VLAN соответствует своя ip-подсеть.
VLAN 10 - 192.168.10.0/24
VLAN 20 - 192.168.20.0/24
VLAN 30 - 192.168.30.0/24
VLAN 40 - 192.168.40.0/24
Назначить ip-адреса и шлюзы компьютерам согласно принадлежности к VLAN.
5. Настроить каналы между маршрутизаторами.
Интерфейсам маршрутизаторов, смотрящим в локальные сети, присваивается адрес вида 192.168.x.254/24.
Он же является шлюзом по умолчанию для соответствующих подсетей.
В каналах между маршрутизаторами используется адресное пространство 10.10.10.0/30 и 10.10.10.4/30.
Назначить ip-адреса согласно списку ниже:
a) Router0 - interface gi0/1 - 10.10.10.1/30
b) Router1 - interface gi0/0 - 10.10.10.2/30
c) Router1 - interface gi0/1 - 10.10.10.5/30
d) Router2 - interface gi0/0 - 10.10.10.6/30
6. Для обеспечения маршрутизации между VLAN 10 и 20 на маршрутизаторе Router0 создается два саб-интерфейса:
gi0/0.10 для VLAN 10 и gi0/0.20 для VLAN 20.
Получается два логических канала в одном физическом линке (данная реализация называется router-on-a-stick)
7. Для обеспечения маршрутизации между VLAN 30 и 40 на маршрутизаторе Router2 используется два физических линка:
gi0/1 для VLAN 30
gi0/2 для VLAN 40
Каждый линк - access-ный для своего влана. Данная реализация называется legacy inter-vlan routing
8. Каналы между коммутаторами Switch3 - Switch4 - Switch5 организованы следующим образом.
Switch3 - на нем существует только VLAN 30. Интерфейс fa0/1 - access для vlan 30. Интерфейс fa0/2 - trunk c разрешенным vlan 30.
Switch5 - аналогично Switch3.
Switch4 - на нем существует vlan 30 и vlan 40. Интерфейс fa0/1 - access для vlan 40.
Интерфейсы fa0/2 и fa0/3 - trunk с разрешенным vlan 30.
Интерфейс fa0/4 - access для vlan 30
Интерфейс fa0/5 - access для vlan 40
9. На всех маршрутизаторах настроить необходимые статические маршруты, что бы все компьютеры топологии могли друг друга ping.
На маршрутизаторе Router0 настраивается статический маршрут по умолчанию.
На маршрутизаторе Router1 настраиваются маршруты до всех локальных сетей 192.168.x.0/24.
На маршрутизаторе Router2 настраиваются статические маршруты до сетей 192.168.10.0/24 и 192.168.20.0/24.


Subject name:
Lab Creating VLAN tree-like network