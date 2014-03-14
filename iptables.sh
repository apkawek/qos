#!/bin/bash
IPTABLES='/usr/sbin/iptables'
tc=/sbin/tc
ext=ppp0
ext_ingress=eth1
ext_up=25
ext_down=25
q=1514
quantum=300


echo 1 > /proc/sys/net/ipv4/ip_forward

modprobe nf_conntrack_ftp
modprobe nf_nat_ftp
modprobe ipt_ULOG
modprobe nf_conntrack
modprobe ip_tables
modprobe xt_mac
modprobe xt_mark
modprobe xt_CLASSIFY
modprobe ip_conntrack
modprobe xt_multiport

modprobe sch_htb
modprobe cls_u32
modprobe sch_ingress
modprobe cls_fw
modprobe ipt_TOS
modprobe sch_prio
modprobe xt_physdev
modprobe act_mirred
modprobe sch_fq_codel
