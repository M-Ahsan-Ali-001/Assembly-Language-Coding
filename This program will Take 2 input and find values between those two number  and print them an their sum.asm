include emu8086.inc

org 100h

.data
var1 dw ?
var2 dw ?

sum dw 0h



.code  

call scan_num
mov var1,cx 


call scan_num
mov var2,cx


mov dx,var1
add dx,1h
mov cx,var2
sub cx,1h


loopp: 
 

mov ax,dx
add sum,dx
call print_num
print 10
print 13

cmp dx,var2
jle loop2


loop2:

mov bx,dx
inc dx
cmp bx,cx
jl loopp
mov ax,sum
call print_num
print 10
print 13



define_print_num

define_print_num_uns

define_scan_num         





ret




