��
�%�$
B
AddV2
x"T
y"T
z"T"
Ttype:
2	��
�
ArgMax

input"T
	dimension"Tidx
output"output_type"!
Ttype:
2	
"
Tidxtype0:
2	"
output_typetype0	:
2	
B
AssignVariableOp
resource
value"dtype"
dtypetype�
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
A
BroadcastArgs
s0"T
s1"T
r0"T"
Ttype0:
2	
Z
BroadcastTo

input"T
shape"Tidx
output"T"	
Ttype"
Tidxtype0:
2	
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
�
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

R
Equal
x"T
y"T
z
"	
Ttype"$
incompatible_shape_errorbool(�
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
�
GatherV2
params"Tparams
indices"Tindices
axis"Taxis
output"Tparams"

batch_dimsint "
Tparamstype"
Tindicestype:
2	"
Taxistype:
2	
.
Identity

input"T
output"T"	
Ttype
:
Less
x"T
y"T
z
"
Ttype:
2	
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
:
Maximum
x"T
y"T
z"T"
Ttype:

2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(�
:
Minimum
x"T
y"T
z"T"
Ttype:

2	
=
Mul
x"T
y"T
z"T"
Ttype:
2	�
0
Neg
x"T
y"T"
Ttype:
2
	

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
�
PartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
�
Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
b
Range
start"Tidx
limit"Tidx
delta"Tidx
output"Tidx"
Tidxtype0:

2	
@
ReadVariableOp
resource
value"dtype"
dtypetype�
>
RealDiv
x"T
y"T
z"T"
Ttype:
2	
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
.
Rsqrt
x"T
y"T"
Ttype:

2
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
?
Select
	condition

t"T
e"T
output"T"	
Ttype
A
SelectV2
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
0
Sigmoid
x"T
y"T"
Ttype:

2
[
Split
	split_dim

value"T
output"T*	num_split"
	num_splitint(0"	
Ttype
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
�
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring �
@
StaticRegexFullMatch	
input

output
"
patternstring
�
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
;
Sub
x"T
y"T
z"T"
Ttype:
2	
-
Tanh
x"T
y"T"
Ttype:

2
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
�
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �"serve*2.4.12v2.4.0-49-g85c8b2a817f8��
d
VariableVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name
Variable
]
Variable/Read/ReadVariableOpReadVariableOpVariable*
_output_shapes
: *
dtype0	
�
UActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*f
shared_nameWUActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d/kernel
�
iActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d/kernel/Read/ReadVariableOpReadVariableOpUActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d/kernel*&
_output_shapes
:*
dtype0
�
SActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*d
shared_nameUSActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d/bias
�
gActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d/bias/Read/ReadVariableOpReadVariableOpSActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d/bias*
_output_shapes
:*
dtype0
�
WActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *h
shared_nameYWActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d_1/kernel
�
kActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d_1/kernel/Read/ReadVariableOpReadVariableOpWActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d_1/kernel*&
_output_shapes
: *
dtype0
�
UActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *f
shared_nameWUActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d_1/bias
�
iActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d_1/bias/Read/ReadVariableOpReadVariableOpUActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d_1/bias*
_output_shapes
: *
dtype0
�
TActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
�	�*e
shared_nameVTActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/kernel
�
hActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/kernel/Read/ReadVariableOpReadVariableOpTActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/kernel* 
_output_shapes
:
�	�*
dtype0
�
RActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*c
shared_nameTRActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/bias
�
fActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/bias/Read/ReadVariableOpReadVariableOpRActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/bias*
_output_shapes	
:�*
dtype0
�
MActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*^
shared_nameOMActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/kernel
�
aActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/kernel/Read/ReadVariableOpReadVariableOpMActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/kernel* 
_output_shapes
:
��*
dtype0
�
WActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*h
shared_nameYWActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/recurrent_kernel
�
kActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/recurrent_kernel/Read/ReadVariableOpReadVariableOpWActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/recurrent_kernel* 
_output_shapes
:
��*
dtype0
�
KActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*\
shared_nameMKActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/bias
�
_ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/bias/Read/ReadVariableOpReadVariableOpKActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/bias*
_output_shapes	
:�*
dtype0
�
FActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*W
shared_nameHFActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/kernel
�
ZActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/kernel/Read/ReadVariableOpReadVariableOpFActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/kernel* 
_output_shapes
:
��*
dtype0
�
DActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*U
shared_nameFDActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/bias
�
XActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/bias/Read/ReadVariableOpReadVariableOpDActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/bias*
_output_shapes	
:�*
dtype0
�
FActorDistributionRnnNetwork/CategoricalProjectionNetwork/logits/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*W
shared_nameHFActorDistributionRnnNetwork/CategoricalProjectionNetwork/logits/kernel
�
ZActorDistributionRnnNetwork/CategoricalProjectionNetwork/logits/kernel/Read/ReadVariableOpReadVariableOpFActorDistributionRnnNetwork/CategoricalProjectionNetwork/logits/kernel*
_output_shapes
:	�*
dtype0
�
DActorDistributionRnnNetwork/CategoricalProjectionNetwork/logits/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*U
shared_nameFDActorDistributionRnnNetwork/CategoricalProjectionNetwork/logits/bias
�
XActorDistributionRnnNetwork/CategoricalProjectionNetwork/logits/bias/Read/ReadVariableOpReadVariableOpDActorDistributionRnnNetwork/CategoricalProjectionNetwork/logits/bias*
_output_shapes
:*
dtype0
j
countVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namecount
c
count/Read/ReadVariableOpReadVariableOpcount*"
_output_shapes
:*
dtype0
p
mean_sumVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name
mean_sum
i
mean_sum/Read/ReadVariableOpReadVariableOpmean_sum*"
_output_shapes
:*
dtype0
n
var_sumVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name	var_sum
g
var_sum/Read/ReadVariableOpReadVariableOpvar_sum*"
_output_shapes
:*
dtype0
�
?ValueRnnNetwork/ValueRnnNetwork/EncodingNetwork/conv2d_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*P
shared_nameA?ValueRnnNetwork/ValueRnnNetwork/EncodingNetwork/conv2d_2/kernel
�
SValueRnnNetwork/ValueRnnNetwork/EncodingNetwork/conv2d_2/kernel/Read/ReadVariableOpReadVariableOp?ValueRnnNetwork/ValueRnnNetwork/EncodingNetwork/conv2d_2/kernel*&
_output_shapes
:*
dtype0
�
=ValueRnnNetwork/ValueRnnNetwork/EncodingNetwork/conv2d_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*N
shared_name?=ValueRnnNetwork/ValueRnnNetwork/EncodingNetwork/conv2d_2/bias
�
QValueRnnNetwork/ValueRnnNetwork/EncodingNetwork/conv2d_2/bias/Read/ReadVariableOpReadVariableOp=ValueRnnNetwork/ValueRnnNetwork/EncodingNetwork/conv2d_2/bias*
_output_shapes
:*
dtype0
�
?ValueRnnNetwork/ValueRnnNetwork/EncodingNetwork/conv2d_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *P
shared_nameA?ValueRnnNetwork/ValueRnnNetwork/EncodingNetwork/conv2d_3/kernel
�
SValueRnnNetwork/ValueRnnNetwork/EncodingNetwork/conv2d_3/kernel/Read/ReadVariableOpReadVariableOp?ValueRnnNetwork/ValueRnnNetwork/EncodingNetwork/conv2d_3/kernel*&
_output_shapes
: *
dtype0
�
=ValueRnnNetwork/ValueRnnNetwork/EncodingNetwork/conv2d_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *N
shared_name?=ValueRnnNetwork/ValueRnnNetwork/EncodingNetwork/conv2d_3/bias
�
QValueRnnNetwork/ValueRnnNetwork/EncodingNetwork/conv2d_3/bias/Read/ReadVariableOpReadVariableOp=ValueRnnNetwork/ValueRnnNetwork/EncodingNetwork/conv2d_3/bias*
_output_shapes
: *
dtype0
�
>ValueRnnNetwork/ValueRnnNetwork/EncodingNetwork/dense_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
�	�*O
shared_name@>ValueRnnNetwork/ValueRnnNetwork/EncodingNetwork/dense_2/kernel
�
RValueRnnNetwork/ValueRnnNetwork/EncodingNetwork/dense_2/kernel/Read/ReadVariableOpReadVariableOp>ValueRnnNetwork/ValueRnnNetwork/EncodingNetwork/dense_2/kernel* 
_output_shapes
:
�	�*
dtype0
�
<ValueRnnNetwork/ValueRnnNetwork/EncodingNetwork/dense_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*M
shared_name><ValueRnnNetwork/ValueRnnNetwork/EncodingNetwork/dense_2/bias
�
PValueRnnNetwork/ValueRnnNetwork/EncodingNetwork/dense_2/bias/Read/ReadVariableOpReadVariableOp<ValueRnnNetwork/ValueRnnNetwork/EncodingNetwork/dense_2/bias*
_output_shapes	
:�*
dtype0
�
7ValueRnnNetwork/ValueRnnNetwork/dynamic_unroll_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*H
shared_name97ValueRnnNetwork/ValueRnnNetwork/dynamic_unroll_1/kernel
�
KValueRnnNetwork/ValueRnnNetwork/dynamic_unroll_1/kernel/Read/ReadVariableOpReadVariableOp7ValueRnnNetwork/ValueRnnNetwork/dynamic_unroll_1/kernel* 
_output_shapes
:
��*
dtype0
�
AValueRnnNetwork/ValueRnnNetwork/dynamic_unroll_1/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*R
shared_nameCAValueRnnNetwork/ValueRnnNetwork/dynamic_unroll_1/recurrent_kernel
�
UValueRnnNetwork/ValueRnnNetwork/dynamic_unroll_1/recurrent_kernel/Read/ReadVariableOpReadVariableOpAValueRnnNetwork/ValueRnnNetwork/dynamic_unroll_1/recurrent_kernel* 
_output_shapes
:
��*
dtype0
�
5ValueRnnNetwork/ValueRnnNetwork/dynamic_unroll_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*F
shared_name75ValueRnnNetwork/ValueRnnNetwork/dynamic_unroll_1/bias
�
IValueRnnNetwork/ValueRnnNetwork/dynamic_unroll_1/bias/Read/ReadVariableOpReadVariableOp5ValueRnnNetwork/ValueRnnNetwork/dynamic_unroll_1/bias*
_output_shapes	
:�*
dtype0
�
.ValueRnnNetwork/ValueRnnNetwork/dense_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*?
shared_name0.ValueRnnNetwork/ValueRnnNetwork/dense_3/kernel
�
BValueRnnNetwork/ValueRnnNetwork/dense_3/kernel/Read/ReadVariableOpReadVariableOp.ValueRnnNetwork/ValueRnnNetwork/dense_3/kernel* 
_output_shapes
:
��*
dtype0
�
,ValueRnnNetwork/ValueRnnNetwork/dense_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*=
shared_name.,ValueRnnNetwork/ValueRnnNetwork/dense_3/bias
�
@ValueRnnNetwork/ValueRnnNetwork/dense_3/bias/Read/ReadVariableOpReadVariableOp,ValueRnnNetwork/ValueRnnNetwork/dense_3/bias*
_output_shapes	
:�*
dtype0
�
ValueRnnNetwork/dense_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*/
shared_name ValueRnnNetwork/dense_4/kernel
�
2ValueRnnNetwork/dense_4/kernel/Read/ReadVariableOpReadVariableOpValueRnnNetwork/dense_4/kernel*
_output_shapes
:	�*
dtype0
�
ValueRnnNetwork/dense_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_nameValueRnnNetwork/dense_4/bias
�
0ValueRnnNetwork/dense_4/bias/Read/ReadVariableOpReadVariableOpValueRnnNetwork/dense_4/bias*
_output_shapes
:*
dtype0

NoOpNoOp
�i
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*�h
value�hB�h B�h
k
policy_state_spec

train_step
metadata
model_variables
_all_assets

signatures

actor_network_state
CA
VARIABLE_VALUEVariable%train_step/.ATTRIBUTES/VARIABLE_VALUE
 
�
0
	1

2
3
4
5
6
7
8
9
10
11
12
13
14
15
16
17
18
19
20
21
22
23
 24
!25
"26
#27
$28

%0
&1
'2
 
 
��
VARIABLE_VALUEUActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d/kernel,model_variables/0/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUESActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d/bias,model_variables/1/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUEWActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d_1/kernel,model_variables/2/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUEUActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d_1/bias,model_variables/3/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUETActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/kernel,model_variables/4/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUERActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/bias,model_variables/5/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUEMActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/kernel,model_variables/6/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUEWActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/recurrent_kernel,model_variables/7/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUEKActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/bias,model_variables/8/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUEFActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/kernel,model_variables/9/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUEDActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/bias-model_variables/10/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUEFActorDistributionRnnNetwork/CategoricalProjectionNetwork/logits/kernel-model_variables/11/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUEDActorDistributionRnnNetwork/CategoricalProjectionNetwork/logits/bias-model_variables/12/.ATTRIBUTES/VARIABLE_VALUE
HF
VARIABLE_VALUEcount-model_variables/13/.ATTRIBUTES/VARIABLE_VALUE
KI
VARIABLE_VALUEmean_sum-model_variables/14/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUEvar_sum-model_variables/15/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE?ValueRnnNetwork/ValueRnnNetwork/EncodingNetwork/conv2d_2/kernel-model_variables/16/.ATTRIBUTES/VARIABLE_VALUE
�~
VARIABLE_VALUE=ValueRnnNetwork/ValueRnnNetwork/EncodingNetwork/conv2d_2/bias-model_variables/17/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE?ValueRnnNetwork/ValueRnnNetwork/EncodingNetwork/conv2d_3/kernel-model_variables/18/.ATTRIBUTES/VARIABLE_VALUE
�~
VARIABLE_VALUE=ValueRnnNetwork/ValueRnnNetwork/EncodingNetwork/conv2d_3/bias-model_variables/19/.ATTRIBUTES/VARIABLE_VALUE
�
VARIABLE_VALUE>ValueRnnNetwork/ValueRnnNetwork/EncodingNetwork/dense_2/kernel-model_variables/20/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUE<ValueRnnNetwork/ValueRnnNetwork/EncodingNetwork/dense_2/bias-model_variables/21/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE7ValueRnnNetwork/ValueRnnNetwork/dynamic_unroll_1/kernel-model_variables/22/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUEAValueRnnNetwork/ValueRnnNetwork/dynamic_unroll_1/recurrent_kernel-model_variables/23/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE5ValueRnnNetwork/ValueRnnNetwork/dynamic_unroll_1/bias-model_variables/24/.ATTRIBUTES/VARIABLE_VALUE
qo
VARIABLE_VALUE.ValueRnnNetwork/ValueRnnNetwork/dense_3/kernel-model_variables/25/.ATTRIBUTES/VARIABLE_VALUE
om
VARIABLE_VALUE,ValueRnnNetwork/ValueRnnNetwork/dense_3/bias-model_variables/26/.ATTRIBUTES/VARIABLE_VALUE
a_
VARIABLE_VALUEValueRnnNetwork/dense_4/kernel-model_variables/27/.ATTRIBUTES/VARIABLE_VALUE
_]
VARIABLE_VALUEValueRnnNetwork/dense_4/bias-model_variables/28/.ATTRIBUTES/VARIABLE_VALUE

(ref
(1

)ref
)1

*ref
*1

actor_network_state

	(state
(1
t
+_actor_network
,_observation_normalizer
(_policy_state_spec
-_policy_step_spec
._value_network
�
_state_spec
/_lstm_encoder
0_projection_networks
1	variables
2trainable_variables
3regularization_losses
4	keras_api
@
5_flat_tensor_spec

6_count
7	_mean_sum
8_var_sum

	(state
(1
�
9_state_spec
:_lstm_encoder
;_postprocessing_layers
<	variables
=trainable_variables
>regularization_losses
?	keras_api
�
_state_spec
@_conv_layer_params
A_input_encoder
B_lstm_network
C_output_encoder
D	variables
Etrainable_variables
Fregularization_losses
G	keras_api
i
H_projection_layer
I	variables
Jtrainable_variables
Kregularization_losses
L	keras_api
^
0
	1

2
3
4
5
6
7
8
9
10
11
12
^
0
	1

2
3
4
5
6
7
8
9
10
11
12
 
�

Mlayers
Nnon_trainable_variables
Ometrics
Player_regularization_losses
1	variables
2trainable_variables
3regularization_losses
Qlayer_metrics
 

0

0

0
 
�
9_state_spec
R_conv_layer_params
S_input_encoder
T_lstm_network
U_output_encoder
V	variables
Wtrainable_variables
Xregularization_losses
Y	keras_api
h

#kernel
$bias
Z	variables
[trainable_variables
\regularization_losses
]	keras_api
^
0
1
2
3
4
5
6
7
 8
!9
"10
#11
$12
^
0
1
2
3
4
5
6
7
 8
!9
"10
#11
$12
 
�

^layers
_non_trainable_variables
`metrics
alayer_regularization_losses
<	variables
=trainable_variables
>regularization_losses
blayer_metrics
 
n
c_postprocessing_layers
d	variables
etrainable_variables
fregularization_losses
g	keras_api
\
hcell
i	variables
jtrainable_variables
kregularization_losses
l	keras_api

m0
N
0
	1

2
3
4
5
6
7
8
9
10
N
0
	1

2
3
4
5
6
7
8
9
10
 
�

nlayers
onon_trainable_variables
pmetrics
qlayer_regularization_losses
D	variables
Etrainable_variables
Fregularization_losses
rlayer_metrics
h

kernel
bias
s	variables
ttrainable_variables
uregularization_losses
v	keras_api

0
1

0
1
 
�

wlayers
xnon_trainable_variables
ymetrics
zlayer_regularization_losses
I	variables
Jtrainable_variables
Kregularization_losses
{layer_metrics

/0
01
 
 
 
 
 
o
|_postprocessing_layers
}	variables
~trainable_variables
regularization_losses
�	keras_api
a
	�cell
�	variables
�trainable_variables
�regularization_losses
�	keras_api

�0
N
0
1
2
3
4
5
6
7
 8
!9
"10
N
0
1
2
3
4
5
6
7
 8
!9
"10
 
�
�layers
�non_trainable_variables
�metrics
 �layer_regularization_losses
V	variables
Wtrainable_variables
Xregularization_losses
�layer_metrics

#0
$1

#0
$1
 
�
�layers
�non_trainable_variables
�metrics
 �layer_regularization_losses
Z	variables
[trainable_variables
\regularization_losses
�layer_metrics

:0
;1
 
 
 
 
 
�0
�1
�2
�3
*
0
	1

2
3
4
5
*
0
	1

2
3
4
5
 
�
�layers
�non_trainable_variables
�metrics
 �layer_regularization_losses
d	variables
etrainable_variables
fregularization_losses
�layer_metrics
�

kernel
recurrent_kernel
bias
�	variables
�trainable_variables
�regularization_losses
�	keras_api

0
1
2

0
1
2
 
�
�layers
�non_trainable_variables
�metrics
 �layer_regularization_losses
i	variables
jtrainable_variables
kregularization_losses
�layer_metrics
l

kernel
bias
�	variables
�trainable_variables
�regularization_losses
�	keras_api

A0
B1
m2
 
 
 
 

0
1

0
1
 
�
�layers
�non_trainable_variables
�metrics
 �layer_regularization_losses
s	variables
ttrainable_variables
uregularization_losses
�layer_metrics

H0
 
 
 
 
 
�0
�1
�2
�3
*
0
1
2
3
4
5
*
0
1
2
3
4
5
 
�
�layers
�non_trainable_variables
�metrics
 �layer_regularization_losses
}	variables
~trainable_variables
regularization_losses
�layer_metrics
�

kernel
recurrent_kernel
 bias
�	variables
�trainable_variables
�regularization_losses
�	keras_api

0
1
 2

0
1
 2
 
�
�layers
�non_trainable_variables
�metrics
 �layer_regularization_losses
�	variables
�trainable_variables
�regularization_losses
�layer_metrics
l

!kernel
"bias
�	variables
�trainable_variables
�regularization_losses
�	keras_api

S0
T1
�2
 
 
 
 
 
 
 
 
 
l

kernel
	bias
�	variables
�trainable_variables
�regularization_losses
�	keras_api
l


kernel
bias
�	variables
�trainable_variables
�regularization_losses
�	keras_api
V
�	variables
�trainable_variables
�regularization_losses
�	keras_api
l

kernel
bias
�	variables
�trainable_variables
�regularization_losses
�	keras_api
 
�0
�1
�2
�3
 
 
 
 

0
1
2

0
1
2
 
�
�layers
�non_trainable_variables
�metrics
 �layer_regularization_losses
�	variables
�trainable_variables
�regularization_losses
�layer_metrics

h0
 
 
 
 

0
1

0
1
 
�
�layers
�non_trainable_variables
�metrics
 �layer_regularization_losses
�	variables
�trainable_variables
�regularization_losses
�layer_metrics
 
 
 
 
 
l

kernel
bias
�	variables
�trainable_variables
�regularization_losses
�	keras_api
l

kernel
bias
�	variables
�trainable_variables
�regularization_losses
�	keras_api
V
�	variables
�trainable_variables
�regularization_losses
�	keras_api
l

kernel
bias
�	variables
�trainable_variables
�regularization_losses
�	keras_api
 
�0
�1
�2
�3
 
 
 
 

0
1
 2

0
1
 2
 
�
�layers
�non_trainable_variables
�metrics
 �layer_regularization_losses
�	variables
�trainable_variables
�regularization_losses
�layer_metrics

�0
 
 
 
 

!0
"1

!0
"1
 
�
�layers
�non_trainable_variables
�metrics
 �layer_regularization_losses
�	variables
�trainable_variables
�regularization_losses
�layer_metrics

0
	1

0
	1
 
�
�layers
�non_trainable_variables
�metrics
 �layer_regularization_losses
�	variables
�trainable_variables
�regularization_losses
�layer_metrics


0
1


0
1
 
�
�layers
�non_trainable_variables
�metrics
 �layer_regularization_losses
�	variables
�trainable_variables
�regularization_losses
�layer_metrics
 
 
 
�
�layers
�non_trainable_variables
�metrics
 �layer_regularization_losses
�	variables
�trainable_variables
�regularization_losses
�layer_metrics

0
1

0
1
 
�
�layers
�non_trainable_variables
�metrics
 �layer_regularization_losses
�	variables
�trainable_variables
�regularization_losses
�layer_metrics
 
 
 
 
 
 
 
 
 
 

0
1

0
1
 
�
�layers
�non_trainable_variables
�metrics
 �layer_regularization_losses
�	variables
�trainable_variables
�regularization_losses
�layer_metrics

0
1

0
1
 
�
�layers
�non_trainable_variables
�metrics
 �layer_regularization_losses
�	variables
�trainable_variables
�regularization_losses
�layer_metrics
 
 
 
�
�layers
�non_trainable_variables
�metrics
 �layer_regularization_losses
�	variables
�trainable_variables
�regularization_losses
�layer_metrics

0
1

0
1
 
�
�layers
�non_trainable_variables
�metrics
 �layer_regularization_losses
�	variables
�trainable_variables
�regularization_losses
�layer_metrics
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
l
action_0/discountPlaceholder*#
_output_shapes
:���������*
dtype0*
shape:���������
�
action_0/observationPlaceholder*/
_output_shapes
:���������*
dtype0*$
shape:���������
j
action_0/rewardPlaceholder*#
_output_shapes
:���������*
dtype0*
shape:���������
m
action_0/step_typePlaceholder*#
_output_shapes
:���������*
dtype0*
shape:���������
�
action_1/actor_network_state/0Placeholder*(
_output_shapes
:����������*
dtype0*
shape:����������
�
action_1/actor_network_state/1Placeholder*(
_output_shapes
:����������*
dtype0*
shape:����������
�
StatefulPartitionedCallStatefulPartitionedCallaction_0/discountaction_0/observationaction_0/rewardaction_0/step_typeaction_1/actor_network_state/0action_1/actor_network_state/1mean_sumcountvar_sumUActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d/kernelSActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d/biasWActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d_1/kernelUActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d_1/biasTActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/kernelRActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/biasMActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/kernelWActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/recurrent_kernelKActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/biasFActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/kernelDActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/biasFActorDistributionRnnNetwork/CategoricalProjectionNetwork/logits/kernelDActorDistributionRnnNetwork/CategoricalProjectionNetwork/logits/bias*!
Tin
2*
Tout
2*
_collective_manager_ids
 *K
_output_shapes9
7:���������:����������:����������*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� */
f*R(
&__inference_signature_wrapper_40981549
]
get_initial_state_batch_sizePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
PartitionedCallPartitionedCallget_initial_state_batch_size*
Tin
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:����������:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� */
f*R(
&__inference_signature_wrapper_40981558
�
PartitionedCall_1PartitionedCall*	
Tin
 *

Tout
 *
_collective_manager_ids
 * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� */
f*R(
&__inference_signature_wrapper_40981570
�
StatefulPartitionedCall_1StatefulPartitionedCallVariable*
Tin
2*
Tout
2	*
_collective_manager_ids
 *
_output_shapes
: *#
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� */
f*R(
&__inference_signature_wrapper_40981566
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameVariable/Read/ReadVariableOpiActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d/kernel/Read/ReadVariableOpgActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d/bias/Read/ReadVariableOpkActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d_1/kernel/Read/ReadVariableOpiActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d_1/bias/Read/ReadVariableOphActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/kernel/Read/ReadVariableOpfActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/bias/Read/ReadVariableOpaActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/kernel/Read/ReadVariableOpkActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/recurrent_kernel/Read/ReadVariableOp_ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/bias/Read/ReadVariableOpZActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/kernel/Read/ReadVariableOpXActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/bias/Read/ReadVariableOpZActorDistributionRnnNetwork/CategoricalProjectionNetwork/logits/kernel/Read/ReadVariableOpXActorDistributionRnnNetwork/CategoricalProjectionNetwork/logits/bias/Read/ReadVariableOpcount/Read/ReadVariableOpmean_sum/Read/ReadVariableOpvar_sum/Read/ReadVariableOpSValueRnnNetwork/ValueRnnNetwork/EncodingNetwork/conv2d_2/kernel/Read/ReadVariableOpQValueRnnNetwork/ValueRnnNetwork/EncodingNetwork/conv2d_2/bias/Read/ReadVariableOpSValueRnnNetwork/ValueRnnNetwork/EncodingNetwork/conv2d_3/kernel/Read/ReadVariableOpQValueRnnNetwork/ValueRnnNetwork/EncodingNetwork/conv2d_3/bias/Read/ReadVariableOpRValueRnnNetwork/ValueRnnNetwork/EncodingNetwork/dense_2/kernel/Read/ReadVariableOpPValueRnnNetwork/ValueRnnNetwork/EncodingNetwork/dense_2/bias/Read/ReadVariableOpKValueRnnNetwork/ValueRnnNetwork/dynamic_unroll_1/kernel/Read/ReadVariableOpUValueRnnNetwork/ValueRnnNetwork/dynamic_unroll_1/recurrent_kernel/Read/ReadVariableOpIValueRnnNetwork/ValueRnnNetwork/dynamic_unroll_1/bias/Read/ReadVariableOpBValueRnnNetwork/ValueRnnNetwork/dense_3/kernel/Read/ReadVariableOp@ValueRnnNetwork/ValueRnnNetwork/dense_3/bias/Read/ReadVariableOp2ValueRnnNetwork/dense_4/kernel/Read/ReadVariableOp0ValueRnnNetwork/dense_4/bias/Read/ReadVariableOpConst*+
Tin$
"2 	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� **
f%R#
!__inference__traced_save_40981694
�
StatefulPartitionedCall_3StatefulPartitionedCallsaver_filenameVariableUActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d/kernelSActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d/biasWActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d_1/kernelUActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d_1/biasTActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/kernelRActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/biasMActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/kernelWActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/recurrent_kernelKActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/biasFActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/kernelDActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/biasFActorDistributionRnnNetwork/CategoricalProjectionNetwork/logits/kernelDActorDistributionRnnNetwork/CategoricalProjectionNetwork/logits/biascountmean_sumvar_sum?ValueRnnNetwork/ValueRnnNetwork/EncodingNetwork/conv2d_2/kernel=ValueRnnNetwork/ValueRnnNetwork/EncodingNetwork/conv2d_2/bias?ValueRnnNetwork/ValueRnnNetwork/EncodingNetwork/conv2d_3/kernel=ValueRnnNetwork/ValueRnnNetwork/EncodingNetwork/conv2d_3/bias>ValueRnnNetwork/ValueRnnNetwork/EncodingNetwork/dense_2/kernel<ValueRnnNetwork/ValueRnnNetwork/EncodingNetwork/dense_2/bias7ValueRnnNetwork/ValueRnnNetwork/dynamic_unroll_1/kernelAValueRnnNetwork/ValueRnnNetwork/dynamic_unroll_1/recurrent_kernel5ValueRnnNetwork/ValueRnnNetwork/dynamic_unroll_1/bias.ValueRnnNetwork/ValueRnnNetwork/dense_3/kernel,ValueRnnNetwork/ValueRnnNetwork/dense_3/biasValueRnnNetwork/dense_4/kernelValueRnnNetwork/dense_4/bias**
Tin#
!2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *-
f(R&
$__inference__traced_restore_40981794ö
��
�
__inference_action_4778247
time_step_step_type
time_step_reward
time_step_discount
time_step_observation&
"policy_state_actor_network_state_0&
"policy_state_actor_network_state_1<
8normalize_observations_normalize_readvariableop_resourceD
@normalize_observations_normalize_truediv_readvariableop_resource>
:normalize_observations_normalize_readvariableop_1_resourceq
mactordistributionrnnnetwork_actordistributionrnnnetwork_encodingnetwork_conv2d_conv2d_readvariableop_resourcer
nactordistributionrnnnetwork_actordistributionrnnnetwork_encodingnetwork_conv2d_biasadd_readvariableop_resources
oactordistributionrnnnetwork_actordistributionrnnnetwork_encodingnetwork_conv2d_1_conv2d_readvariableop_resourcet
pactordistributionrnnnetwork_actordistributionrnnnetwork_encodingnetwork_conv2d_1_biasadd_readvariableop_resourcep
lactordistributionrnnnetwork_actordistributionrnnnetwork_encodingnetwork_dense_matmul_readvariableop_resourceq
mactordistributionrnnnetwork_actordistributionrnnnetwork_encodingnetwork_dense_biasadd_readvariableop_resources
oactordistributionrnnnetwork_actordistributionrnnnetwork_dynamic_unroll_lstm_cell_matmul_readvariableop_resourceu
qactordistributionrnnnetwork_actordistributionrnnnetwork_dynamic_unroll_lstm_cell_matmul_1_readvariableop_resourcet
pactordistributionrnnnetwork_actordistributionrnnnetwork_dynamic_unroll_lstm_cell_biasadd_readvariableop_resourcee
aactordistributionrnnnetwork_actordistributionrnnnetwork_dense_1_tensordot_readvariableop_resourcec
_actordistributionrnnnetwork_actordistributionrnnnetwork_dense_1_biasadd_readvariableop_resourceb
^actordistributionrnnnetwork_categoricalprojectionnetwork_logits_matmul_readvariableop_resourcec
_actordistributionrnnnetwork_categoricalprojectionnetwork_logits_biasadd_readvariableop_resource
identity

identity_1

identity_2��eActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d/BiasAdd/ReadVariableOp�dActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d/Conv2D/ReadVariableOp�gActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d_1/BiasAdd/ReadVariableOp�fActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d_1/Conv2D/ReadVariableOp�dActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOp�cActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/MatMul/ReadVariableOp�VActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/BiasAdd/ReadVariableOp�XActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/ReadVariableOp�gActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/BiasAdd/ReadVariableOp�fActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/MatMul/ReadVariableOp�hActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/MatMul_1/ReadVariableOp�VActorDistributionRnnNetwork/CategoricalProjectionNetwork/logits/BiasAdd/ReadVariableOp�UActorDistributionRnnNetwork/CategoricalProjectionNetwork/logits/MatMul/ReadVariableOp�/normalize_observations/normalize/ReadVariableOp�1normalize_observations/normalize/ReadVariableOp_1�7normalize_observations/normalize/truediv/ReadVariableOp�9normalize_observations/normalize/truediv_1/ReadVariableOpP
ShapeShapetime_step_discount*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice^
packedPackstrided_slice:output:0*
N*
T0*
_output_shapes
:2
packedm
shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB:�2
shape_as_tensor\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis�
concatConcatV2packed:output:0shape_as_tensor:output:0concat/axis:output:0*
N*
T0*
_output_shapes
:2
concat_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constp
zerosFillconcat:output:0zeros/Const:output:0*
T0*(
_output_shapes
:����������2
zerosq
shape_as_tensor_1Const*
_output_shapes
:*
dtype0*
valueB:�2
shape_as_tensor_1`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_1/axis�
concat_1ConcatV2packed:output:0shape_as_tensor_1:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes
:2

concat_1c
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Constx
zeros_1Fillconcat_1:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:����������2	
zeros_1T
Equal/yConst*
_output_shapes
: *
dtype0*
value	B : 2	
Equal/yl
EqualEqualtime_step_step_typeEqual/y:output:0*
T0*#
_output_shapes
:���������2
EqualN
RankConst*
_output_shapes
: *
dtype0*
value	B :2
RankR
Rank_1Const*
_output_shapes
: *
dtype0*
value	B :2
Rank_1R
subSubRank:output:0Rank_1:output:0*
T0*
_output_shapes
: 2
subK
Shape_1Shape	Equal:z:0*
T0
*
_output_shapes
:2	
Shape_1{
ones/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
���������2
ones/Reshape/shaper
ones/ReshapeReshapesub:z:0ones/Reshape/shape:output:0*
T0*
_output_shapes
:2
ones/ReshapeZ

ones/ConstConst*
_output_shapes
: *
dtype0*
value	B :2

ones/Conste
onesFillones/Reshape:output:0ones/Const:output:0*
T0*
_output_shapes
:2
ones`
concat_2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_2/axis�
concat_2ConcatV2Shape_1:output:0ones:output:0concat_2/axis:output:0*
N*
T0*
_output_shapes
:2

concat_2m
ReshapeReshape	Equal:z:0concat_2:output:0*
T0
*'
_output_shapes
:���������2	
Reshape�
SelectV2SelectV2Reshape:output:0zeros:output:0"policy_state_actor_network_state_0*
T0*(
_output_shapes
:����������2

SelectV2�

SelectV2_1SelectV2Reshape:output:0zeros_1:output:0"policy_state_actor_network_state_1*
T0*(
_output_shapes
:����������2

SelectV2_1T
Shape_2Shapetime_step_discount*
T0*
_output_shapes
:2	
Shape_2x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2�
strided_slice_1StridedSliceShape_2:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1d
packed_1Packstrided_slice_1:output:0*
N*
T0*
_output_shapes
:2

packed_1q
shape_as_tensor_2Const*
_output_shapes
:*
dtype0*
valueB:�2
shape_as_tensor_2`
concat_3/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_3/axis�
concat_3ConcatV2packed_1:output:0shape_as_tensor_2:output:0concat_3/axis:output:0*
N*
T0*
_output_shapes
:2

concat_3c
zeros_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_2/Constx
zeros_2Fillconcat_3:output:0zeros_2/Const:output:0*
T0*(
_output_shapes
:����������2	
zeros_2q
shape_as_tensor_3Const*
_output_shapes
:*
dtype0*
valueB:�2
shape_as_tensor_3`
concat_4/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_4/axis�
concat_4ConcatV2packed_1:output:0shape_as_tensor_3:output:0concat_4/axis:output:0*
N*
T0*
_output_shapes
:2

concat_4c
zeros_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_3/Constx
zeros_3Fillconcat_4:output:0zeros_3/Const:output:0*
T0*(
_output_shapes
:����������2	
zeros_3X
	Equal_1/yConst*
_output_shapes
: *
dtype0*
value	B : 2
	Equal_1/yr
Equal_1Equaltime_step_step_typeEqual_1/y:output:0*
T0*#
_output_shapes
:���������2	
Equal_1R
Rank_2Const*
_output_shapes
: *
dtype0*
value	B :2
Rank_2R
Rank_3Const*
_output_shapes
: *
dtype0*
value	B :2
Rank_3X
sub_1SubRank_2:output:0Rank_3:output:0*
T0*
_output_shapes
: 2
sub_1M
Shape_3ShapeEqual_1:z:0*
T0
*
_output_shapes
:2	
Shape_3
ones_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
���������2
ones_1/Reshape/shapez
ones_1/ReshapeReshape	sub_1:z:0ones_1/Reshape/shape:output:0*
T0*
_output_shapes
:2
ones_1/Reshape^
ones_1/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
ones_1/Constm
ones_1Fillones_1/Reshape:output:0ones_1/Const:output:0*
T0*
_output_shapes
:2
ones_1`
concat_5/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_5/axis�
concat_5ConcatV2Shape_3:output:0ones_1:output:0concat_5/axis:output:0*
N*
T0*
_output_shapes
:2

concat_5s
	Reshape_1ReshapeEqual_1:z:0concat_5:output:0*
T0
*'
_output_shapes
:���������2
	Reshape_1�

SelectV2_2SelectV2Reshape_1:output:0zeros_2:output:0SelectV2:output:0*
T0*(
_output_shapes
:����������2

SelectV2_2�

SelectV2_3SelectV2Reshape_1:output:0zeros_3:output:0SelectV2_1:output:0*
T0*(
_output_shapes
:����������2

SelectV2_3�
/normalize_observations/normalize/ReadVariableOpReadVariableOp8normalize_observations_normalize_readvariableop_resource*"
_output_shapes
:*
dtype021
/normalize_observations/normalize/ReadVariableOp�
7normalize_observations/normalize/truediv/ReadVariableOpReadVariableOp@normalize_observations_normalize_truediv_readvariableop_resource*"
_output_shapes
:*
dtype029
7normalize_observations/normalize/truediv/ReadVariableOp�
(normalize_observations/normalize/truedivRealDiv7normalize_observations/normalize/ReadVariableOp:value:0?normalize_observations/normalize/truediv/ReadVariableOp:value:0*
T0*"
_output_shapes
:2*
(normalize_observations/normalize/truediv�
1normalize_observations/normalize/ReadVariableOp_1ReadVariableOp:normalize_observations_normalize_readvariableop_1_resource*"
_output_shapes
:*
dtype023
1normalize_observations/normalize/ReadVariableOp_1�
9normalize_observations/normalize/truediv_1/ReadVariableOpReadVariableOp@normalize_observations_normalize_truediv_readvariableop_resource*"
_output_shapes
:*
dtype02;
9normalize_observations/normalize/truediv_1/ReadVariableOp�
*normalize_observations/normalize/truediv_1RealDiv9normalize_observations/normalize/ReadVariableOp_1:value:0Anormalize_observations/normalize/truediv_1/ReadVariableOp:value:0*
T0*"
_output_shapes
:2,
*normalize_observations/normalize/truediv_1�
8normalize_observations/normalize/normalized_tensor/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:2:
8normalize_observations/normalize/normalized_tensor/add/y�
6normalize_observations/normalize/normalized_tensor/addAddV2.normalize_observations/normalize/truediv_1:z:0Anormalize_observations/normalize/normalized_tensor/add/y:output:0*
T0*"
_output_shapes
:28
6normalize_observations/normalize/normalized_tensor/add�
8normalize_observations/normalize/normalized_tensor/RsqrtRsqrt:normalize_observations/normalize/normalized_tensor/add:z:0*
T0*"
_output_shapes
:2:
8normalize_observations/normalize/normalized_tensor/Rsqrt�
6normalize_observations/normalize/normalized_tensor/mulMultime_step_observation<normalize_observations/normalize/normalized_tensor/Rsqrt:y:0*
T0*/
_output_shapes
:���������28
6normalize_observations/normalize/normalized_tensor/mul�
6normalize_observations/normalize/normalized_tensor/NegNeg,normalize_observations/normalize/truediv:z:0*
T0*"
_output_shapes
:28
6normalize_observations/normalize/normalized_tensor/Neg�
8normalize_observations/normalize/normalized_tensor/mul_1Mul:normalize_observations/normalize/normalized_tensor/Neg:y:0<normalize_observations/normalize/normalized_tensor/Rsqrt:y:0*
T0*"
_output_shapes
:2:
8normalize_observations/normalize/normalized_tensor/mul_1�
8normalize_observations/normalize/normalized_tensor/add_1AddV2:normalize_observations/normalize/normalized_tensor/mul:z:0<normalize_observations/normalize/normalized_tensor/mul_1:z:0*
T0*/
_output_shapes
:���������2:
8normalize_observations/normalize/normalized_tensor/add_1�
Dnormalize_observations/normalize/clipped_normalized_tensor/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �@2F
Dnormalize_observations/normalize/clipped_normalized_tensor/Minimum/y�
Bnormalize_observations/normalize/clipped_normalized_tensor/MinimumMinimum<normalize_observations/normalize/normalized_tensor/add_1:z:0Mnormalize_observations/normalize/clipped_normalized_tensor/Minimum/y:output:0*
T0*/
_output_shapes
:���������2D
Bnormalize_observations/normalize/clipped_normalized_tensor/Minimum�
<normalize_observations/normalize/clipped_normalized_tensor/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ��2>
<normalize_observations/normalize/clipped_normalized_tensor/y�
:normalize_observations/normalize/clipped_normalized_tensorMaximumFnormalize_observations/normalize/clipped_normalized_tensor/Minimum:z:0Enormalize_observations/normalize/clipped_normalized_tensor/y:output:0*
T0*/
_output_shapes
:���������2<
:normalize_observations/normalize/clipped_normalized_tensor�
FActorDistributionRnnNetwork/ActorDistributionRnnNetwork/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2H
FActorDistributionRnnNetwork/ActorDistributionRnnNetwork/ExpandDims/dim�
BActorDistributionRnnNetwork/ActorDistributionRnnNetwork/ExpandDims
ExpandDims>normalize_observations/normalize/clipped_normalized_tensor:z:0OActorDistributionRnnNetwork/ActorDistributionRnnNetwork/ExpandDims/dim:output:0*
T0*3
_output_shapes!
:���������2D
BActorDistributionRnnNetwork/ActorDistributionRnnNetwork/ExpandDims�
HActorDistributionRnnNetwork/ActorDistributionRnnNetwork/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B :2J
HActorDistributionRnnNetwork/ActorDistributionRnnNetwork/ExpandDims_1/dim�
DActorDistributionRnnNetwork/ActorDistributionRnnNetwork/ExpandDims_1
ExpandDimstime_step_step_typeQActorDistributionRnnNetwork/ActorDistributionRnnNetwork/ExpandDims_1/dim:output:0*
T0*'
_output_shapes
:���������2F
DActorDistributionRnnNetwork/ActorDistributionRnnNetwork/ExpandDims_1�
[ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_flatten/ShapeShapeKActorDistributionRnnNetwork/ActorDistributionRnnNetwork/ExpandDims:output:0*
T0*
_output_shapes
:*
out_type0	2]
[ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_flatten/Shape�
cActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_flatten/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"����         2e
cActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_flatten/Reshape/shape�
]ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_flatten/ReshapeReshapeKActorDistributionRnnNetwork/ActorDistributionRnnNetwork/ExpandDims:output:0lActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_flatten/Reshape/shape:output:0*
T0*/
_output_shapes
:���������2_
]ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_flatten/Reshape�
dActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d/Conv2D/ReadVariableOpReadVariableOpmactordistributionrnnnetwork_actordistributionrnnnetwork_encodingnetwork_conv2d_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02f
dActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d/Conv2D/ReadVariableOp�
UActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d/Conv2DConv2DfActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_flatten/Reshape:output:0lActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingVALID*
strides
2W
UActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d/Conv2D�
eActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d/BiasAdd/ReadVariableOpReadVariableOpnactordistributionrnnnetwork_actordistributionrnnnetwork_encodingnetwork_conv2d_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02g
eActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d/BiasAdd/ReadVariableOp�
VActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d/BiasAddBiasAdd^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d/Conv2D:output:0mActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������2X
VActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d/BiasAdd�
SActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d/ReluRelu_ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d/BiasAdd:output:0*
T0*/
_output_shapes
:���������2U
SActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d/Relu�
fActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d_1/Conv2D/ReadVariableOpReadVariableOpoactordistributionrnnnetwork_actordistributionrnnnetwork_encodingnetwork_conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02h
fActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d_1/Conv2D/ReadVariableOp�
WActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d_1/Conv2DConv2DaActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d/Relu:activations:0nActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:��������� *
paddingVALID*
strides
2Y
WActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d_1/Conv2D�
gActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d_1/BiasAdd/ReadVariableOpReadVariableOppactordistributionrnnnetwork_actordistributionrnnnetwork_encodingnetwork_conv2d_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02i
gActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d_1/BiasAdd/ReadVariableOp�
XActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d_1/BiasAddBiasAdd`ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d_1/Conv2D:output:0oActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:��������� 2Z
XActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d_1/BiasAdd�
UActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d_1/ReluReluaActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d_1/BiasAdd:output:0*
T0*/
_output_shapes
:��������� 2W
UActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d_1/Relu�
UActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"�����  2W
UActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/flatten/Const�
WActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/flatten/ReshapeReshapecActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d_1/Relu:activations:0^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/flatten/Const:output:0*
T0*(
_output_shapes
:����������	2Y
WActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/flatten/Reshape�
cActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/MatMul/ReadVariableOpReadVariableOplactordistributionrnnnetwork_actordistributionrnnnetwork_encodingnetwork_dense_matmul_readvariableop_resource* 
_output_shapes
:
�	�*
dtype02e
cActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/MatMul/ReadVariableOp�
TActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/MatMulMatMul`ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/flatten/Reshape:output:0kActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2V
TActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/MatMul�
dActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOpReadVariableOpmactordistributionrnnnetwork_actordistributionrnnnetwork_encodingnetwork_dense_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02f
dActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOp�
UActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/BiasAddBiasAdd^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/MatMul:product:0lActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2W
UActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/BiasAdd�
RActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/ReluRelu^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/BiasAdd:output:0*
T0*(
_output_shapes
:����������2T
RActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/Relu�
kActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2m
kActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/strided_slice/stack�
mActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2o
mActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/strided_slice/stack_1�
mActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2o
mActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/strided_slice/stack_2�
eActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/strided_sliceStridedSlicedActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_flatten/Shape:output:0tActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/strided_slice/stack:output:0vActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/strided_slice/stack_1:output:0vActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask2g
eActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/strided_slice�
]ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/ShapeShape`ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/Relu:activations:0*
T0*
_output_shapes
:*
out_type0	2_
]ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/Shape�
mActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2o
mActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/strided_slice_1/stack�
oActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2q
oActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/strided_slice_1/stack_1�
oActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2q
oActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/strided_slice_1/stack_2�
gActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/strided_slice_1StridedSlicefActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/Shape:output:0vActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/strided_slice_1/stack:output:0xActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/strided_slice_1/stack_1:output:0xActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*
end_mask2i
gActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/strided_slice_1�
cActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2e
cActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/concat/axis�
^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/concatConcatV2nActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/strided_slice:output:0pActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/strided_slice_1:output:0lActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/concat/axis:output:0*
N*
T0	*
_output_shapes
:2`
^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/concat�
_ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/ReshapeReshape`ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/Relu:activations:0gActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/concat:output:0*
T0*
Tshape0	*,
_output_shapes
:����������2a
_ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/Reshape�
>ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/mask/yConst*
_output_shapes
: *
dtype0*
value	B : 2@
>ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/mask/y�
<ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/maskEqualMActorDistributionRnnNetwork/ActorDistributionRnnNetwork/ExpandDims_1:output:0GActorDistributionRnnNetwork/ActorDistributionRnnNetwork/mask/y:output:0*
T0*'
_output_shapes
:���������2>
<ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/mask�
KActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/RankConst*
_output_shapes
: *
dtype0*
value	B :2M
KActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/Rank�
RActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/range/startConst*
_output_shapes
: *
dtype0*
value	B :2T
RActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/range/start�
RActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :2T
RActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/range/delta�
LActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/rangeRange[ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/range/start:output:0TActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/Rank:output:0[ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/range/delta:output:0*
_output_shapes
:2N
LActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/range�
VActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB"       2X
VActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/concat/values_0�
RActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2T
RActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/concat/axis�
MActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/concatConcatV2_ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/concat/values_0:output:0UActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/range:output:0[ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/concat/axis:output:0*
N*
T0*
_output_shapes
:2O
MActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/concat�
PActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/transpose	TransposehActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/Reshape:output:0VActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/concat:output:0*
T0*,
_output_shapes
:����������2R
PActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/transpose�
LActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/ShapeShapeTActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/transpose:y:0*
T0*
_output_shapes
:2N
LActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/Shape�
ZActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2\
ZActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/strided_slice/stack�
\ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2^
\ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/strided_slice/stack_1�
\ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2^
\ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/strided_slice/stack_2�
TActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/strided_sliceStridedSliceUActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/Shape:output:0cActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/strided_slice/stack:output:0eActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/strided_slice/stack_1:output:0eActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2V
TActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/strided_slice�
WActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2Y
WActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/transpose_1/perm�
RActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/transpose_1	Transpose@ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/mask:z:0`ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/transpose_1/perm:output:0*
T0
*'
_output_shapes
:���������2T
RActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/transpose_1�
RActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :�2T
RActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros/mul/y�
PActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros/mulMul]ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/strided_slice:output:0[ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros/mul/y:output:0*
T0*
_output_shapes
: 2R
PActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros/mul�
SActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :�2U
SActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros/Less/y�
QActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros/LessLessTActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros/mul:z:0\ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros/Less/y:output:0*
T0*
_output_shapes
: 2S
QActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros/Less�
UActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :�2W
UActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros/packed/1�
SActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros/packedPack]ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/strided_slice:output:0^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2U
SActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros/packed�
RActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2T
RActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros/Const�
LActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zerosFill\ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros/packed:output:0[ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros/Const:output:0*
T0*(
_output_shapes
:����������2N
LActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros�
TActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :�2V
TActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_1/mul/y�
RActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_1/mulMul]ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/strided_slice:output:0]ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2T
RActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_1/mul�
UActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :�2W
UActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_1/Less/y�
SActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_1/LessLessVActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_1/mul:z:0^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2U
SActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_1/Less�
WActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :�2Y
WActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_1/packed/1�
UActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_1/packedPack]ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/strided_slice:output:0`ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2W
UActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_1/packed�
TActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2V
TActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_1/Const�
NActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_1Fill^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_1/packed:output:0]ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_1/Const:output:0*
T0*(
_output_shapes
:����������2P
NActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_1�
NActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/SqueezeSqueezeTActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/transpose:y:0*
T0*(
_output_shapes
:����������*
squeeze_dims
 2P
NActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/Squeeze�
PActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/Squeeze_1SqueezeVActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/transpose_1:y:0*
T0
*#
_output_shapes
:���������*
squeeze_dims
 2R
PActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/Squeeze_1�
MActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/SelectSelectYActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/Squeeze_1:output:0UActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros:output:0SelectV2_2:output:0*
T0*(
_output_shapes
:����������2O
MActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/Select�
OActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/Select_1SelectYActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/Squeeze_1:output:0WActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_1:output:0SelectV2_3:output:0*
T0*(
_output_shapes
:����������2Q
OActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/Select_1�
fActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/MatMul/ReadVariableOpReadVariableOpoactordistributionrnnnetwork_actordistributionrnnnetwork_dynamic_unroll_lstm_cell_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype02h
fActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/MatMul/ReadVariableOp�
WActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/MatMulMatMulWActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/Squeeze:output:0nActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2Y
WActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/MatMul�
hActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/MatMul_1/ReadVariableOpReadVariableOpqactordistributionrnnnetwork_actordistributionrnnnetwork_dynamic_unroll_lstm_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
��*
dtype02j
hActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/MatMul_1/ReadVariableOp�
YActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/MatMul_1MatMulVActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/Select:output:0pActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2[
YActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/MatMul_1�
TActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/addAddV2aActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/MatMul:product:0cActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:����������2V
TActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/add�
gActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/BiasAdd/ReadVariableOpReadVariableOppactordistributionrnnnetwork_actordistributionrnnnetwork_dynamic_unroll_lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02i
gActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/BiasAdd/ReadVariableOp�
XActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/BiasAddBiasAddXActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/add:z:0oActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2Z
XActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/BiasAdd�
VActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/ConstConst*
_output_shapes
: *
dtype0*
value	B :2X
VActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/Const�
`ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2b
`ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/split/split_dim�
VActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/splitSplitiActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/split/split_dim:output:0aActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:����������:����������:����������:����������*
	num_split2X
VActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/split�
XActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/SigmoidSigmoid_ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/split:output:0*
T0*(
_output_shapes
:����������2Z
XActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/Sigmoid�
ZActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/Sigmoid_1Sigmoid_ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/split:output:1*
T0*(
_output_shapes
:����������2\
ZActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/Sigmoid_1�
TActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/mulMul^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/Sigmoid_1:y:0XActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/Select_1:output:0*
T0*(
_output_shapes
:����������2V
TActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/mul�
UActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/TanhTanh_ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/split:output:2*
T0*(
_output_shapes
:����������2W
UActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/Tanh�
VActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/mul_1Mul\ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/Sigmoid:y:0YActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/Tanh:y:0*
T0*(
_output_shapes
:����������2X
VActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/mul_1�
VActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/add_1AddV2XActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/mul:z:0ZActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:����������2X
VActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/add_1�
ZActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/Sigmoid_2Sigmoid_ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/split:output:3*
T0*(
_output_shapes
:����������2\
ZActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/Sigmoid_2�
WActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/Tanh_1TanhZActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:����������2Y
WActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/Tanh_1�
VActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/mul_2Mul^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/Sigmoid_2:y:0[ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/Tanh_1:y:0*
T0*(
_output_shapes
:����������2X
VActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/mul_2�
UActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2W
UActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/ExpandDims/dim�
QActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/ExpandDims
ExpandDimsZActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/mul_2:z:0^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/ExpandDims/dim:output:0*
T0*,
_output_shapes
:����������2S
QActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/ExpandDims�
XActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/ReadVariableOpReadVariableOpaactordistributionrnnnetwork_actordistributionrnnnetwork_dense_1_tensordot_readvariableop_resource* 
_output_shapes
:
��*
dtype02Z
XActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/ReadVariableOp�
NActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2P
NActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/axes�
NActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2P
NActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/free�
OActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/ShapeShapeZActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/ExpandDims:output:0*
T0*
_output_shapes
:2Q
OActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/Shape�
WActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2Y
WActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/GatherV2/axis�
RActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/GatherV2GatherV2XActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/Shape:output:0WActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/free:output:0`ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2T
RActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/GatherV2�
YActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2[
YActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/GatherV2_1/axis�
TActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/GatherV2_1GatherV2XActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/Shape:output:0WActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/axes:output:0bActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2V
TActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/GatherV2_1�
OActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2Q
OActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/Const�
NActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/ProdProd[ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/GatherV2:output:0XActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/Const:output:0*
T0*
_output_shapes
: 2P
NActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/Prod�
QActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2S
QActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/Const_1�
PActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/Prod_1Prod]ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/GatherV2_1:output:0ZActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2R
PActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/Prod_1�
UActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2W
UActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/concat/axis�
PActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/concatConcatV2WActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/free:output:0WActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/axes:output:0^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2R
PActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/concat�
OActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/stackPackWActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/Prod:output:0YActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2Q
OActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/stack�
SActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/transpose	TransposeZActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/ExpandDims:output:0YActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/concat:output:0*
T0*,
_output_shapes
:����������2U
SActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/transpose�
QActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/ReshapeReshapeWActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/transpose:y:0XActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/stack:output:0*
T0*0
_output_shapes
:������������������2S
QActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/Reshape�
PActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/MatMulMatMulZActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/Reshape:output:0`ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2R
PActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/MatMul�
QActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:�2S
QActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/Const_2�
WActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2Y
WActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/concat_1/axis�
RActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/concat_1ConcatV2[ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/GatherV2:output:0ZActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/Const_2:output:0`ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2T
RActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/concat_1�
IActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/TensordotReshapeZActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/MatMul:product:0[ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:����������2K
IActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot�
VActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/BiasAdd/ReadVariableOpReadVariableOp_actordistributionrnnnetwork_actordistributionrnnnetwork_dense_1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02X
VActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/BiasAdd/ReadVariableOp�
GActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/BiasAddBiasAddRActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot:output:0^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:����������2I
GActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/BiasAdd�
DActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/ReluReluPActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/BiasAdd:output:0*
T0*,
_output_shapes
:����������2F
DActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Relu�
?ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/SqueezeSqueezeRActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Relu:activations:0*
T0*(
_output_shapes
:����������*
squeeze_dims
2A
?ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/Squeeze�
UActorDistributionRnnNetwork/CategoricalProjectionNetwork/logits/MatMul/ReadVariableOpReadVariableOp^actordistributionrnnnetwork_categoricalprojectionnetwork_logits_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype02W
UActorDistributionRnnNetwork/CategoricalProjectionNetwork/logits/MatMul/ReadVariableOp�
FActorDistributionRnnNetwork/CategoricalProjectionNetwork/logits/MatMulMatMulHActorDistributionRnnNetwork/ActorDistributionRnnNetwork/Squeeze:output:0]ActorDistributionRnnNetwork/CategoricalProjectionNetwork/logits/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2H
FActorDistributionRnnNetwork/CategoricalProjectionNetwork/logits/MatMul�
VActorDistributionRnnNetwork/CategoricalProjectionNetwork/logits/BiasAdd/ReadVariableOpReadVariableOp_actordistributionrnnnetwork_categoricalprojectionnetwork_logits_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02X
VActorDistributionRnnNetwork/CategoricalProjectionNetwork/logits/BiasAdd/ReadVariableOp�
GActorDistributionRnnNetwork/CategoricalProjectionNetwork/logits/BiasAddBiasAddPActorDistributionRnnNetwork/CategoricalProjectionNetwork/logits/MatMul:product:0^ActorDistributionRnnNetwork/CategoricalProjectionNetwork/logits/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2I
GActorDistributionRnnNetwork/CategoricalProjectionNetwork/logits/BiasAdd�
FActorDistributionRnnNetwork/CategoricalProjectionNetwork/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"����   2H
FActorDistributionRnnNetwork/CategoricalProjectionNetwork/Reshape/shape�
@ActorDistributionRnnNetwork/CategoricalProjectionNetwork/ReshapeReshapePActorDistributionRnnNetwork/CategoricalProjectionNetwork/logits/BiasAdd:output:0OActorDistributionRnnNetwork/CategoricalProjectionNetwork/Reshape/shape:output:0*
T0*'
_output_shapes
:���������2B
@ActorDistributionRnnNetwork/CategoricalProjectionNetwork/Reshape�
ZActorDistributionRnnNetwork_CategoricalProjectionNetwork_Categorical/mode/ArgMax/dimensionConst*
_output_shapes
: *
dtype0*
valueB :
���������2\
ZActorDistributionRnnNetwork_CategoricalProjectionNetwork_Categorical/mode/ArgMax/dimension�
PActorDistributionRnnNetwork_CategoricalProjectionNetwork_Categorical/mode/ArgMaxArgMaxIActorDistributionRnnNetwork/CategoricalProjectionNetwork/Reshape:output:0cActorDistributionRnnNetwork_CategoricalProjectionNetwork_Categorical/mode/ArgMax/dimension:output:0*
T0*#
_output_shapes
:���������2R
PActorDistributionRnnNetwork_CategoricalProjectionNetwork_Categorical/mode/ArgMax�
NActorDistributionRnnNetwork_CategoricalProjectionNetwork_Categorical/mode/CastCastYActorDistributionRnnNetwork_CategoricalProjectionNetwork_Categorical/mode/ArgMax:output:0*

DstT0*

SrcT0	*#
_output_shapes
:���������2P
NActorDistributionRnnNetwork_CategoricalProjectionNetwork_Categorical/mode/Castj
Deterministic/atolConst*
_output_shapes
: *
dtype0*
value	B : 2
Deterministic/atolj
Deterministic/rtolConst*
_output_shapes
: *
dtype0*
value	B : 2
Deterministic/rtol�
#Deterministic_1/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB 2%
#Deterministic_1/sample/sample_shape�
Deterministic_1/sample/ShapeShapeRActorDistributionRnnNetwork_CategoricalProjectionNetwork_Categorical/mode/Cast:y:0*
T0*
_output_shapes
:2
Deterministic_1/sample/Shape�
'Deterministic_1/sample/BroadcastArgs/s1Const*
_output_shapes
: *
dtype0*
valueB 2)
'Deterministic_1/sample/BroadcastArgs/s1�
$Deterministic_1/sample/BroadcastArgsBroadcastArgs%Deterministic_1/sample/Shape:output:00Deterministic_1/sample/BroadcastArgs/s1:output:0*
_output_shapes
:2&
$Deterministic_1/sample/BroadcastArgs
Deterministic_1/sample/ConstConst*
_output_shapes
: *
dtype0*
valueB 2
Deterministic_1/sample/Const�
&Deterministic_1/sample/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:2(
&Deterministic_1/sample/concat/values_0�
"Deterministic_1/sample/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2$
"Deterministic_1/sample/concat/axis�
Deterministic_1/sample/concatConcatV2/Deterministic_1/sample/concat/values_0:output:0)Deterministic_1/sample/BroadcastArgs:r0:0%Deterministic_1/sample/Const:output:0+Deterministic_1/sample/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Deterministic_1/sample/concat�
"Deterministic_1/sample/BroadcastToBroadcastToRActorDistributionRnnNetwork_CategoricalProjectionNetwork_Categorical/mode/Cast:y:0&Deterministic_1/sample/concat:output:0*
T0*'
_output_shapes
:���������2$
"Deterministic_1/sample/BroadcastTo�
Deterministic_1/sample/Shape_1Shape+Deterministic_1/sample/BroadcastTo:output:0*
T0*
_output_shapes
:2 
Deterministic_1/sample/Shape_1�
*Deterministic_1/sample/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2,
*Deterministic_1/sample/strided_slice/stack�
,Deterministic_1/sample/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2.
,Deterministic_1/sample/strided_slice/stack_1�
,Deterministic_1/sample/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2.
,Deterministic_1/sample/strided_slice/stack_2�
$Deterministic_1/sample/strided_sliceStridedSlice'Deterministic_1/sample/Shape_1:output:03Deterministic_1/sample/strided_slice/stack:output:05Deterministic_1/sample/strided_slice/stack_1:output:05Deterministic_1/sample/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*
end_mask2&
$Deterministic_1/sample/strided_slice�
$Deterministic_1/sample/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2&
$Deterministic_1/sample/concat_1/axis�
Deterministic_1/sample/concat_1ConcatV2,Deterministic_1/sample/sample_shape:output:0-Deterministic_1/sample/strided_slice:output:0-Deterministic_1/sample/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2!
Deterministic_1/sample/concat_1�
Deterministic_1/sample/ReshapeReshape+Deterministic_1/sample/BroadcastTo:output:0(Deterministic_1/sample/concat_1:output:0*
T0*#
_output_shapes
:���������2 
Deterministic_1/sample/Reshapet
clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
value	B :2
clip_by_value/Minimum/y�
clip_by_value/MinimumMinimum'Deterministic_1/sample/Reshape:output:0 clip_by_value/Minimum/y:output:0*
T0*#
_output_shapes
:���������2
clip_by_value/Minimumd
clip_by_value/yConst*
_output_shapes
: *
dtype0*
value	B : 2
clip_by_value/y�
clip_by_valueMaximumclip_by_value/Minimum:z:0clip_by_value/y:output:0*
T0*#
_output_shapes
:���������2
clip_by_value�
IdentityIdentityclip_by_value:z:0f^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d/BiasAdd/ReadVariableOpe^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d/Conv2D/ReadVariableOph^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d_1/BiasAdd/ReadVariableOpg^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d_1/Conv2D/ReadVariableOpe^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOpd^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/MatMul/ReadVariableOpW^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/BiasAdd/ReadVariableOpY^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/ReadVariableOph^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/BiasAdd/ReadVariableOpg^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/MatMul/ReadVariableOpi^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/MatMul_1/ReadVariableOpW^ActorDistributionRnnNetwork/CategoricalProjectionNetwork/logits/BiasAdd/ReadVariableOpV^ActorDistributionRnnNetwork/CategoricalProjectionNetwork/logits/MatMul/ReadVariableOp0^normalize_observations/normalize/ReadVariableOp2^normalize_observations/normalize/ReadVariableOp_18^normalize_observations/normalize/truediv/ReadVariableOp:^normalize_observations/normalize/truediv_1/ReadVariableOp*
T0*#
_output_shapes
:���������2

Identity�

Identity_1IdentityZActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/mul_2:z:0f^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d/BiasAdd/ReadVariableOpe^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d/Conv2D/ReadVariableOph^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d_1/BiasAdd/ReadVariableOpg^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d_1/Conv2D/ReadVariableOpe^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOpd^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/MatMul/ReadVariableOpW^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/BiasAdd/ReadVariableOpY^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/ReadVariableOph^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/BiasAdd/ReadVariableOpg^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/MatMul/ReadVariableOpi^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/MatMul_1/ReadVariableOpW^ActorDistributionRnnNetwork/CategoricalProjectionNetwork/logits/BiasAdd/ReadVariableOpV^ActorDistributionRnnNetwork/CategoricalProjectionNetwork/logits/MatMul/ReadVariableOp0^normalize_observations/normalize/ReadVariableOp2^normalize_observations/normalize/ReadVariableOp_18^normalize_observations/normalize/truediv/ReadVariableOp:^normalize_observations/normalize/truediv_1/ReadVariableOp*
T0*(
_output_shapes
:����������2

Identity_1�

Identity_2IdentityZActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/add_1:z:0f^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d/BiasAdd/ReadVariableOpe^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d/Conv2D/ReadVariableOph^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d_1/BiasAdd/ReadVariableOpg^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d_1/Conv2D/ReadVariableOpe^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOpd^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/MatMul/ReadVariableOpW^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/BiasAdd/ReadVariableOpY^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/ReadVariableOph^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/BiasAdd/ReadVariableOpg^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/MatMul/ReadVariableOpi^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/MatMul_1/ReadVariableOpW^ActorDistributionRnnNetwork/CategoricalProjectionNetwork/logits/BiasAdd/ReadVariableOpV^ActorDistributionRnnNetwork/CategoricalProjectionNetwork/logits/MatMul/ReadVariableOp0^normalize_observations/normalize/ReadVariableOp2^normalize_observations/normalize/ReadVariableOp_18^normalize_observations/normalize/truediv/ReadVariableOp:^normalize_observations/normalize/truediv_1/ReadVariableOp*
T0*(
_output_shapes
:����������2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*�
_input_shapes�
�:���������:���������:���������:���������:����������:����������::::::::::::::::2�
eActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d/BiasAdd/ReadVariableOpeActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d/BiasAdd/ReadVariableOp2�
dActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d/Conv2D/ReadVariableOpdActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d/Conv2D/ReadVariableOp2�
gActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d_1/BiasAdd/ReadVariableOpgActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d_1/BiasAdd/ReadVariableOp2�
fActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d_1/Conv2D/ReadVariableOpfActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d_1/Conv2D/ReadVariableOp2�
dActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOpdActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOp2�
cActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/MatMul/ReadVariableOpcActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/MatMul/ReadVariableOp2�
VActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/BiasAdd/ReadVariableOpVActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/BiasAdd/ReadVariableOp2�
XActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/ReadVariableOpXActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/ReadVariableOp2�
gActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/BiasAdd/ReadVariableOpgActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/BiasAdd/ReadVariableOp2�
fActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/MatMul/ReadVariableOpfActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/MatMul/ReadVariableOp2�
hActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/MatMul_1/ReadVariableOphActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/MatMul_1/ReadVariableOp2�
VActorDistributionRnnNetwork/CategoricalProjectionNetwork/logits/BiasAdd/ReadVariableOpVActorDistributionRnnNetwork/CategoricalProjectionNetwork/logits/BiasAdd/ReadVariableOp2�
UActorDistributionRnnNetwork/CategoricalProjectionNetwork/logits/MatMul/ReadVariableOpUActorDistributionRnnNetwork/CategoricalProjectionNetwork/logits/MatMul/ReadVariableOp2b
/normalize_observations/normalize/ReadVariableOp/normalize_observations/normalize/ReadVariableOp2f
1normalize_observations/normalize/ReadVariableOp_11normalize_observations/normalize/ReadVariableOp_12r
7normalize_observations/normalize/truediv/ReadVariableOp7normalize_observations/normalize/truediv/ReadVariableOp2v
9normalize_observations/normalize/truediv_1/ReadVariableOp9normalize_observations/normalize/truediv_1/ReadVariableOp:X T
#
_output_shapes
:���������
-
_user_specified_nametime_step/step_type:UQ
#
_output_shapes
:���������
*
_user_specified_nametime_step/reward:WS
#
_output_shapes
:���������
,
_user_specified_nametime_step/discount:fb
/
_output_shapes
:���������
/
_user_specified_nametime_step/observation:lh
(
_output_shapes
:����������
<
_user_specified_name$"policy_state/actor_network_state/0:lh
(
_output_shapes
:����������
<
_user_specified_name$"policy_state/actor_network_state/1
�
�
+__inference_function_with_signature_4777621
	step_type

reward
discount
observation
actor_network_state_0
actor_network_state_1
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14
identity

identity_1

identity_2��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCall	step_typerewarddiscountobservationactor_network_state_0actor_network_state_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*!
Tin
2*
Tout
2*
_collective_manager_ids
 *K
_output_shapes9
7:���������:����������:����������*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *#
fR
__inference_action_47775822
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*#
_output_shapes
:���������2

Identity�

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*(
_output_shapes
:����������2

Identity_1�

Identity_2Identity StatefulPartitionedCall:output:2^StatefulPartitionedCall*
T0*(
_output_shapes
:����������2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*�
_input_shapes�
�:���������:���������:���������:���������:����������:����������::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:P L
#
_output_shapes
:���������
%
_user_specified_name0/step_type:MI
#
_output_shapes
:���������
"
_user_specified_name
0/reward:OK
#
_output_shapes
:���������
$
_user_specified_name
0/discount:^Z
/
_output_shapes
:���������
'
_user_specified_name0/observation:a]
(
_output_shapes
:����������
1
_user_specified_name1/actor_network_state/0:a]
(
_output_shapes
:����������
1
_user_specified_name1/actor_network_state/1
��
�
#__inference_distribution_fn_4778491
	step_type

reward
discount
observation
actor_network_state_0
actor_network_state_1<
8normalize_observations_normalize_readvariableop_resourceD
@normalize_observations_normalize_truediv_readvariableop_resource>
:normalize_observations_normalize_readvariableop_1_resourceq
mactordistributionrnnnetwork_actordistributionrnnnetwork_encodingnetwork_conv2d_conv2d_readvariableop_resourcer
nactordistributionrnnnetwork_actordistributionrnnnetwork_encodingnetwork_conv2d_biasadd_readvariableop_resources
oactordistributionrnnnetwork_actordistributionrnnnetwork_encodingnetwork_conv2d_1_conv2d_readvariableop_resourcet
pactordistributionrnnnetwork_actordistributionrnnnetwork_encodingnetwork_conv2d_1_biasadd_readvariableop_resourcep
lactordistributionrnnnetwork_actordistributionrnnnetwork_encodingnetwork_dense_matmul_readvariableop_resourceq
mactordistributionrnnnetwork_actordistributionrnnnetwork_encodingnetwork_dense_biasadd_readvariableop_resources
oactordistributionrnnnetwork_actordistributionrnnnetwork_dynamic_unroll_lstm_cell_matmul_readvariableop_resourceu
qactordistributionrnnnetwork_actordistributionrnnnetwork_dynamic_unroll_lstm_cell_matmul_1_readvariableop_resourcet
pactordistributionrnnnetwork_actordistributionrnnnetwork_dynamic_unroll_lstm_cell_biasadd_readvariableop_resourcee
aactordistributionrnnnetwork_actordistributionrnnnetwork_dense_1_tensordot_readvariableop_resourcec
_actordistributionrnnnetwork_actordistributionrnnnetwork_dense_1_biasadd_readvariableop_resourceb
^actordistributionrnnnetwork_categoricalprojectionnetwork_logits_matmul_readvariableop_resourcec
_actordistributionrnnnetwork_categoricalprojectionnetwork_logits_biasadd_readvariableop_resource
identity

identity_1

identity_2��eActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d/BiasAdd/ReadVariableOp�dActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d/Conv2D/ReadVariableOp�gActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d_1/BiasAdd/ReadVariableOp�fActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d_1/Conv2D/ReadVariableOp�dActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOp�cActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/MatMul/ReadVariableOp�VActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/BiasAdd/ReadVariableOp�XActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/ReadVariableOp�gActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/BiasAdd/ReadVariableOp�fActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/MatMul/ReadVariableOp�hActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/MatMul_1/ReadVariableOp�VActorDistributionRnnNetwork/CategoricalProjectionNetwork/logits/BiasAdd/ReadVariableOp�UActorDistributionRnnNetwork/CategoricalProjectionNetwork/logits/MatMul/ReadVariableOp�/normalize_observations/normalize/ReadVariableOp�1normalize_observations/normalize/ReadVariableOp_1�7normalize_observations/normalize/truediv/ReadVariableOp�9normalize_observations/normalize/truediv_1/ReadVariableOpF
ShapeShapediscount*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice^
packedPackstrided_slice:output:0*
N*
T0*
_output_shapes
:2
packedm
shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB:�2
shape_as_tensor\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis�
concatConcatV2packed:output:0shape_as_tensor:output:0concat/axis:output:0*
N*
T0*
_output_shapes
:2
concat_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constp
zerosFillconcat:output:0zeros/Const:output:0*
T0*(
_output_shapes
:����������2
zerosq
shape_as_tensor_1Const*
_output_shapes
:*
dtype0*
valueB:�2
shape_as_tensor_1`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_1/axis�
concat_1ConcatV2packed:output:0shape_as_tensor_1:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes
:2

concat_1c
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Constx
zeros_1Fillconcat_1:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:����������2	
zeros_1T
Equal/yConst*
_output_shapes
: *
dtype0*
value	B : 2	
Equal/yb
EqualEqual	step_typeEqual/y:output:0*
T0*#
_output_shapes
:���������2
EqualN
RankConst*
_output_shapes
: *
dtype0*
value	B :2
RankR
Rank_1Const*
_output_shapes
: *
dtype0*
value	B :2
Rank_1R
subSubRank:output:0Rank_1:output:0*
T0*
_output_shapes
: 2
subK
Shape_1Shape	Equal:z:0*
T0
*
_output_shapes
:2	
Shape_1{
ones/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
���������2
ones/Reshape/shaper
ones/ReshapeReshapesub:z:0ones/Reshape/shape:output:0*
T0*
_output_shapes
:2
ones/ReshapeZ

ones/ConstConst*
_output_shapes
: *
dtype0*
value	B :2

ones/Conste
onesFillones/Reshape:output:0ones/Const:output:0*
T0*
_output_shapes
:2
ones`
concat_2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_2/axis�
concat_2ConcatV2Shape_1:output:0ones:output:0concat_2/axis:output:0*
N*
T0*
_output_shapes
:2

concat_2m
ReshapeReshape	Equal:z:0concat_2:output:0*
T0
*'
_output_shapes
:���������2	
Reshape�
SelectV2SelectV2Reshape:output:0zeros:output:0actor_network_state_0*
T0*(
_output_shapes
:����������2

SelectV2�

SelectV2_1SelectV2Reshape:output:0zeros_1:output:0actor_network_state_1*
T0*(
_output_shapes
:����������2

SelectV2_1J
Shape_2Shapediscount*
T0*
_output_shapes
:2	
Shape_2x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2�
strided_slice_1StridedSliceShape_2:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1d
packed_1Packstrided_slice_1:output:0*
N*
T0*
_output_shapes
:2

packed_1q
shape_as_tensor_2Const*
_output_shapes
:*
dtype0*
valueB:�2
shape_as_tensor_2`
concat_3/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_3/axis�
concat_3ConcatV2packed_1:output:0shape_as_tensor_2:output:0concat_3/axis:output:0*
N*
T0*
_output_shapes
:2

concat_3c
zeros_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_2/Constx
zeros_2Fillconcat_3:output:0zeros_2/Const:output:0*
T0*(
_output_shapes
:����������2	
zeros_2q
shape_as_tensor_3Const*
_output_shapes
:*
dtype0*
valueB:�2
shape_as_tensor_3`
concat_4/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_4/axis�
concat_4ConcatV2packed_1:output:0shape_as_tensor_3:output:0concat_4/axis:output:0*
N*
T0*
_output_shapes
:2

concat_4c
zeros_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_3/Constx
zeros_3Fillconcat_4:output:0zeros_3/Const:output:0*
T0*(
_output_shapes
:����������2	
zeros_3X
	Equal_1/yConst*
_output_shapes
: *
dtype0*
value	B : 2
	Equal_1/yh
Equal_1Equal	step_typeEqual_1/y:output:0*
T0*#
_output_shapes
:���������2	
Equal_1R
Rank_2Const*
_output_shapes
: *
dtype0*
value	B :2
Rank_2R
Rank_3Const*
_output_shapes
: *
dtype0*
value	B :2
Rank_3X
sub_1SubRank_2:output:0Rank_3:output:0*
T0*
_output_shapes
: 2
sub_1M
Shape_3ShapeEqual_1:z:0*
T0
*
_output_shapes
:2	
Shape_3
ones_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
���������2
ones_1/Reshape/shapez
ones_1/ReshapeReshape	sub_1:z:0ones_1/Reshape/shape:output:0*
T0*
_output_shapes
:2
ones_1/Reshape^
ones_1/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
ones_1/Constm
ones_1Fillones_1/Reshape:output:0ones_1/Const:output:0*
T0*
_output_shapes
:2
ones_1`
concat_5/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_5/axis�
concat_5ConcatV2Shape_3:output:0ones_1:output:0concat_5/axis:output:0*
N*
T0*
_output_shapes
:2

concat_5s
	Reshape_1ReshapeEqual_1:z:0concat_5:output:0*
T0
*'
_output_shapes
:���������2
	Reshape_1�

SelectV2_2SelectV2Reshape_1:output:0zeros_2:output:0SelectV2:output:0*
T0*(
_output_shapes
:����������2

SelectV2_2�

SelectV2_3SelectV2Reshape_1:output:0zeros_3:output:0SelectV2_1:output:0*
T0*(
_output_shapes
:����������2

SelectV2_3�
/normalize_observations/normalize/ReadVariableOpReadVariableOp8normalize_observations_normalize_readvariableop_resource*"
_output_shapes
:*
dtype021
/normalize_observations/normalize/ReadVariableOp�
7normalize_observations/normalize/truediv/ReadVariableOpReadVariableOp@normalize_observations_normalize_truediv_readvariableop_resource*"
_output_shapes
:*
dtype029
7normalize_observations/normalize/truediv/ReadVariableOp�
(normalize_observations/normalize/truedivRealDiv7normalize_observations/normalize/ReadVariableOp:value:0?normalize_observations/normalize/truediv/ReadVariableOp:value:0*
T0*"
_output_shapes
:2*
(normalize_observations/normalize/truediv�
1normalize_observations/normalize/ReadVariableOp_1ReadVariableOp:normalize_observations_normalize_readvariableop_1_resource*"
_output_shapes
:*
dtype023
1normalize_observations/normalize/ReadVariableOp_1�
9normalize_observations/normalize/truediv_1/ReadVariableOpReadVariableOp@normalize_observations_normalize_truediv_readvariableop_resource*"
_output_shapes
:*
dtype02;
9normalize_observations/normalize/truediv_1/ReadVariableOp�
*normalize_observations/normalize/truediv_1RealDiv9normalize_observations/normalize/ReadVariableOp_1:value:0Anormalize_observations/normalize/truediv_1/ReadVariableOp:value:0*
T0*"
_output_shapes
:2,
*normalize_observations/normalize/truediv_1�
8normalize_observations/normalize/normalized_tensor/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:2:
8normalize_observations/normalize/normalized_tensor/add/y�
6normalize_observations/normalize/normalized_tensor/addAddV2.normalize_observations/normalize/truediv_1:z:0Anormalize_observations/normalize/normalized_tensor/add/y:output:0*
T0*"
_output_shapes
:28
6normalize_observations/normalize/normalized_tensor/add�
8normalize_observations/normalize/normalized_tensor/RsqrtRsqrt:normalize_observations/normalize/normalized_tensor/add:z:0*
T0*"
_output_shapes
:2:
8normalize_observations/normalize/normalized_tensor/Rsqrt�
6normalize_observations/normalize/normalized_tensor/mulMulobservation<normalize_observations/normalize/normalized_tensor/Rsqrt:y:0*
T0*/
_output_shapes
:���������28
6normalize_observations/normalize/normalized_tensor/mul�
6normalize_observations/normalize/normalized_tensor/NegNeg,normalize_observations/normalize/truediv:z:0*
T0*"
_output_shapes
:28
6normalize_observations/normalize/normalized_tensor/Neg�
8normalize_observations/normalize/normalized_tensor/mul_1Mul:normalize_observations/normalize/normalized_tensor/Neg:y:0<normalize_observations/normalize/normalized_tensor/Rsqrt:y:0*
T0*"
_output_shapes
:2:
8normalize_observations/normalize/normalized_tensor/mul_1�
8normalize_observations/normalize/normalized_tensor/add_1AddV2:normalize_observations/normalize/normalized_tensor/mul:z:0<normalize_observations/normalize/normalized_tensor/mul_1:z:0*
T0*/
_output_shapes
:���������2:
8normalize_observations/normalize/normalized_tensor/add_1�
Dnormalize_observations/normalize/clipped_normalized_tensor/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �@2F
Dnormalize_observations/normalize/clipped_normalized_tensor/Minimum/y�
Bnormalize_observations/normalize/clipped_normalized_tensor/MinimumMinimum<normalize_observations/normalize/normalized_tensor/add_1:z:0Mnormalize_observations/normalize/clipped_normalized_tensor/Minimum/y:output:0*
T0*/
_output_shapes
:���������2D
Bnormalize_observations/normalize/clipped_normalized_tensor/Minimum�
<normalize_observations/normalize/clipped_normalized_tensor/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ��2>
<normalize_observations/normalize/clipped_normalized_tensor/y�
:normalize_observations/normalize/clipped_normalized_tensorMaximumFnormalize_observations/normalize/clipped_normalized_tensor/Minimum:z:0Enormalize_observations/normalize/clipped_normalized_tensor/y:output:0*
T0*/
_output_shapes
:���������2<
:normalize_observations/normalize/clipped_normalized_tensor�
FActorDistributionRnnNetwork/ActorDistributionRnnNetwork/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2H
FActorDistributionRnnNetwork/ActorDistributionRnnNetwork/ExpandDims/dim�
BActorDistributionRnnNetwork/ActorDistributionRnnNetwork/ExpandDims
ExpandDims>normalize_observations/normalize/clipped_normalized_tensor:z:0OActorDistributionRnnNetwork/ActorDistributionRnnNetwork/ExpandDims/dim:output:0*
T0*3
_output_shapes!
:���������2D
BActorDistributionRnnNetwork/ActorDistributionRnnNetwork/ExpandDims�
HActorDistributionRnnNetwork/ActorDistributionRnnNetwork/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B :2J
HActorDistributionRnnNetwork/ActorDistributionRnnNetwork/ExpandDims_1/dim�
DActorDistributionRnnNetwork/ActorDistributionRnnNetwork/ExpandDims_1
ExpandDims	step_typeQActorDistributionRnnNetwork/ActorDistributionRnnNetwork/ExpandDims_1/dim:output:0*
T0*'
_output_shapes
:���������2F
DActorDistributionRnnNetwork/ActorDistributionRnnNetwork/ExpandDims_1�
[ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_flatten/ShapeShapeKActorDistributionRnnNetwork/ActorDistributionRnnNetwork/ExpandDims:output:0*
T0*
_output_shapes
:*
out_type0	2]
[ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_flatten/Shape�
cActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_flatten/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"����         2e
cActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_flatten/Reshape/shape�
]ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_flatten/ReshapeReshapeKActorDistributionRnnNetwork/ActorDistributionRnnNetwork/ExpandDims:output:0lActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_flatten/Reshape/shape:output:0*
T0*/
_output_shapes
:���������2_
]ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_flatten/Reshape�
dActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d/Conv2D/ReadVariableOpReadVariableOpmactordistributionrnnnetwork_actordistributionrnnnetwork_encodingnetwork_conv2d_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02f
dActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d/Conv2D/ReadVariableOp�
UActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d/Conv2DConv2DfActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_flatten/Reshape:output:0lActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingVALID*
strides
2W
UActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d/Conv2D�
eActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d/BiasAdd/ReadVariableOpReadVariableOpnactordistributionrnnnetwork_actordistributionrnnnetwork_encodingnetwork_conv2d_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02g
eActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d/BiasAdd/ReadVariableOp�
VActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d/BiasAddBiasAdd^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d/Conv2D:output:0mActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������2X
VActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d/BiasAdd�
SActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d/ReluRelu_ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d/BiasAdd:output:0*
T0*/
_output_shapes
:���������2U
SActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d/Relu�
fActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d_1/Conv2D/ReadVariableOpReadVariableOpoactordistributionrnnnetwork_actordistributionrnnnetwork_encodingnetwork_conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02h
fActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d_1/Conv2D/ReadVariableOp�
WActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d_1/Conv2DConv2DaActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d/Relu:activations:0nActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:��������� *
paddingVALID*
strides
2Y
WActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d_1/Conv2D�
gActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d_1/BiasAdd/ReadVariableOpReadVariableOppactordistributionrnnnetwork_actordistributionrnnnetwork_encodingnetwork_conv2d_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02i
gActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d_1/BiasAdd/ReadVariableOp�
XActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d_1/BiasAddBiasAdd`ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d_1/Conv2D:output:0oActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:��������� 2Z
XActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d_1/BiasAdd�
UActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d_1/ReluReluaActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d_1/BiasAdd:output:0*
T0*/
_output_shapes
:��������� 2W
UActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d_1/Relu�
UActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"�����  2W
UActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/flatten/Const�
WActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/flatten/ReshapeReshapecActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d_1/Relu:activations:0^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/flatten/Const:output:0*
T0*(
_output_shapes
:����������	2Y
WActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/flatten/Reshape�
cActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/MatMul/ReadVariableOpReadVariableOplactordistributionrnnnetwork_actordistributionrnnnetwork_encodingnetwork_dense_matmul_readvariableop_resource* 
_output_shapes
:
�	�*
dtype02e
cActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/MatMul/ReadVariableOp�
TActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/MatMulMatMul`ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/flatten/Reshape:output:0kActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2V
TActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/MatMul�
dActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOpReadVariableOpmactordistributionrnnnetwork_actordistributionrnnnetwork_encodingnetwork_dense_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02f
dActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOp�
UActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/BiasAddBiasAdd^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/MatMul:product:0lActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2W
UActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/BiasAdd�
RActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/ReluRelu^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/BiasAdd:output:0*
T0*(
_output_shapes
:����������2T
RActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/Relu�
kActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2m
kActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/strided_slice/stack�
mActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2o
mActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/strided_slice/stack_1�
mActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2o
mActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/strided_slice/stack_2�
eActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/strided_sliceStridedSlicedActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_flatten/Shape:output:0tActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/strided_slice/stack:output:0vActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/strided_slice/stack_1:output:0vActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask2g
eActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/strided_slice�
]ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/ShapeShape`ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/Relu:activations:0*
T0*
_output_shapes
:*
out_type0	2_
]ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/Shape�
mActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2o
mActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/strided_slice_1/stack�
oActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2q
oActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/strided_slice_1/stack_1�
oActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2q
oActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/strided_slice_1/stack_2�
gActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/strided_slice_1StridedSlicefActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/Shape:output:0vActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/strided_slice_1/stack:output:0xActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/strided_slice_1/stack_1:output:0xActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*
end_mask2i
gActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/strided_slice_1�
cActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2e
cActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/concat/axis�
^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/concatConcatV2nActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/strided_slice:output:0pActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/strided_slice_1:output:0lActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/concat/axis:output:0*
N*
T0	*
_output_shapes
:2`
^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/concat�
_ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/ReshapeReshape`ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/Relu:activations:0gActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/concat:output:0*
T0*
Tshape0	*,
_output_shapes
:����������2a
_ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/Reshape�
>ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/mask/yConst*
_output_shapes
: *
dtype0*
value	B : 2@
>ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/mask/y�
<ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/maskEqualMActorDistributionRnnNetwork/ActorDistributionRnnNetwork/ExpandDims_1:output:0GActorDistributionRnnNetwork/ActorDistributionRnnNetwork/mask/y:output:0*
T0*'
_output_shapes
:���������2>
<ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/mask�
KActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/RankConst*
_output_shapes
: *
dtype0*
value	B :2M
KActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/Rank�
RActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/range/startConst*
_output_shapes
: *
dtype0*
value	B :2T
RActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/range/start�
RActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :2T
RActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/range/delta�
LActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/rangeRange[ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/range/start:output:0TActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/Rank:output:0[ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/range/delta:output:0*
_output_shapes
:2N
LActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/range�
VActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB"       2X
VActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/concat/values_0�
RActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2T
RActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/concat/axis�
MActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/concatConcatV2_ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/concat/values_0:output:0UActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/range:output:0[ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/concat/axis:output:0*
N*
T0*
_output_shapes
:2O
MActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/concat�
PActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/transpose	TransposehActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/Reshape:output:0VActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/concat:output:0*
T0*,
_output_shapes
:����������2R
PActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/transpose�
LActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/ShapeShapeTActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/transpose:y:0*
T0*
_output_shapes
:2N
LActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/Shape�
ZActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2\
ZActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/strided_slice/stack�
\ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2^
\ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/strided_slice/stack_1�
\ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2^
\ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/strided_slice/stack_2�
TActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/strided_sliceStridedSliceUActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/Shape:output:0cActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/strided_slice/stack:output:0eActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/strided_slice/stack_1:output:0eActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2V
TActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/strided_slice�
WActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2Y
WActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/transpose_1/perm�
RActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/transpose_1	Transpose@ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/mask:z:0`ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/transpose_1/perm:output:0*
T0
*'
_output_shapes
:���������2T
RActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/transpose_1�
RActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :�2T
RActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros/mul/y�
PActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros/mulMul]ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/strided_slice:output:0[ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros/mul/y:output:0*
T0*
_output_shapes
: 2R
PActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros/mul�
SActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :�2U
SActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros/Less/y�
QActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros/LessLessTActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros/mul:z:0\ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros/Less/y:output:0*
T0*
_output_shapes
: 2S
QActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros/Less�
UActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :�2W
UActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros/packed/1�
SActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros/packedPack]ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/strided_slice:output:0^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2U
SActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros/packed�
RActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2T
RActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros/Const�
LActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zerosFill\ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros/packed:output:0[ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros/Const:output:0*
T0*(
_output_shapes
:����������2N
LActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros�
TActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :�2V
TActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_1/mul/y�
RActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_1/mulMul]ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/strided_slice:output:0]ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2T
RActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_1/mul�
UActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :�2W
UActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_1/Less/y�
SActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_1/LessLessVActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_1/mul:z:0^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2U
SActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_1/Less�
WActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :�2Y
WActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_1/packed/1�
UActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_1/packedPack]ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/strided_slice:output:0`ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2W
UActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_1/packed�
TActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2V
TActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_1/Const�
NActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_1Fill^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_1/packed:output:0]ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_1/Const:output:0*
T0*(
_output_shapes
:����������2P
NActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_1�
NActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/SqueezeSqueezeTActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/transpose:y:0*
T0*(
_output_shapes
:����������*
squeeze_dims
 2P
NActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/Squeeze�
PActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/Squeeze_1SqueezeVActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/transpose_1:y:0*
T0
*#
_output_shapes
:���������*
squeeze_dims
 2R
PActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/Squeeze_1�
MActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/SelectSelectYActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/Squeeze_1:output:0UActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros:output:0SelectV2_2:output:0*
T0*(
_output_shapes
:����������2O
MActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/Select�
OActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/Select_1SelectYActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/Squeeze_1:output:0WActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_1:output:0SelectV2_3:output:0*
T0*(
_output_shapes
:����������2Q
OActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/Select_1�
fActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/MatMul/ReadVariableOpReadVariableOpoactordistributionrnnnetwork_actordistributionrnnnetwork_dynamic_unroll_lstm_cell_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype02h
fActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/MatMul/ReadVariableOp�
WActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/MatMulMatMulWActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/Squeeze:output:0nActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2Y
WActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/MatMul�
hActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/MatMul_1/ReadVariableOpReadVariableOpqactordistributionrnnnetwork_actordistributionrnnnetwork_dynamic_unroll_lstm_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
��*
dtype02j
hActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/MatMul_1/ReadVariableOp�
YActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/MatMul_1MatMulVActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/Select:output:0pActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2[
YActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/MatMul_1�
TActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/addAddV2aActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/MatMul:product:0cActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:����������2V
TActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/add�
gActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/BiasAdd/ReadVariableOpReadVariableOppactordistributionrnnnetwork_actordistributionrnnnetwork_dynamic_unroll_lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02i
gActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/BiasAdd/ReadVariableOp�
XActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/BiasAddBiasAddXActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/add:z:0oActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2Z
XActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/BiasAdd�
VActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/ConstConst*
_output_shapes
: *
dtype0*
value	B :2X
VActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/Const�
`ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2b
`ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/split/split_dim�
VActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/splitSplitiActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/split/split_dim:output:0aActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:����������:����������:����������:����������*
	num_split2X
VActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/split�
XActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/SigmoidSigmoid_ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/split:output:0*
T0*(
_output_shapes
:����������2Z
XActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/Sigmoid�
ZActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/Sigmoid_1Sigmoid_ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/split:output:1*
T0*(
_output_shapes
:����������2\
ZActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/Sigmoid_1�
TActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/mulMul^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/Sigmoid_1:y:0XActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/Select_1:output:0*
T0*(
_output_shapes
:����������2V
TActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/mul�
UActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/TanhTanh_ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/split:output:2*
T0*(
_output_shapes
:����������2W
UActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/Tanh�
VActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/mul_1Mul\ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/Sigmoid:y:0YActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/Tanh:y:0*
T0*(
_output_shapes
:����������2X
VActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/mul_1�
VActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/add_1AddV2XActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/mul:z:0ZActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:����������2X
VActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/add_1�
ZActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/Sigmoid_2Sigmoid_ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/split:output:3*
T0*(
_output_shapes
:����������2\
ZActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/Sigmoid_2�
WActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/Tanh_1TanhZActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:����������2Y
WActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/Tanh_1�
VActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/mul_2Mul^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/Sigmoid_2:y:0[ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/Tanh_1:y:0*
T0*(
_output_shapes
:����������2X
VActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/mul_2�
UActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2W
UActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/ExpandDims/dim�
QActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/ExpandDims
ExpandDimsZActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/mul_2:z:0^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/ExpandDims/dim:output:0*
T0*,
_output_shapes
:����������2S
QActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/ExpandDims�
XActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/ReadVariableOpReadVariableOpaactordistributionrnnnetwork_actordistributionrnnnetwork_dense_1_tensordot_readvariableop_resource* 
_output_shapes
:
��*
dtype02Z
XActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/ReadVariableOp�
NActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2P
NActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/axes�
NActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2P
NActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/free�
OActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/ShapeShapeZActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/ExpandDims:output:0*
T0*
_output_shapes
:2Q
OActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/Shape�
WActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2Y
WActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/GatherV2/axis�
RActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/GatherV2GatherV2XActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/Shape:output:0WActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/free:output:0`ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2T
RActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/GatherV2�
YActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2[
YActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/GatherV2_1/axis�
TActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/GatherV2_1GatherV2XActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/Shape:output:0WActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/axes:output:0bActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2V
TActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/GatherV2_1�
OActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2Q
OActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/Const�
NActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/ProdProd[ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/GatherV2:output:0XActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/Const:output:0*
T0*
_output_shapes
: 2P
NActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/Prod�
QActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2S
QActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/Const_1�
PActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/Prod_1Prod]ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/GatherV2_1:output:0ZActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2R
PActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/Prod_1�
UActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2W
UActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/concat/axis�
PActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/concatConcatV2WActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/free:output:0WActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/axes:output:0^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2R
PActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/concat�
OActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/stackPackWActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/Prod:output:0YActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2Q
OActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/stack�
SActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/transpose	TransposeZActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/ExpandDims:output:0YActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/concat:output:0*
T0*,
_output_shapes
:����������2U
SActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/transpose�
QActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/ReshapeReshapeWActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/transpose:y:0XActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/stack:output:0*
T0*0
_output_shapes
:������������������2S
QActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/Reshape�
PActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/MatMulMatMulZActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/Reshape:output:0`ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2R
PActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/MatMul�
QActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:�2S
QActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/Const_2�
WActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2Y
WActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/concat_1/axis�
RActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/concat_1ConcatV2[ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/GatherV2:output:0ZActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/Const_2:output:0`ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2T
RActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/concat_1�
IActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/TensordotReshapeZActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/MatMul:product:0[ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:����������2K
IActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot�
VActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/BiasAdd/ReadVariableOpReadVariableOp_actordistributionrnnnetwork_actordistributionrnnnetwork_dense_1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02X
VActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/BiasAdd/ReadVariableOp�
GActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/BiasAddBiasAddRActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot:output:0^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:����������2I
GActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/BiasAdd�
DActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/ReluReluPActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/BiasAdd:output:0*
T0*,
_output_shapes
:����������2F
DActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Relu�
?ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/SqueezeSqueezeRActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Relu:activations:0*
T0*(
_output_shapes
:����������*
squeeze_dims
2A
?ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/Squeeze�
UActorDistributionRnnNetwork/CategoricalProjectionNetwork/logits/MatMul/ReadVariableOpReadVariableOp^actordistributionrnnnetwork_categoricalprojectionnetwork_logits_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype02W
UActorDistributionRnnNetwork/CategoricalProjectionNetwork/logits/MatMul/ReadVariableOp�
FActorDistributionRnnNetwork/CategoricalProjectionNetwork/logits/MatMulMatMulHActorDistributionRnnNetwork/ActorDistributionRnnNetwork/Squeeze:output:0]ActorDistributionRnnNetwork/CategoricalProjectionNetwork/logits/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2H
FActorDistributionRnnNetwork/CategoricalProjectionNetwork/logits/MatMul�
VActorDistributionRnnNetwork/CategoricalProjectionNetwork/logits/BiasAdd/ReadVariableOpReadVariableOp_actordistributionrnnnetwork_categoricalprojectionnetwork_logits_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02X
VActorDistributionRnnNetwork/CategoricalProjectionNetwork/logits/BiasAdd/ReadVariableOp�
GActorDistributionRnnNetwork/CategoricalProjectionNetwork/logits/BiasAddBiasAddPActorDistributionRnnNetwork/CategoricalProjectionNetwork/logits/MatMul:product:0^ActorDistributionRnnNetwork/CategoricalProjectionNetwork/logits/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2I
GActorDistributionRnnNetwork/CategoricalProjectionNetwork/logits/BiasAdd�
FActorDistributionRnnNetwork/CategoricalProjectionNetwork/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"����   2H
FActorDistributionRnnNetwork/CategoricalProjectionNetwork/Reshape/shape�
@ActorDistributionRnnNetwork/CategoricalProjectionNetwork/ReshapeReshapePActorDistributionRnnNetwork/CategoricalProjectionNetwork/logits/BiasAdd:output:0OActorDistributionRnnNetwork/CategoricalProjectionNetwork/Reshape/shape:output:0*
T0*'
_output_shapes
:���������2B
@ActorDistributionRnnNetwork/CategoricalProjectionNetwork/Reshape�
ZActorDistributionRnnNetwork_CategoricalProjectionNetwork_Categorical/mode/ArgMax/dimensionConst*
_output_shapes
: *
dtype0*
valueB :
���������2\
ZActorDistributionRnnNetwork_CategoricalProjectionNetwork_Categorical/mode/ArgMax/dimension�
PActorDistributionRnnNetwork_CategoricalProjectionNetwork_Categorical/mode/ArgMaxArgMaxIActorDistributionRnnNetwork/CategoricalProjectionNetwork/Reshape:output:0cActorDistributionRnnNetwork_CategoricalProjectionNetwork_Categorical/mode/ArgMax/dimension:output:0*
T0*#
_output_shapes
:���������2R
PActorDistributionRnnNetwork_CategoricalProjectionNetwork_Categorical/mode/ArgMax�
NActorDistributionRnnNetwork_CategoricalProjectionNetwork_Categorical/mode/CastCastYActorDistributionRnnNetwork_CategoricalProjectionNetwork_Categorical/mode/ArgMax:output:0*

DstT0*

SrcT0	*#
_output_shapes
:���������2P
NActorDistributionRnnNetwork_CategoricalProjectionNetwork_Categorical/mode/Castj
Deterministic/atolConst*
_output_shapes
: *
dtype0*
value	B : 2
Deterministic/atolj
Deterministic/rtolConst*
_output_shapes
: *
dtype0*
value	B : 2
Deterministic/rtoln
Deterministic_1/atolConst*
_output_shapes
: *
dtype0*
value	B : 2
Deterministic_1/atoln
Deterministic_1/rtolConst*
_output_shapes
: *
dtype0*
value	B : 2
Deterministic_1/rtol�
IdentityIdentityRActorDistributionRnnNetwork_CategoricalProjectionNetwork_Categorical/mode/Cast:y:0f^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d/BiasAdd/ReadVariableOpe^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d/Conv2D/ReadVariableOph^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d_1/BiasAdd/ReadVariableOpg^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d_1/Conv2D/ReadVariableOpe^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOpd^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/MatMul/ReadVariableOpW^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/BiasAdd/ReadVariableOpY^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/ReadVariableOph^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/BiasAdd/ReadVariableOpg^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/MatMul/ReadVariableOpi^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/MatMul_1/ReadVariableOpW^ActorDistributionRnnNetwork/CategoricalProjectionNetwork/logits/BiasAdd/ReadVariableOpV^ActorDistributionRnnNetwork/CategoricalProjectionNetwork/logits/MatMul/ReadVariableOp0^normalize_observations/normalize/ReadVariableOp2^normalize_observations/normalize/ReadVariableOp_18^normalize_observations/normalize/truediv/ReadVariableOp:^normalize_observations/normalize/truediv_1/ReadVariableOp*
T0*#
_output_shapes
:���������2

Identity�

Identity_1IdentityZActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/mul_2:z:0f^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d/BiasAdd/ReadVariableOpe^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d/Conv2D/ReadVariableOph^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d_1/BiasAdd/ReadVariableOpg^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d_1/Conv2D/ReadVariableOpe^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOpd^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/MatMul/ReadVariableOpW^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/BiasAdd/ReadVariableOpY^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/ReadVariableOph^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/BiasAdd/ReadVariableOpg^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/MatMul/ReadVariableOpi^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/MatMul_1/ReadVariableOpW^ActorDistributionRnnNetwork/CategoricalProjectionNetwork/logits/BiasAdd/ReadVariableOpV^ActorDistributionRnnNetwork/CategoricalProjectionNetwork/logits/MatMul/ReadVariableOp0^normalize_observations/normalize/ReadVariableOp2^normalize_observations/normalize/ReadVariableOp_18^normalize_observations/normalize/truediv/ReadVariableOp:^normalize_observations/normalize/truediv_1/ReadVariableOp*
T0*(
_output_shapes
:����������2

Identity_1�

Identity_2IdentityZActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/add_1:z:0f^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d/BiasAdd/ReadVariableOpe^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d/Conv2D/ReadVariableOph^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d_1/BiasAdd/ReadVariableOpg^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d_1/Conv2D/ReadVariableOpe^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOpd^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/MatMul/ReadVariableOpW^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/BiasAdd/ReadVariableOpY^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/ReadVariableOph^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/BiasAdd/ReadVariableOpg^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/MatMul/ReadVariableOpi^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/MatMul_1/ReadVariableOpW^ActorDistributionRnnNetwork/CategoricalProjectionNetwork/logits/BiasAdd/ReadVariableOpV^ActorDistributionRnnNetwork/CategoricalProjectionNetwork/logits/MatMul/ReadVariableOp0^normalize_observations/normalize/ReadVariableOp2^normalize_observations/normalize/ReadVariableOp_18^normalize_observations/normalize/truediv/ReadVariableOp:^normalize_observations/normalize/truediv_1/ReadVariableOp*
T0*(
_output_shapes
:����������2

Identity_2n
Deterministic_2/atolConst*
_output_shapes
: *
dtype0*
value	B : 2
Deterministic_2/atoln
Deterministic_2/rtolConst*
_output_shapes
: *
dtype0*
value	B : 2
Deterministic_2/rtol"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*�
_input_shapes�
�:���������:���������:���������:���������:����������:����������::::::::::::::::2�
eActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d/BiasAdd/ReadVariableOpeActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d/BiasAdd/ReadVariableOp2�
dActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d/Conv2D/ReadVariableOpdActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d/Conv2D/ReadVariableOp2�
gActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d_1/BiasAdd/ReadVariableOpgActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d_1/BiasAdd/ReadVariableOp2�
fActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d_1/Conv2D/ReadVariableOpfActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d_1/Conv2D/ReadVariableOp2�
dActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOpdActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOp2�
cActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/MatMul/ReadVariableOpcActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/MatMul/ReadVariableOp2�
VActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/BiasAdd/ReadVariableOpVActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/BiasAdd/ReadVariableOp2�
XActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/ReadVariableOpXActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/ReadVariableOp2�
gActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/BiasAdd/ReadVariableOpgActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/BiasAdd/ReadVariableOp2�
fActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/MatMul/ReadVariableOpfActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/MatMul/ReadVariableOp2�
hActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/MatMul_1/ReadVariableOphActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/MatMul_1/ReadVariableOp2�
VActorDistributionRnnNetwork/CategoricalProjectionNetwork/logits/BiasAdd/ReadVariableOpVActorDistributionRnnNetwork/CategoricalProjectionNetwork/logits/BiasAdd/ReadVariableOp2�
UActorDistributionRnnNetwork/CategoricalProjectionNetwork/logits/MatMul/ReadVariableOpUActorDistributionRnnNetwork/CategoricalProjectionNetwork/logits/MatMul/ReadVariableOp2b
/normalize_observations/normalize/ReadVariableOp/normalize_observations/normalize/ReadVariableOp2f
1normalize_observations/normalize/ReadVariableOp_11normalize_observations/normalize/ReadVariableOp_12r
7normalize_observations/normalize/truediv/ReadVariableOp7normalize_observations/normalize/truediv/ReadVariableOp2v
9normalize_observations/normalize/truediv_1/ReadVariableOp9normalize_observations/normalize/truediv_1/ReadVariableOp:N J
#
_output_shapes
:���������
#
_user_specified_name	step_type:KG
#
_output_shapes
:���������
 
_user_specified_namereward:MI
#
_output_shapes
:���������
"
_user_specified_name
discount:\X
/
_output_shapes
:���������
%
_user_specified_nameobservation:_[
(
_output_shapes
:����������
/
_user_specified_nameactor_network_state/0:_[
(
_output_shapes
:����������
/
_user_specified_nameactor_network_state/1
��
�
__inference_action_4777986
	step_type

reward
discount
observation
actor_network_state_0
actor_network_state_1<
8normalize_observations_normalize_readvariableop_resourceD
@normalize_observations_normalize_truediv_readvariableop_resource>
:normalize_observations_normalize_readvariableop_1_resourceq
mactordistributionrnnnetwork_actordistributionrnnnetwork_encodingnetwork_conv2d_conv2d_readvariableop_resourcer
nactordistributionrnnnetwork_actordistributionrnnnetwork_encodingnetwork_conv2d_biasadd_readvariableop_resources
oactordistributionrnnnetwork_actordistributionrnnnetwork_encodingnetwork_conv2d_1_conv2d_readvariableop_resourcet
pactordistributionrnnnetwork_actordistributionrnnnetwork_encodingnetwork_conv2d_1_biasadd_readvariableop_resourcep
lactordistributionrnnnetwork_actordistributionrnnnetwork_encodingnetwork_dense_matmul_readvariableop_resourceq
mactordistributionrnnnetwork_actordistributionrnnnetwork_encodingnetwork_dense_biasadd_readvariableop_resources
oactordistributionrnnnetwork_actordistributionrnnnetwork_dynamic_unroll_lstm_cell_matmul_readvariableop_resourceu
qactordistributionrnnnetwork_actordistributionrnnnetwork_dynamic_unroll_lstm_cell_matmul_1_readvariableop_resourcet
pactordistributionrnnnetwork_actordistributionrnnnetwork_dynamic_unroll_lstm_cell_biasadd_readvariableop_resourcee
aactordistributionrnnnetwork_actordistributionrnnnetwork_dense_1_tensordot_readvariableop_resourcec
_actordistributionrnnnetwork_actordistributionrnnnetwork_dense_1_biasadd_readvariableop_resourceb
^actordistributionrnnnetwork_categoricalprojectionnetwork_logits_matmul_readvariableop_resourcec
_actordistributionrnnnetwork_categoricalprojectionnetwork_logits_biasadd_readvariableop_resource
identity

identity_1

identity_2��eActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d/BiasAdd/ReadVariableOp�dActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d/Conv2D/ReadVariableOp�gActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d_1/BiasAdd/ReadVariableOp�fActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d_1/Conv2D/ReadVariableOp�dActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOp�cActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/MatMul/ReadVariableOp�VActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/BiasAdd/ReadVariableOp�XActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/ReadVariableOp�gActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/BiasAdd/ReadVariableOp�fActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/MatMul/ReadVariableOp�hActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/MatMul_1/ReadVariableOp�VActorDistributionRnnNetwork/CategoricalProjectionNetwork/logits/BiasAdd/ReadVariableOp�UActorDistributionRnnNetwork/CategoricalProjectionNetwork/logits/MatMul/ReadVariableOp�/normalize_observations/normalize/ReadVariableOp�1normalize_observations/normalize/ReadVariableOp_1�7normalize_observations/normalize/truediv/ReadVariableOp�9normalize_observations/normalize/truediv_1/ReadVariableOpF
ShapeShapediscount*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice^
packedPackstrided_slice:output:0*
N*
T0*
_output_shapes
:2
packedm
shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB:�2
shape_as_tensor\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis�
concatConcatV2packed:output:0shape_as_tensor:output:0concat/axis:output:0*
N*
T0*
_output_shapes
:2
concat_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constp
zerosFillconcat:output:0zeros/Const:output:0*
T0*(
_output_shapes
:����������2
zerosq
shape_as_tensor_1Const*
_output_shapes
:*
dtype0*
valueB:�2
shape_as_tensor_1`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_1/axis�
concat_1ConcatV2packed:output:0shape_as_tensor_1:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes
:2

concat_1c
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Constx
zeros_1Fillconcat_1:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:����������2	
zeros_1T
Equal/yConst*
_output_shapes
: *
dtype0*
value	B : 2	
Equal/yb
EqualEqual	step_typeEqual/y:output:0*
T0*#
_output_shapes
:���������2
EqualN
RankConst*
_output_shapes
: *
dtype0*
value	B :2
RankR
Rank_1Const*
_output_shapes
: *
dtype0*
value	B :2
Rank_1R
subSubRank:output:0Rank_1:output:0*
T0*
_output_shapes
: 2
subK
Shape_1Shape	Equal:z:0*
T0
*
_output_shapes
:2	
Shape_1{
ones/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
���������2
ones/Reshape/shaper
ones/ReshapeReshapesub:z:0ones/Reshape/shape:output:0*
T0*
_output_shapes
:2
ones/ReshapeZ

ones/ConstConst*
_output_shapes
: *
dtype0*
value	B :2

ones/Conste
onesFillones/Reshape:output:0ones/Const:output:0*
T0*
_output_shapes
:2
ones`
concat_2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_2/axis�
concat_2ConcatV2Shape_1:output:0ones:output:0concat_2/axis:output:0*
N*
T0*
_output_shapes
:2

concat_2m
ReshapeReshape	Equal:z:0concat_2:output:0*
T0
*'
_output_shapes
:���������2	
Reshape�
SelectV2SelectV2Reshape:output:0zeros:output:0actor_network_state_0*
T0*(
_output_shapes
:����������2

SelectV2�

SelectV2_1SelectV2Reshape:output:0zeros_1:output:0actor_network_state_1*
T0*(
_output_shapes
:����������2

SelectV2_1J
Shape_2Shapediscount*
T0*
_output_shapes
:2	
Shape_2x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2�
strided_slice_1StridedSliceShape_2:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1d
packed_1Packstrided_slice_1:output:0*
N*
T0*
_output_shapes
:2

packed_1q
shape_as_tensor_2Const*
_output_shapes
:*
dtype0*
valueB:�2
shape_as_tensor_2`
concat_3/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_3/axis�
concat_3ConcatV2packed_1:output:0shape_as_tensor_2:output:0concat_3/axis:output:0*
N*
T0*
_output_shapes
:2

concat_3c
zeros_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_2/Constx
zeros_2Fillconcat_3:output:0zeros_2/Const:output:0*
T0*(
_output_shapes
:����������2	
zeros_2q
shape_as_tensor_3Const*
_output_shapes
:*
dtype0*
valueB:�2
shape_as_tensor_3`
concat_4/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_4/axis�
concat_4ConcatV2packed_1:output:0shape_as_tensor_3:output:0concat_4/axis:output:0*
N*
T0*
_output_shapes
:2

concat_4c
zeros_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_3/Constx
zeros_3Fillconcat_4:output:0zeros_3/Const:output:0*
T0*(
_output_shapes
:����������2	
zeros_3X
	Equal_1/yConst*
_output_shapes
: *
dtype0*
value	B : 2
	Equal_1/yh
Equal_1Equal	step_typeEqual_1/y:output:0*
T0*#
_output_shapes
:���������2	
Equal_1R
Rank_2Const*
_output_shapes
: *
dtype0*
value	B :2
Rank_2R
Rank_3Const*
_output_shapes
: *
dtype0*
value	B :2
Rank_3X
sub_1SubRank_2:output:0Rank_3:output:0*
T0*
_output_shapes
: 2
sub_1M
Shape_3ShapeEqual_1:z:0*
T0
*
_output_shapes
:2	
Shape_3
ones_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
���������2
ones_1/Reshape/shapez
ones_1/ReshapeReshape	sub_1:z:0ones_1/Reshape/shape:output:0*
T0*
_output_shapes
:2
ones_1/Reshape^
ones_1/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
ones_1/Constm
ones_1Fillones_1/Reshape:output:0ones_1/Const:output:0*
T0*
_output_shapes
:2
ones_1`
concat_5/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_5/axis�
concat_5ConcatV2Shape_3:output:0ones_1:output:0concat_5/axis:output:0*
N*
T0*
_output_shapes
:2

concat_5s
	Reshape_1ReshapeEqual_1:z:0concat_5:output:0*
T0
*'
_output_shapes
:���������2
	Reshape_1�

SelectV2_2SelectV2Reshape_1:output:0zeros_2:output:0SelectV2:output:0*
T0*(
_output_shapes
:����������2

SelectV2_2�

SelectV2_3SelectV2Reshape_1:output:0zeros_3:output:0SelectV2_1:output:0*
T0*(
_output_shapes
:����������2

SelectV2_3�
/normalize_observations/normalize/ReadVariableOpReadVariableOp8normalize_observations_normalize_readvariableop_resource*"
_output_shapes
:*
dtype021
/normalize_observations/normalize/ReadVariableOp�
7normalize_observations/normalize/truediv/ReadVariableOpReadVariableOp@normalize_observations_normalize_truediv_readvariableop_resource*"
_output_shapes
:*
dtype029
7normalize_observations/normalize/truediv/ReadVariableOp�
(normalize_observations/normalize/truedivRealDiv7normalize_observations/normalize/ReadVariableOp:value:0?normalize_observations/normalize/truediv/ReadVariableOp:value:0*
T0*"
_output_shapes
:2*
(normalize_observations/normalize/truediv�
1normalize_observations/normalize/ReadVariableOp_1ReadVariableOp:normalize_observations_normalize_readvariableop_1_resource*"
_output_shapes
:*
dtype023
1normalize_observations/normalize/ReadVariableOp_1�
9normalize_observations/normalize/truediv_1/ReadVariableOpReadVariableOp@normalize_observations_normalize_truediv_readvariableop_resource*"
_output_shapes
:*
dtype02;
9normalize_observations/normalize/truediv_1/ReadVariableOp�
*normalize_observations/normalize/truediv_1RealDiv9normalize_observations/normalize/ReadVariableOp_1:value:0Anormalize_observations/normalize/truediv_1/ReadVariableOp:value:0*
T0*"
_output_shapes
:2,
*normalize_observations/normalize/truediv_1�
8normalize_observations/normalize/normalized_tensor/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:2:
8normalize_observations/normalize/normalized_tensor/add/y�
6normalize_observations/normalize/normalized_tensor/addAddV2.normalize_observations/normalize/truediv_1:z:0Anormalize_observations/normalize/normalized_tensor/add/y:output:0*
T0*"
_output_shapes
:28
6normalize_observations/normalize/normalized_tensor/add�
8normalize_observations/normalize/normalized_tensor/RsqrtRsqrt:normalize_observations/normalize/normalized_tensor/add:z:0*
T0*"
_output_shapes
:2:
8normalize_observations/normalize/normalized_tensor/Rsqrt�
6normalize_observations/normalize/normalized_tensor/mulMulobservation<normalize_observations/normalize/normalized_tensor/Rsqrt:y:0*
T0*/
_output_shapes
:���������28
6normalize_observations/normalize/normalized_tensor/mul�
6normalize_observations/normalize/normalized_tensor/NegNeg,normalize_observations/normalize/truediv:z:0*
T0*"
_output_shapes
:28
6normalize_observations/normalize/normalized_tensor/Neg�
8normalize_observations/normalize/normalized_tensor/mul_1Mul:normalize_observations/normalize/normalized_tensor/Neg:y:0<normalize_observations/normalize/normalized_tensor/Rsqrt:y:0*
T0*"
_output_shapes
:2:
8normalize_observations/normalize/normalized_tensor/mul_1�
8normalize_observations/normalize/normalized_tensor/add_1AddV2:normalize_observations/normalize/normalized_tensor/mul:z:0<normalize_observations/normalize/normalized_tensor/mul_1:z:0*
T0*/
_output_shapes
:���������2:
8normalize_observations/normalize/normalized_tensor/add_1�
Dnormalize_observations/normalize/clipped_normalized_tensor/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �@2F
Dnormalize_observations/normalize/clipped_normalized_tensor/Minimum/y�
Bnormalize_observations/normalize/clipped_normalized_tensor/MinimumMinimum<normalize_observations/normalize/normalized_tensor/add_1:z:0Mnormalize_observations/normalize/clipped_normalized_tensor/Minimum/y:output:0*
T0*/
_output_shapes
:���������2D
Bnormalize_observations/normalize/clipped_normalized_tensor/Minimum�
<normalize_observations/normalize/clipped_normalized_tensor/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ��2>
<normalize_observations/normalize/clipped_normalized_tensor/y�
:normalize_observations/normalize/clipped_normalized_tensorMaximumFnormalize_observations/normalize/clipped_normalized_tensor/Minimum:z:0Enormalize_observations/normalize/clipped_normalized_tensor/y:output:0*
T0*/
_output_shapes
:���������2<
:normalize_observations/normalize/clipped_normalized_tensor�
FActorDistributionRnnNetwork/ActorDistributionRnnNetwork/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2H
FActorDistributionRnnNetwork/ActorDistributionRnnNetwork/ExpandDims/dim�
BActorDistributionRnnNetwork/ActorDistributionRnnNetwork/ExpandDims
ExpandDims>normalize_observations/normalize/clipped_normalized_tensor:z:0OActorDistributionRnnNetwork/ActorDistributionRnnNetwork/ExpandDims/dim:output:0*
T0*3
_output_shapes!
:���������2D
BActorDistributionRnnNetwork/ActorDistributionRnnNetwork/ExpandDims�
HActorDistributionRnnNetwork/ActorDistributionRnnNetwork/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B :2J
HActorDistributionRnnNetwork/ActorDistributionRnnNetwork/ExpandDims_1/dim�
DActorDistributionRnnNetwork/ActorDistributionRnnNetwork/ExpandDims_1
ExpandDims	step_typeQActorDistributionRnnNetwork/ActorDistributionRnnNetwork/ExpandDims_1/dim:output:0*
T0*'
_output_shapes
:���������2F
DActorDistributionRnnNetwork/ActorDistributionRnnNetwork/ExpandDims_1�
[ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_flatten/ShapeShapeKActorDistributionRnnNetwork/ActorDistributionRnnNetwork/ExpandDims:output:0*
T0*
_output_shapes
:*
out_type0	2]
[ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_flatten/Shape�
cActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_flatten/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"����         2e
cActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_flatten/Reshape/shape�
]ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_flatten/ReshapeReshapeKActorDistributionRnnNetwork/ActorDistributionRnnNetwork/ExpandDims:output:0lActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_flatten/Reshape/shape:output:0*
T0*/
_output_shapes
:���������2_
]ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_flatten/Reshape�
dActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d/Conv2D/ReadVariableOpReadVariableOpmactordistributionrnnnetwork_actordistributionrnnnetwork_encodingnetwork_conv2d_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02f
dActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d/Conv2D/ReadVariableOp�
UActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d/Conv2DConv2DfActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_flatten/Reshape:output:0lActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingVALID*
strides
2W
UActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d/Conv2D�
eActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d/BiasAdd/ReadVariableOpReadVariableOpnactordistributionrnnnetwork_actordistributionrnnnetwork_encodingnetwork_conv2d_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02g
eActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d/BiasAdd/ReadVariableOp�
VActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d/BiasAddBiasAdd^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d/Conv2D:output:0mActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������2X
VActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d/BiasAdd�
SActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d/ReluRelu_ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d/BiasAdd:output:0*
T0*/
_output_shapes
:���������2U
SActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d/Relu�
fActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d_1/Conv2D/ReadVariableOpReadVariableOpoactordistributionrnnnetwork_actordistributionrnnnetwork_encodingnetwork_conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02h
fActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d_1/Conv2D/ReadVariableOp�
WActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d_1/Conv2DConv2DaActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d/Relu:activations:0nActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:��������� *
paddingVALID*
strides
2Y
WActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d_1/Conv2D�
gActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d_1/BiasAdd/ReadVariableOpReadVariableOppactordistributionrnnnetwork_actordistributionrnnnetwork_encodingnetwork_conv2d_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02i
gActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d_1/BiasAdd/ReadVariableOp�
XActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d_1/BiasAddBiasAdd`ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d_1/Conv2D:output:0oActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:��������� 2Z
XActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d_1/BiasAdd�
UActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d_1/ReluReluaActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d_1/BiasAdd:output:0*
T0*/
_output_shapes
:��������� 2W
UActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d_1/Relu�
UActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"�����  2W
UActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/flatten/Const�
WActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/flatten/ReshapeReshapecActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d_1/Relu:activations:0^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/flatten/Const:output:0*
T0*(
_output_shapes
:����������	2Y
WActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/flatten/Reshape�
cActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/MatMul/ReadVariableOpReadVariableOplactordistributionrnnnetwork_actordistributionrnnnetwork_encodingnetwork_dense_matmul_readvariableop_resource* 
_output_shapes
:
�	�*
dtype02e
cActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/MatMul/ReadVariableOp�
TActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/MatMulMatMul`ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/flatten/Reshape:output:0kActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2V
TActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/MatMul�
dActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOpReadVariableOpmactordistributionrnnnetwork_actordistributionrnnnetwork_encodingnetwork_dense_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02f
dActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOp�
UActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/BiasAddBiasAdd^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/MatMul:product:0lActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2W
UActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/BiasAdd�
RActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/ReluRelu^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/BiasAdd:output:0*
T0*(
_output_shapes
:����������2T
RActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/Relu�
kActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2m
kActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/strided_slice/stack�
mActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2o
mActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/strided_slice/stack_1�
mActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2o
mActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/strided_slice/stack_2�
eActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/strided_sliceStridedSlicedActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_flatten/Shape:output:0tActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/strided_slice/stack:output:0vActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/strided_slice/stack_1:output:0vActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask2g
eActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/strided_slice�
]ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/ShapeShape`ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/Relu:activations:0*
T0*
_output_shapes
:*
out_type0	2_
]ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/Shape�
mActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2o
mActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/strided_slice_1/stack�
oActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2q
oActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/strided_slice_1/stack_1�
oActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2q
oActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/strided_slice_1/stack_2�
gActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/strided_slice_1StridedSlicefActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/Shape:output:0vActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/strided_slice_1/stack:output:0xActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/strided_slice_1/stack_1:output:0xActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*
end_mask2i
gActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/strided_slice_1�
cActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2e
cActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/concat/axis�
^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/concatConcatV2nActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/strided_slice:output:0pActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/strided_slice_1:output:0lActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/concat/axis:output:0*
N*
T0	*
_output_shapes
:2`
^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/concat�
_ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/ReshapeReshape`ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/Relu:activations:0gActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/concat:output:0*
T0*
Tshape0	*,
_output_shapes
:����������2a
_ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/Reshape�
>ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/mask/yConst*
_output_shapes
: *
dtype0*
value	B : 2@
>ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/mask/y�
<ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/maskEqualMActorDistributionRnnNetwork/ActorDistributionRnnNetwork/ExpandDims_1:output:0GActorDistributionRnnNetwork/ActorDistributionRnnNetwork/mask/y:output:0*
T0*'
_output_shapes
:���������2>
<ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/mask�
KActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/RankConst*
_output_shapes
: *
dtype0*
value	B :2M
KActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/Rank�
RActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/range/startConst*
_output_shapes
: *
dtype0*
value	B :2T
RActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/range/start�
RActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :2T
RActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/range/delta�
LActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/rangeRange[ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/range/start:output:0TActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/Rank:output:0[ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/range/delta:output:0*
_output_shapes
:2N
LActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/range�
VActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB"       2X
VActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/concat/values_0�
RActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2T
RActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/concat/axis�
MActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/concatConcatV2_ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/concat/values_0:output:0UActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/range:output:0[ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/concat/axis:output:0*
N*
T0*
_output_shapes
:2O
MActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/concat�
PActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/transpose	TransposehActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/Reshape:output:0VActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/concat:output:0*
T0*,
_output_shapes
:����������2R
PActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/transpose�
LActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/ShapeShapeTActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/transpose:y:0*
T0*
_output_shapes
:2N
LActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/Shape�
ZActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2\
ZActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/strided_slice/stack�
\ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2^
\ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/strided_slice/stack_1�
\ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2^
\ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/strided_slice/stack_2�
TActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/strided_sliceStridedSliceUActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/Shape:output:0cActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/strided_slice/stack:output:0eActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/strided_slice/stack_1:output:0eActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2V
TActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/strided_slice�
WActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2Y
WActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/transpose_1/perm�
RActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/transpose_1	Transpose@ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/mask:z:0`ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/transpose_1/perm:output:0*
T0
*'
_output_shapes
:���������2T
RActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/transpose_1�
RActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :�2T
RActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros/mul/y�
PActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros/mulMul]ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/strided_slice:output:0[ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros/mul/y:output:0*
T0*
_output_shapes
: 2R
PActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros/mul�
SActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :�2U
SActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros/Less/y�
QActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros/LessLessTActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros/mul:z:0\ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros/Less/y:output:0*
T0*
_output_shapes
: 2S
QActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros/Less�
UActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :�2W
UActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros/packed/1�
SActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros/packedPack]ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/strided_slice:output:0^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2U
SActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros/packed�
RActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2T
RActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros/Const�
LActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zerosFill\ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros/packed:output:0[ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros/Const:output:0*
T0*(
_output_shapes
:����������2N
LActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros�
TActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :�2V
TActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_1/mul/y�
RActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_1/mulMul]ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/strided_slice:output:0]ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2T
RActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_1/mul�
UActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :�2W
UActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_1/Less/y�
SActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_1/LessLessVActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_1/mul:z:0^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2U
SActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_1/Less�
WActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :�2Y
WActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_1/packed/1�
UActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_1/packedPack]ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/strided_slice:output:0`ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2W
UActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_1/packed�
TActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2V
TActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_1/Const�
NActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_1Fill^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_1/packed:output:0]ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_1/Const:output:0*
T0*(
_output_shapes
:����������2P
NActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_1�
NActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/SqueezeSqueezeTActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/transpose:y:0*
T0*(
_output_shapes
:����������*
squeeze_dims
 2P
NActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/Squeeze�
PActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/Squeeze_1SqueezeVActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/transpose_1:y:0*
T0
*#
_output_shapes
:���������*
squeeze_dims
 2R
PActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/Squeeze_1�
MActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/SelectSelectYActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/Squeeze_1:output:0UActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros:output:0SelectV2_2:output:0*
T0*(
_output_shapes
:����������2O
MActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/Select�
OActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/Select_1SelectYActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/Squeeze_1:output:0WActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_1:output:0SelectV2_3:output:0*
T0*(
_output_shapes
:����������2Q
OActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/Select_1�
fActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/MatMul/ReadVariableOpReadVariableOpoactordistributionrnnnetwork_actordistributionrnnnetwork_dynamic_unroll_lstm_cell_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype02h
fActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/MatMul/ReadVariableOp�
WActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/MatMulMatMulWActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/Squeeze:output:0nActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2Y
WActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/MatMul�
hActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/MatMul_1/ReadVariableOpReadVariableOpqactordistributionrnnnetwork_actordistributionrnnnetwork_dynamic_unroll_lstm_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
��*
dtype02j
hActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/MatMul_1/ReadVariableOp�
YActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/MatMul_1MatMulVActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/Select:output:0pActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2[
YActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/MatMul_1�
TActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/addAddV2aActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/MatMul:product:0cActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:����������2V
TActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/add�
gActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/BiasAdd/ReadVariableOpReadVariableOppactordistributionrnnnetwork_actordistributionrnnnetwork_dynamic_unroll_lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02i
gActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/BiasAdd/ReadVariableOp�
XActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/BiasAddBiasAddXActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/add:z:0oActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2Z
XActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/BiasAdd�
VActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/ConstConst*
_output_shapes
: *
dtype0*
value	B :2X
VActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/Const�
`ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2b
`ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/split/split_dim�
VActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/splitSplitiActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/split/split_dim:output:0aActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:����������:����������:����������:����������*
	num_split2X
VActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/split�
XActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/SigmoidSigmoid_ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/split:output:0*
T0*(
_output_shapes
:����������2Z
XActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/Sigmoid�
ZActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/Sigmoid_1Sigmoid_ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/split:output:1*
T0*(
_output_shapes
:����������2\
ZActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/Sigmoid_1�
TActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/mulMul^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/Sigmoid_1:y:0XActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/Select_1:output:0*
T0*(
_output_shapes
:����������2V
TActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/mul�
UActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/TanhTanh_ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/split:output:2*
T0*(
_output_shapes
:����������2W
UActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/Tanh�
VActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/mul_1Mul\ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/Sigmoid:y:0YActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/Tanh:y:0*
T0*(
_output_shapes
:����������2X
VActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/mul_1�
VActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/add_1AddV2XActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/mul:z:0ZActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:����������2X
VActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/add_1�
ZActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/Sigmoid_2Sigmoid_ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/split:output:3*
T0*(
_output_shapes
:����������2\
ZActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/Sigmoid_2�
WActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/Tanh_1TanhZActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:����������2Y
WActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/Tanh_1�
VActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/mul_2Mul^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/Sigmoid_2:y:0[ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/Tanh_1:y:0*
T0*(
_output_shapes
:����������2X
VActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/mul_2�
UActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2W
UActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/ExpandDims/dim�
QActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/ExpandDims
ExpandDimsZActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/mul_2:z:0^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/ExpandDims/dim:output:0*
T0*,
_output_shapes
:����������2S
QActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/ExpandDims�
XActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/ReadVariableOpReadVariableOpaactordistributionrnnnetwork_actordistributionrnnnetwork_dense_1_tensordot_readvariableop_resource* 
_output_shapes
:
��*
dtype02Z
XActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/ReadVariableOp�
NActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2P
NActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/axes�
NActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2P
NActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/free�
OActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/ShapeShapeZActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/ExpandDims:output:0*
T0*
_output_shapes
:2Q
OActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/Shape�
WActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2Y
WActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/GatherV2/axis�
RActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/GatherV2GatherV2XActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/Shape:output:0WActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/free:output:0`ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2T
RActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/GatherV2�
YActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2[
YActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/GatherV2_1/axis�
TActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/GatherV2_1GatherV2XActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/Shape:output:0WActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/axes:output:0bActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2V
TActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/GatherV2_1�
OActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2Q
OActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/Const�
NActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/ProdProd[ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/GatherV2:output:0XActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/Const:output:0*
T0*
_output_shapes
: 2P
NActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/Prod�
QActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2S
QActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/Const_1�
PActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/Prod_1Prod]ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/GatherV2_1:output:0ZActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2R
PActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/Prod_1�
UActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2W
UActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/concat/axis�
PActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/concatConcatV2WActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/free:output:0WActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/axes:output:0^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2R
PActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/concat�
OActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/stackPackWActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/Prod:output:0YActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2Q
OActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/stack�
SActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/transpose	TransposeZActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/ExpandDims:output:0YActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/concat:output:0*
T0*,
_output_shapes
:����������2U
SActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/transpose�
QActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/ReshapeReshapeWActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/transpose:y:0XActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/stack:output:0*
T0*0
_output_shapes
:������������������2S
QActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/Reshape�
PActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/MatMulMatMulZActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/Reshape:output:0`ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2R
PActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/MatMul�
QActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:�2S
QActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/Const_2�
WActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2Y
WActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/concat_1/axis�
RActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/concat_1ConcatV2[ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/GatherV2:output:0ZActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/Const_2:output:0`ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2T
RActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/concat_1�
IActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/TensordotReshapeZActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/MatMul:product:0[ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:����������2K
IActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot�
VActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/BiasAdd/ReadVariableOpReadVariableOp_actordistributionrnnnetwork_actordistributionrnnnetwork_dense_1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02X
VActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/BiasAdd/ReadVariableOp�
GActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/BiasAddBiasAddRActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot:output:0^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:����������2I
GActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/BiasAdd�
DActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/ReluReluPActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/BiasAdd:output:0*
T0*,
_output_shapes
:����������2F
DActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Relu�
?ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/SqueezeSqueezeRActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Relu:activations:0*
T0*(
_output_shapes
:����������*
squeeze_dims
2A
?ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/Squeeze�
UActorDistributionRnnNetwork/CategoricalProjectionNetwork/logits/MatMul/ReadVariableOpReadVariableOp^actordistributionrnnnetwork_categoricalprojectionnetwork_logits_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype02W
UActorDistributionRnnNetwork/CategoricalProjectionNetwork/logits/MatMul/ReadVariableOp�
FActorDistributionRnnNetwork/CategoricalProjectionNetwork/logits/MatMulMatMulHActorDistributionRnnNetwork/ActorDistributionRnnNetwork/Squeeze:output:0]ActorDistributionRnnNetwork/CategoricalProjectionNetwork/logits/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2H
FActorDistributionRnnNetwork/CategoricalProjectionNetwork/logits/MatMul�
VActorDistributionRnnNetwork/CategoricalProjectionNetwork/logits/BiasAdd/ReadVariableOpReadVariableOp_actordistributionrnnnetwork_categoricalprojectionnetwork_logits_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02X
VActorDistributionRnnNetwork/CategoricalProjectionNetwork/logits/BiasAdd/ReadVariableOp�
GActorDistributionRnnNetwork/CategoricalProjectionNetwork/logits/BiasAddBiasAddPActorDistributionRnnNetwork/CategoricalProjectionNetwork/logits/MatMul:product:0^ActorDistributionRnnNetwork/CategoricalProjectionNetwork/logits/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2I
GActorDistributionRnnNetwork/CategoricalProjectionNetwork/logits/BiasAdd�
FActorDistributionRnnNetwork/CategoricalProjectionNetwork/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"����   2H
FActorDistributionRnnNetwork/CategoricalProjectionNetwork/Reshape/shape�
@ActorDistributionRnnNetwork/CategoricalProjectionNetwork/ReshapeReshapePActorDistributionRnnNetwork/CategoricalProjectionNetwork/logits/BiasAdd:output:0OActorDistributionRnnNetwork/CategoricalProjectionNetwork/Reshape/shape:output:0*
T0*'
_output_shapes
:���������2B
@ActorDistributionRnnNetwork/CategoricalProjectionNetwork/Reshape�
ZActorDistributionRnnNetwork_CategoricalProjectionNetwork_Categorical/mode/ArgMax/dimensionConst*
_output_shapes
: *
dtype0*
valueB :
���������2\
ZActorDistributionRnnNetwork_CategoricalProjectionNetwork_Categorical/mode/ArgMax/dimension�
PActorDistributionRnnNetwork_CategoricalProjectionNetwork_Categorical/mode/ArgMaxArgMaxIActorDistributionRnnNetwork/CategoricalProjectionNetwork/Reshape:output:0cActorDistributionRnnNetwork_CategoricalProjectionNetwork_Categorical/mode/ArgMax/dimension:output:0*
T0*#
_output_shapes
:���������2R
PActorDistributionRnnNetwork_CategoricalProjectionNetwork_Categorical/mode/ArgMax�
NActorDistributionRnnNetwork_CategoricalProjectionNetwork_Categorical/mode/CastCastYActorDistributionRnnNetwork_CategoricalProjectionNetwork_Categorical/mode/ArgMax:output:0*

DstT0*

SrcT0	*#
_output_shapes
:���������2P
NActorDistributionRnnNetwork_CategoricalProjectionNetwork_Categorical/mode/Castj
Deterministic/atolConst*
_output_shapes
: *
dtype0*
value	B : 2
Deterministic/atolj
Deterministic/rtolConst*
_output_shapes
: *
dtype0*
value	B : 2
Deterministic/rtol�
#Deterministic_1/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB 2%
#Deterministic_1/sample/sample_shape�
Deterministic_1/sample/ShapeShapeRActorDistributionRnnNetwork_CategoricalProjectionNetwork_Categorical/mode/Cast:y:0*
T0*
_output_shapes
:2
Deterministic_1/sample/Shape�
'Deterministic_1/sample/BroadcastArgs/s1Const*
_output_shapes
: *
dtype0*
valueB 2)
'Deterministic_1/sample/BroadcastArgs/s1�
$Deterministic_1/sample/BroadcastArgsBroadcastArgs%Deterministic_1/sample/Shape:output:00Deterministic_1/sample/BroadcastArgs/s1:output:0*
_output_shapes
:2&
$Deterministic_1/sample/BroadcastArgs
Deterministic_1/sample/ConstConst*
_output_shapes
: *
dtype0*
valueB 2
Deterministic_1/sample/Const�
&Deterministic_1/sample/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:2(
&Deterministic_1/sample/concat/values_0�
"Deterministic_1/sample/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2$
"Deterministic_1/sample/concat/axis�
Deterministic_1/sample/concatConcatV2/Deterministic_1/sample/concat/values_0:output:0)Deterministic_1/sample/BroadcastArgs:r0:0%Deterministic_1/sample/Const:output:0+Deterministic_1/sample/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Deterministic_1/sample/concat�
"Deterministic_1/sample/BroadcastToBroadcastToRActorDistributionRnnNetwork_CategoricalProjectionNetwork_Categorical/mode/Cast:y:0&Deterministic_1/sample/concat:output:0*
T0*'
_output_shapes
:���������2$
"Deterministic_1/sample/BroadcastTo�
Deterministic_1/sample/Shape_1Shape+Deterministic_1/sample/BroadcastTo:output:0*
T0*
_output_shapes
:2 
Deterministic_1/sample/Shape_1�
*Deterministic_1/sample/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2,
*Deterministic_1/sample/strided_slice/stack�
,Deterministic_1/sample/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2.
,Deterministic_1/sample/strided_slice/stack_1�
,Deterministic_1/sample/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2.
,Deterministic_1/sample/strided_slice/stack_2�
$Deterministic_1/sample/strided_sliceStridedSlice'Deterministic_1/sample/Shape_1:output:03Deterministic_1/sample/strided_slice/stack:output:05Deterministic_1/sample/strided_slice/stack_1:output:05Deterministic_1/sample/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*
end_mask2&
$Deterministic_1/sample/strided_slice�
$Deterministic_1/sample/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2&
$Deterministic_1/sample/concat_1/axis�
Deterministic_1/sample/concat_1ConcatV2,Deterministic_1/sample/sample_shape:output:0-Deterministic_1/sample/strided_slice:output:0-Deterministic_1/sample/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2!
Deterministic_1/sample/concat_1�
Deterministic_1/sample/ReshapeReshape+Deterministic_1/sample/BroadcastTo:output:0(Deterministic_1/sample/concat_1:output:0*
T0*#
_output_shapes
:���������2 
Deterministic_1/sample/Reshapet
clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
value	B :2
clip_by_value/Minimum/y�
clip_by_value/MinimumMinimum'Deterministic_1/sample/Reshape:output:0 clip_by_value/Minimum/y:output:0*
T0*#
_output_shapes
:���������2
clip_by_value/Minimumd
clip_by_value/yConst*
_output_shapes
: *
dtype0*
value	B : 2
clip_by_value/y�
clip_by_valueMaximumclip_by_value/Minimum:z:0clip_by_value/y:output:0*
T0*#
_output_shapes
:���������2
clip_by_value�
IdentityIdentityclip_by_value:z:0f^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d/BiasAdd/ReadVariableOpe^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d/Conv2D/ReadVariableOph^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d_1/BiasAdd/ReadVariableOpg^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d_1/Conv2D/ReadVariableOpe^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOpd^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/MatMul/ReadVariableOpW^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/BiasAdd/ReadVariableOpY^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/ReadVariableOph^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/BiasAdd/ReadVariableOpg^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/MatMul/ReadVariableOpi^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/MatMul_1/ReadVariableOpW^ActorDistributionRnnNetwork/CategoricalProjectionNetwork/logits/BiasAdd/ReadVariableOpV^ActorDistributionRnnNetwork/CategoricalProjectionNetwork/logits/MatMul/ReadVariableOp0^normalize_observations/normalize/ReadVariableOp2^normalize_observations/normalize/ReadVariableOp_18^normalize_observations/normalize/truediv/ReadVariableOp:^normalize_observations/normalize/truediv_1/ReadVariableOp*
T0*#
_output_shapes
:���������2

Identity�

Identity_1IdentityZActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/mul_2:z:0f^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d/BiasAdd/ReadVariableOpe^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d/Conv2D/ReadVariableOph^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d_1/BiasAdd/ReadVariableOpg^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d_1/Conv2D/ReadVariableOpe^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOpd^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/MatMul/ReadVariableOpW^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/BiasAdd/ReadVariableOpY^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/ReadVariableOph^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/BiasAdd/ReadVariableOpg^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/MatMul/ReadVariableOpi^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/MatMul_1/ReadVariableOpW^ActorDistributionRnnNetwork/CategoricalProjectionNetwork/logits/BiasAdd/ReadVariableOpV^ActorDistributionRnnNetwork/CategoricalProjectionNetwork/logits/MatMul/ReadVariableOp0^normalize_observations/normalize/ReadVariableOp2^normalize_observations/normalize/ReadVariableOp_18^normalize_observations/normalize/truediv/ReadVariableOp:^normalize_observations/normalize/truediv_1/ReadVariableOp*
T0*(
_output_shapes
:����������2

Identity_1�

Identity_2IdentityZActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/add_1:z:0f^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d/BiasAdd/ReadVariableOpe^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d/Conv2D/ReadVariableOph^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d_1/BiasAdd/ReadVariableOpg^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d_1/Conv2D/ReadVariableOpe^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOpd^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/MatMul/ReadVariableOpW^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/BiasAdd/ReadVariableOpY^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/ReadVariableOph^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/BiasAdd/ReadVariableOpg^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/MatMul/ReadVariableOpi^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/MatMul_1/ReadVariableOpW^ActorDistributionRnnNetwork/CategoricalProjectionNetwork/logits/BiasAdd/ReadVariableOpV^ActorDistributionRnnNetwork/CategoricalProjectionNetwork/logits/MatMul/ReadVariableOp0^normalize_observations/normalize/ReadVariableOp2^normalize_observations/normalize/ReadVariableOp_18^normalize_observations/normalize/truediv/ReadVariableOp:^normalize_observations/normalize/truediv_1/ReadVariableOp*
T0*(
_output_shapes
:����������2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*�
_input_shapes�
�:���������:���������:���������:���������:����������:����������::::::::::::::::2�
eActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d/BiasAdd/ReadVariableOpeActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d/BiasAdd/ReadVariableOp2�
dActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d/Conv2D/ReadVariableOpdActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d/Conv2D/ReadVariableOp2�
gActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d_1/BiasAdd/ReadVariableOpgActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d_1/BiasAdd/ReadVariableOp2�
fActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d_1/Conv2D/ReadVariableOpfActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d_1/Conv2D/ReadVariableOp2�
dActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOpdActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOp2�
cActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/MatMul/ReadVariableOpcActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/MatMul/ReadVariableOp2�
VActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/BiasAdd/ReadVariableOpVActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/BiasAdd/ReadVariableOp2�
XActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/ReadVariableOpXActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/ReadVariableOp2�
gActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/BiasAdd/ReadVariableOpgActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/BiasAdd/ReadVariableOp2�
fActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/MatMul/ReadVariableOpfActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/MatMul/ReadVariableOp2�
hActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/MatMul_1/ReadVariableOphActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/MatMul_1/ReadVariableOp2�
VActorDistributionRnnNetwork/CategoricalProjectionNetwork/logits/BiasAdd/ReadVariableOpVActorDistributionRnnNetwork/CategoricalProjectionNetwork/logits/BiasAdd/ReadVariableOp2�
UActorDistributionRnnNetwork/CategoricalProjectionNetwork/logits/MatMul/ReadVariableOpUActorDistributionRnnNetwork/CategoricalProjectionNetwork/logits/MatMul/ReadVariableOp2b
/normalize_observations/normalize/ReadVariableOp/normalize_observations/normalize/ReadVariableOp2f
1normalize_observations/normalize/ReadVariableOp_11normalize_observations/normalize/ReadVariableOp_12r
7normalize_observations/normalize/truediv/ReadVariableOp7normalize_observations/normalize/truediv/ReadVariableOp2v
9normalize_observations/normalize/truediv_1/ReadVariableOp9normalize_observations/normalize/truediv_1/ReadVariableOp:N J
#
_output_shapes
:���������
#
_user_specified_name	step_type:KG
#
_output_shapes
:���������
 
_user_specified_namereward:MI
#
_output_shapes
:���������
"
_user_specified_name
discount:\X
/
_output_shapes
:���������
%
_user_specified_nameobservation:_[
(
_output_shapes
:����������
/
_user_specified_nameactor_network_state/0:_[
(
_output_shapes
:����������
/
_user_specified_nameactor_network_state/1
�
U
%__inference_get_initial_state_4777688

batch_size
identity

identity_1R
packedPack
batch_size*
N*
T0*
_output_shapes
:2
packedm
shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB:�2
shape_as_tensor\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis�
concatConcatV2packed:output:0shape_as_tensor:output:0concat/axis:output:0*
N*
T0*
_output_shapes
:2
concat_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constp
zerosFillconcat:output:0zeros/Const:output:0*
T0*(
_output_shapes
:����������2
zerosq
shape_as_tensor_1Const*
_output_shapes
:*
dtype0*
valueB:�2
shape_as_tensor_1`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_1/axis�
concat_1ConcatV2packed:output:0shape_as_tensor_1:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes
:2

concat_1c
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Constx
zeros_1Fillconcat_1:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:����������2	
zeros_1c
IdentityIdentityzeros:output:0*
T0*(
_output_shapes
:����������2

Identityi

Identity_1Identityzeros_1:output:0*
T0*(
_output_shapes
:����������2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*
_input_shapes
: :B >

_output_shapes
: 
$
_user_specified_name
batch_size
�
V
&__inference_signature_wrapper_40981558

batch_size
identity

identity_1�
PartitionedCallPartitionedCall
batch_size*
Tin
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:����������:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *4
f/R-
+__inference_function_with_signature_47776932
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:����������2

Identityq

Identity_1IdentityPartitionedCall:output:1*
T0*(
_output_shapes
:����������2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*
_input_shapes
: :B >

_output_shapes
: 
$
_user_specified_name
batch_size
�
U
%__inference_get_initial_state_4778507

batch_size
identity

identity_1R
packedPack
batch_size*
N*
T0*
_output_shapes
:2
packedm
shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB:�2
shape_as_tensor\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis�
concatConcatV2packed:output:0shape_as_tensor:output:0concat/axis:output:0*
N*
T0*
_output_shapes
:2
concat_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constp
zerosFillconcat:output:0zeros/Const:output:0*
T0*(
_output_shapes
:����������2
zerosq
shape_as_tensor_1Const*
_output_shapes
:*
dtype0*
valueB:�2
shape_as_tensor_1`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_1/axis�
concat_1ConcatV2packed:output:0shape_as_tensor_1:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes
:2

concat_1c
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Constx
zeros_1Fillconcat_1:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:����������2	
zeros_1c
IdentityIdentityzeros:output:0*
T0*(
_output_shapes
:����������2

Identityi

Identity_1Identityzeros_1:output:0*
T0*(
_output_shapes
:����������2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*
_input_shapes
: :B >

_output_shapes
: 
$
_user_specified_name
batch_size
�
Y
__inference_<lambda>_771
readvariableop_resource
identity	��ReadVariableOpp
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0	2
ReadVariableOpj
IdentityIdentityReadVariableOp:value:0^ReadVariableOp*
T0	*
_output_shapes
: 2

Identity"
identityIdentity:output:0*
_input_shapes
:2 
ReadVariableOpReadVariableOp
�
`
&__inference_signature_wrapper_40981566
unknown
identity	��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallunknown*
Tin
2*
Tout
2	*
_collective_manager_ids
 *
_output_shapes
: *#
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *4
f/R-
+__inference_function_with_signature_47777092
StatefulPartitionedCall}
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0	*
_output_shapes
: 2

Identity"
identityIdentity:output:0*
_input_shapes
:22
StatefulPartitionedCallStatefulPartitionedCall
�
-
+__inference_function_with_signature_4777720�
PartitionedCallPartitionedCall*	
Tin
 *

Tout
 *
_collective_manager_ids
 *
_output_shapes
 * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *!
fR
__inference_<lambda>_7742
PartitionedCall*
_input_shapes 
��
�
$__inference__traced_restore_40981794
file_prefix
assignvariableop_variablel
hassignvariableop_1_actordistributionrnnnetwork_actordistributionrnnnetwork_encodingnetwork_conv2d_kernelj
fassignvariableop_2_actordistributionrnnnetwork_actordistributionrnnnetwork_encodingnetwork_conv2d_biasn
jassignvariableop_3_actordistributionrnnnetwork_actordistributionrnnnetwork_encodingnetwork_conv2d_1_kernell
hassignvariableop_4_actordistributionrnnnetwork_actordistributionrnnnetwork_encodingnetwork_conv2d_1_biask
gassignvariableop_5_actordistributionrnnnetwork_actordistributionrnnnetwork_encodingnetwork_dense_kerneli
eassignvariableop_6_actordistributionrnnnetwork_actordistributionrnnnetwork_encodingnetwork_dense_biasd
`assignvariableop_7_actordistributionrnnnetwork_actordistributionrnnnetwork_dynamic_unroll_kerneln
jassignvariableop_8_actordistributionrnnnetwork_actordistributionrnnnetwork_dynamic_unroll_recurrent_kernelb
^assignvariableop_9_actordistributionrnnnetwork_actordistributionrnnnetwork_dynamic_unroll_bias^
Zassignvariableop_10_actordistributionrnnnetwork_actordistributionrnnnetwork_dense_1_kernel\
Xassignvariableop_11_actordistributionrnnnetwork_actordistributionrnnnetwork_dense_1_bias^
Zassignvariableop_12_actordistributionrnnnetwork_categoricalprojectionnetwork_logits_kernel\
Xassignvariableop_13_actordistributionrnnnetwork_categoricalprojectionnetwork_logits_bias
assignvariableop_14_count 
assignvariableop_15_mean_sum
assignvariableop_16_var_sumW
Sassignvariableop_17_valuernnnetwork_valuernnnetwork_encodingnetwork_conv2d_2_kernelU
Qassignvariableop_18_valuernnnetwork_valuernnnetwork_encodingnetwork_conv2d_2_biasW
Sassignvariableop_19_valuernnnetwork_valuernnnetwork_encodingnetwork_conv2d_3_kernelU
Qassignvariableop_20_valuernnnetwork_valuernnnetwork_encodingnetwork_conv2d_3_biasV
Rassignvariableop_21_valuernnnetwork_valuernnnetwork_encodingnetwork_dense_2_kernelT
Passignvariableop_22_valuernnnetwork_valuernnnetwork_encodingnetwork_dense_2_biasO
Kassignvariableop_23_valuernnnetwork_valuernnnetwork_dynamic_unroll_1_kernelY
Uassignvariableop_24_valuernnnetwork_valuernnnetwork_dynamic_unroll_1_recurrent_kernelM
Iassignvariableop_25_valuernnnetwork_valuernnnetwork_dynamic_unroll_1_biasF
Bassignvariableop_26_valuernnnetwork_valuernnnetwork_dense_3_kernelD
@assignvariableop_27_valuernnnetwork_valuernnnetwork_dense_3_bias6
2assignvariableop_28_valuernnnetwork_dense_4_kernel4
0assignvariableop_29_valuernnnetwork_dense_4_bias
identity_31��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_20�AssignVariableOp_21�AssignVariableOp_22�AssignVariableOp_23�AssignVariableOp_24�AssignVariableOp_25�AssignVariableOp_26�AssignVariableOp_27�AssignVariableOp_28�AssignVariableOp_29�AssignVariableOp_3�AssignVariableOp_4�AssignVariableOp_5�AssignVariableOp_6�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�
value�B�B%train_step/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/0/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/1/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/2/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/3/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/4/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/5/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/6/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/7/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/8/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/9/.ATTRIBUTES/VARIABLE_VALUEB-model_variables/10/.ATTRIBUTES/VARIABLE_VALUEB-model_variables/11/.ATTRIBUTES/VARIABLE_VALUEB-model_variables/12/.ATTRIBUTES/VARIABLE_VALUEB-model_variables/13/.ATTRIBUTES/VARIABLE_VALUEB-model_variables/14/.ATTRIBUTES/VARIABLE_VALUEB-model_variables/15/.ATTRIBUTES/VARIABLE_VALUEB-model_variables/16/.ATTRIBUTES/VARIABLE_VALUEB-model_variables/17/.ATTRIBUTES/VARIABLE_VALUEB-model_variables/18/.ATTRIBUTES/VARIABLE_VALUEB-model_variables/19/.ATTRIBUTES/VARIABLE_VALUEB-model_variables/20/.ATTRIBUTES/VARIABLE_VALUEB-model_variables/21/.ATTRIBUTES/VARIABLE_VALUEB-model_variables/22/.ATTRIBUTES/VARIABLE_VALUEB-model_variables/23/.ATTRIBUTES/VARIABLE_VALUEB-model_variables/24/.ATTRIBUTES/VARIABLE_VALUEB-model_variables/25/.ATTRIBUTES/VARIABLE_VALUEB-model_variables/26/.ATTRIBUTES/VARIABLE_VALUEB-model_variables/27/.ATTRIBUTES/VARIABLE_VALUEB-model_variables/28/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*Q
valueHBFB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices�
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*�
_output_shapes~
|:::::::::::::::::::::::::::::::*-
dtypes#
!2	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0	*
_output_shapes
:2

Identity�
AssignVariableOpAssignVariableOpassignvariableop_variableIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1�
AssignVariableOp_1AssignVariableOphassignvariableop_1_actordistributionrnnnetwork_actordistributionrnnnetwork_encodingnetwork_conv2d_kernelIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2�
AssignVariableOp_2AssignVariableOpfassignvariableop_2_actordistributionrnnnetwork_actordistributionrnnnetwork_encodingnetwork_conv2d_biasIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3�
AssignVariableOp_3AssignVariableOpjassignvariableop_3_actordistributionrnnnetwork_actordistributionrnnnetwork_encodingnetwork_conv2d_1_kernelIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4�
AssignVariableOp_4AssignVariableOphassignvariableop_4_actordistributionrnnnetwork_actordistributionrnnnetwork_encodingnetwork_conv2d_1_biasIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5�
AssignVariableOp_5AssignVariableOpgassignvariableop_5_actordistributionrnnnetwork_actordistributionrnnnetwork_encodingnetwork_dense_kernelIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6�
AssignVariableOp_6AssignVariableOpeassignvariableop_6_actordistributionrnnnetwork_actordistributionrnnnetwork_encodingnetwork_dense_biasIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7�
AssignVariableOp_7AssignVariableOp`assignvariableop_7_actordistributionrnnnetwork_actordistributionrnnnetwork_dynamic_unroll_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8�
AssignVariableOp_8AssignVariableOpjassignvariableop_8_actordistributionrnnnetwork_actordistributionrnnnetwork_dynamic_unroll_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9�
AssignVariableOp_9AssignVariableOp^assignvariableop_9_actordistributionrnnnetwork_actordistributionrnnnetwork_dynamic_unroll_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10�
AssignVariableOp_10AssignVariableOpZassignvariableop_10_actordistributionrnnnetwork_actordistributionrnnnetwork_dense_1_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11�
AssignVariableOp_11AssignVariableOpXassignvariableop_11_actordistributionrnnnetwork_actordistributionrnnnetwork_dense_1_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12�
AssignVariableOp_12AssignVariableOpZassignvariableop_12_actordistributionrnnnetwork_categoricalprojectionnetwork_logits_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13�
AssignVariableOp_13AssignVariableOpXassignvariableop_13_actordistributionrnnnetwork_categoricalprojectionnetwork_logits_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14�
AssignVariableOp_14AssignVariableOpassignvariableop_14_countIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15�
AssignVariableOp_15AssignVariableOpassignvariableop_15_mean_sumIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16�
AssignVariableOp_16AssignVariableOpassignvariableop_16_var_sumIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17�
AssignVariableOp_17AssignVariableOpSassignvariableop_17_valuernnnetwork_valuernnnetwork_encodingnetwork_conv2d_2_kernelIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18�
AssignVariableOp_18AssignVariableOpQassignvariableop_18_valuernnnetwork_valuernnnetwork_encodingnetwork_conv2d_2_biasIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19�
AssignVariableOp_19AssignVariableOpSassignvariableop_19_valuernnnetwork_valuernnnetwork_encodingnetwork_conv2d_3_kernelIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20�
AssignVariableOp_20AssignVariableOpQassignvariableop_20_valuernnnetwork_valuernnnetwork_encodingnetwork_conv2d_3_biasIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21�
AssignVariableOp_21AssignVariableOpRassignvariableop_21_valuernnnetwork_valuernnnetwork_encodingnetwork_dense_2_kernelIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22�
AssignVariableOp_22AssignVariableOpPassignvariableop_22_valuernnnetwork_valuernnnetwork_encodingnetwork_dense_2_biasIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23�
AssignVariableOp_23AssignVariableOpKassignvariableop_23_valuernnnetwork_valuernnnetwork_dynamic_unroll_1_kernelIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24�
AssignVariableOp_24AssignVariableOpUassignvariableop_24_valuernnnetwork_valuernnnetwork_dynamic_unroll_1_recurrent_kernelIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25�
AssignVariableOp_25AssignVariableOpIassignvariableop_25_valuernnnetwork_valuernnnetwork_dynamic_unroll_1_biasIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26�
AssignVariableOp_26AssignVariableOpBassignvariableop_26_valuernnnetwork_valuernnnetwork_dense_3_kernelIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27�
AssignVariableOp_27AssignVariableOp@assignvariableop_27_valuernnnetwork_valuernnnetwork_dense_3_biasIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28�
AssignVariableOp_28AssignVariableOp2assignvariableop_28_valuernnnetwork_dense_4_kernelIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29�
AssignVariableOp_29AssignVariableOp0assignvariableop_29_valuernnnetwork_dense_4_biasIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_299
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp�
Identity_30Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_30�
Identity_31IdentityIdentity_30:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_31"#
identity_31Identity_31:output:0*�
_input_shapes|
z: ::::::::::::::::::::::::::::::2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
�
�
&__inference_signature_wrapper_40981549
discount
observation

reward
	step_type
actor_network_state_0
actor_network_state_1
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14
identity

identity_1

identity_2��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCall	step_typerewarddiscountobservationactor_network_state_0actor_network_state_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*!
Tin
2*
Tout
2*
_collective_manager_ids
 *K
_output_shapes9
7:���������:����������:����������*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *4
f/R-
+__inference_function_with_signature_47776212
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*#
_output_shapes
:���������2

Identity�

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*(
_output_shapes
:����������2

Identity_1�

Identity_2Identity StatefulPartitionedCall:output:2^StatefulPartitionedCall*
T0*(
_output_shapes
:����������2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*�
_input_shapes�
�:���������:���������:���������:���������:����������:����������::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:O K
#
_output_shapes
:���������
$
_user_specified_name
0/discount:^Z
/
_output_shapes
:���������
'
_user_specified_name0/observation:MI
#
_output_shapes
:���������
"
_user_specified_name
0/reward:PL
#
_output_shapes
:���������
%
_user_specified_name0/step_type:a]
(
_output_shapes
:����������
1
_user_specified_name1/actor_network_state/0:a]
(
_output_shapes
:����������
1
_user_specified_name1/actor_network_state/1
�S
�
!__inference__traced_save_40981694
file_prefix'
#savev2_variable_read_readvariableop	t
psavev2_actordistributionrnnnetwork_actordistributionrnnnetwork_encodingnetwork_conv2d_kernel_read_readvariableopr
nsavev2_actordistributionrnnnetwork_actordistributionrnnnetwork_encodingnetwork_conv2d_bias_read_readvariableopv
rsavev2_actordistributionrnnnetwork_actordistributionrnnnetwork_encodingnetwork_conv2d_1_kernel_read_readvariableopt
psavev2_actordistributionrnnnetwork_actordistributionrnnnetwork_encodingnetwork_conv2d_1_bias_read_readvariableops
osavev2_actordistributionrnnnetwork_actordistributionrnnnetwork_encodingnetwork_dense_kernel_read_readvariableopq
msavev2_actordistributionrnnnetwork_actordistributionrnnnetwork_encodingnetwork_dense_bias_read_readvariableopl
hsavev2_actordistributionrnnnetwork_actordistributionrnnnetwork_dynamic_unroll_kernel_read_readvariableopv
rsavev2_actordistributionrnnnetwork_actordistributionrnnnetwork_dynamic_unroll_recurrent_kernel_read_readvariableopj
fsavev2_actordistributionrnnnetwork_actordistributionrnnnetwork_dynamic_unroll_bias_read_readvariableope
asavev2_actordistributionrnnnetwork_actordistributionrnnnetwork_dense_1_kernel_read_readvariableopc
_savev2_actordistributionrnnnetwork_actordistributionrnnnetwork_dense_1_bias_read_readvariableope
asavev2_actordistributionrnnnetwork_categoricalprojectionnetwork_logits_kernel_read_readvariableopc
_savev2_actordistributionrnnnetwork_categoricalprojectionnetwork_logits_bias_read_readvariableop$
 savev2_count_read_readvariableop'
#savev2_mean_sum_read_readvariableop&
"savev2_var_sum_read_readvariableop^
Zsavev2_valuernnnetwork_valuernnnetwork_encodingnetwork_conv2d_2_kernel_read_readvariableop\
Xsavev2_valuernnnetwork_valuernnnetwork_encodingnetwork_conv2d_2_bias_read_readvariableop^
Zsavev2_valuernnnetwork_valuernnnetwork_encodingnetwork_conv2d_3_kernel_read_readvariableop\
Xsavev2_valuernnnetwork_valuernnnetwork_encodingnetwork_conv2d_3_bias_read_readvariableop]
Ysavev2_valuernnnetwork_valuernnnetwork_encodingnetwork_dense_2_kernel_read_readvariableop[
Wsavev2_valuernnnetwork_valuernnnetwork_encodingnetwork_dense_2_bias_read_readvariableopV
Rsavev2_valuernnnetwork_valuernnnetwork_dynamic_unroll_1_kernel_read_readvariableop`
\savev2_valuernnnetwork_valuernnnetwork_dynamic_unroll_1_recurrent_kernel_read_readvariableopT
Psavev2_valuernnnetwork_valuernnnetwork_dynamic_unroll_1_bias_read_readvariableopM
Isavev2_valuernnnetwork_valuernnnetwork_dense_3_kernel_read_readvariableopK
Gsavev2_valuernnnetwork_valuernnnetwork_dense_3_bias_read_readvariableop=
9savev2_valuernnnetwork_dense_4_kernel_read_readvariableop;
7savev2_valuernnnetwork_dense_4_bias_read_readvariableop
savev2_const

identity_1��MergeV2Checkpoints�
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1�
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shard�
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename�
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�
value�B�B%train_step/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/0/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/1/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/2/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/3/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/4/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/5/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/6/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/7/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/8/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/9/.ATTRIBUTES/VARIABLE_VALUEB-model_variables/10/.ATTRIBUTES/VARIABLE_VALUEB-model_variables/11/.ATTRIBUTES/VARIABLE_VALUEB-model_variables/12/.ATTRIBUTES/VARIABLE_VALUEB-model_variables/13/.ATTRIBUTES/VARIABLE_VALUEB-model_variables/14/.ATTRIBUTES/VARIABLE_VALUEB-model_variables/15/.ATTRIBUTES/VARIABLE_VALUEB-model_variables/16/.ATTRIBUTES/VARIABLE_VALUEB-model_variables/17/.ATTRIBUTES/VARIABLE_VALUEB-model_variables/18/.ATTRIBUTES/VARIABLE_VALUEB-model_variables/19/.ATTRIBUTES/VARIABLE_VALUEB-model_variables/20/.ATTRIBUTES/VARIABLE_VALUEB-model_variables/21/.ATTRIBUTES/VARIABLE_VALUEB-model_variables/22/.ATTRIBUTES/VARIABLE_VALUEB-model_variables/23/.ATTRIBUTES/VARIABLE_VALUEB-model_variables/24/.ATTRIBUTES/VARIABLE_VALUEB-model_variables/25/.ATTRIBUTES/VARIABLE_VALUEB-model_variables/26/.ATTRIBUTES/VARIABLE_VALUEB-model_variables/27/.ATTRIBUTES/VARIABLE_VALUEB-model_variables/28/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*Q
valueHBFB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices�
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0#savev2_variable_read_readvariableoppsavev2_actordistributionrnnnetwork_actordistributionrnnnetwork_encodingnetwork_conv2d_kernel_read_readvariableopnsavev2_actordistributionrnnnetwork_actordistributionrnnnetwork_encodingnetwork_conv2d_bias_read_readvariableoprsavev2_actordistributionrnnnetwork_actordistributionrnnnetwork_encodingnetwork_conv2d_1_kernel_read_readvariableoppsavev2_actordistributionrnnnetwork_actordistributionrnnnetwork_encodingnetwork_conv2d_1_bias_read_readvariableoposavev2_actordistributionrnnnetwork_actordistributionrnnnetwork_encodingnetwork_dense_kernel_read_readvariableopmsavev2_actordistributionrnnnetwork_actordistributionrnnnetwork_encodingnetwork_dense_bias_read_readvariableophsavev2_actordistributionrnnnetwork_actordistributionrnnnetwork_dynamic_unroll_kernel_read_readvariableoprsavev2_actordistributionrnnnetwork_actordistributionrnnnetwork_dynamic_unroll_recurrent_kernel_read_readvariableopfsavev2_actordistributionrnnnetwork_actordistributionrnnnetwork_dynamic_unroll_bias_read_readvariableopasavev2_actordistributionrnnnetwork_actordistributionrnnnetwork_dense_1_kernel_read_readvariableop_savev2_actordistributionrnnnetwork_actordistributionrnnnetwork_dense_1_bias_read_readvariableopasavev2_actordistributionrnnnetwork_categoricalprojectionnetwork_logits_kernel_read_readvariableop_savev2_actordistributionrnnnetwork_categoricalprojectionnetwork_logits_bias_read_readvariableop savev2_count_read_readvariableop#savev2_mean_sum_read_readvariableop"savev2_var_sum_read_readvariableopZsavev2_valuernnnetwork_valuernnnetwork_encodingnetwork_conv2d_2_kernel_read_readvariableopXsavev2_valuernnnetwork_valuernnnetwork_encodingnetwork_conv2d_2_bias_read_readvariableopZsavev2_valuernnnetwork_valuernnnetwork_encodingnetwork_conv2d_3_kernel_read_readvariableopXsavev2_valuernnnetwork_valuernnnetwork_encodingnetwork_conv2d_3_bias_read_readvariableopYsavev2_valuernnnetwork_valuernnnetwork_encodingnetwork_dense_2_kernel_read_readvariableopWsavev2_valuernnnetwork_valuernnnetwork_encodingnetwork_dense_2_bias_read_readvariableopRsavev2_valuernnnetwork_valuernnnetwork_dynamic_unroll_1_kernel_read_readvariableop\savev2_valuernnnetwork_valuernnnetwork_dynamic_unroll_1_recurrent_kernel_read_readvariableopPsavev2_valuernnnetwork_valuernnnetwork_dynamic_unroll_1_bias_read_readvariableopIsavev2_valuernnnetwork_valuernnnetwork_dense_3_kernel_read_readvariableopGsavev2_valuernnnetwork_valuernnnetwork_dense_3_bias_read_readvariableop9savev2_valuernnnetwork_dense_4_kernel_read_readvariableop7savev2_valuernnnetwork_dense_4_bias_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *-
dtypes#
!2	2
SaveV2�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identitym

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*�
_input_shapes�
�: : ::: : :
�	�:�:
��:
��:�:
��:�:	�::::::: : :
�	�:�:
��:
��:�:
��:�:	�:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:

_output_shapes
: :,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
: : 

_output_shapes
: :&"
 
_output_shapes
:
�	�:!

_output_shapes	
:�:&"
 
_output_shapes
:
��:&	"
 
_output_shapes
:
��:!


_output_shapes	
:�:&"
 
_output_shapes
:
��:!

_output_shapes	
:�:%!

_output_shapes
:	�: 

_output_shapes
::($
"
_output_shapes
::($
"
_output_shapes
::($
"
_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
: : 

_output_shapes
: :&"
 
_output_shapes
:
�	�:!

_output_shapes	
:�:&"
 
_output_shapes
:
��:&"
 
_output_shapes
:
��:!

_output_shapes	
:�:&"
 
_output_shapes
:
��:!

_output_shapes	
:�:%!

_output_shapes
:	�: 

_output_shapes
::

_output_shapes
: 
��
�
__inference_action_4777582
	time_step
time_step_1
time_step_2
time_step_3
policy_state
policy_state_1<
8normalize_observations_normalize_readvariableop_resourceD
@normalize_observations_normalize_truediv_readvariableop_resource>
:normalize_observations_normalize_readvariableop_1_resourceq
mactordistributionrnnnetwork_actordistributionrnnnetwork_encodingnetwork_conv2d_conv2d_readvariableop_resourcer
nactordistributionrnnnetwork_actordistributionrnnnetwork_encodingnetwork_conv2d_biasadd_readvariableop_resources
oactordistributionrnnnetwork_actordistributionrnnnetwork_encodingnetwork_conv2d_1_conv2d_readvariableop_resourcet
pactordistributionrnnnetwork_actordistributionrnnnetwork_encodingnetwork_conv2d_1_biasadd_readvariableop_resourcep
lactordistributionrnnnetwork_actordistributionrnnnetwork_encodingnetwork_dense_matmul_readvariableop_resourceq
mactordistributionrnnnetwork_actordistributionrnnnetwork_encodingnetwork_dense_biasadd_readvariableop_resources
oactordistributionrnnnetwork_actordistributionrnnnetwork_dynamic_unroll_lstm_cell_matmul_readvariableop_resourceu
qactordistributionrnnnetwork_actordistributionrnnnetwork_dynamic_unroll_lstm_cell_matmul_1_readvariableop_resourcet
pactordistributionrnnnetwork_actordistributionrnnnetwork_dynamic_unroll_lstm_cell_biasadd_readvariableop_resourcee
aactordistributionrnnnetwork_actordistributionrnnnetwork_dense_1_tensordot_readvariableop_resourcec
_actordistributionrnnnetwork_actordistributionrnnnetwork_dense_1_biasadd_readvariableop_resourceb
^actordistributionrnnnetwork_categoricalprojectionnetwork_logits_matmul_readvariableop_resourcec
_actordistributionrnnnetwork_categoricalprojectionnetwork_logits_biasadd_readvariableop_resource
identity

identity_1

identity_2��eActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d/BiasAdd/ReadVariableOp�dActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d/Conv2D/ReadVariableOp�gActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d_1/BiasAdd/ReadVariableOp�fActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d_1/Conv2D/ReadVariableOp�dActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOp�cActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/MatMul/ReadVariableOp�VActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/BiasAdd/ReadVariableOp�XActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/ReadVariableOp�gActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/BiasAdd/ReadVariableOp�fActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/MatMul/ReadVariableOp�hActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/MatMul_1/ReadVariableOp�VActorDistributionRnnNetwork/CategoricalProjectionNetwork/logits/BiasAdd/ReadVariableOp�UActorDistributionRnnNetwork/CategoricalProjectionNetwork/logits/MatMul/ReadVariableOp�/normalize_observations/normalize/ReadVariableOp�1normalize_observations/normalize/ReadVariableOp_1�7normalize_observations/normalize/truediv/ReadVariableOp�9normalize_observations/normalize/truediv_1/ReadVariableOpI
ShapeShapetime_step_2*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice^
packedPackstrided_slice:output:0*
N*
T0*
_output_shapes
:2
packedm
shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB:�2
shape_as_tensor\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis�
concatConcatV2packed:output:0shape_as_tensor:output:0concat/axis:output:0*
N*
T0*
_output_shapes
:2
concat_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constp
zerosFillconcat:output:0zeros/Const:output:0*
T0*(
_output_shapes
:����������2
zerosq
shape_as_tensor_1Const*
_output_shapes
:*
dtype0*
valueB:�2
shape_as_tensor_1`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_1/axis�
concat_1ConcatV2packed:output:0shape_as_tensor_1:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes
:2

concat_1c
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Constx
zeros_1Fillconcat_1:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:����������2	
zeros_1T
Equal/yConst*
_output_shapes
: *
dtype0*
value	B : 2	
Equal/yb
EqualEqual	time_stepEqual/y:output:0*
T0*#
_output_shapes
:���������2
EqualN
RankConst*
_output_shapes
: *
dtype0*
value	B :2
RankR
Rank_1Const*
_output_shapes
: *
dtype0*
value	B :2
Rank_1R
subSubRank:output:0Rank_1:output:0*
T0*
_output_shapes
: 2
subK
Shape_1Shape	Equal:z:0*
T0
*
_output_shapes
:2	
Shape_1{
ones/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
���������2
ones/Reshape/shaper
ones/ReshapeReshapesub:z:0ones/Reshape/shape:output:0*
T0*
_output_shapes
:2
ones/ReshapeZ

ones/ConstConst*
_output_shapes
: *
dtype0*
value	B :2

ones/Conste
onesFillones/Reshape:output:0ones/Const:output:0*
T0*
_output_shapes
:2
ones`
concat_2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_2/axis�
concat_2ConcatV2Shape_1:output:0ones:output:0concat_2/axis:output:0*
N*
T0*
_output_shapes
:2

concat_2m
ReshapeReshape	Equal:z:0concat_2:output:0*
T0
*'
_output_shapes
:���������2	
Reshape�
SelectV2SelectV2Reshape:output:0zeros:output:0policy_state*
T0*(
_output_shapes
:����������2

SelectV2�

SelectV2_1SelectV2Reshape:output:0zeros_1:output:0policy_state_1*
T0*(
_output_shapes
:����������2

SelectV2_1M
Shape_2Shapetime_step_2*
T0*
_output_shapes
:2	
Shape_2x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2�
strided_slice_1StridedSliceShape_2:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1d
packed_1Packstrided_slice_1:output:0*
N*
T0*
_output_shapes
:2

packed_1q
shape_as_tensor_2Const*
_output_shapes
:*
dtype0*
valueB:�2
shape_as_tensor_2`
concat_3/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_3/axis�
concat_3ConcatV2packed_1:output:0shape_as_tensor_2:output:0concat_3/axis:output:0*
N*
T0*
_output_shapes
:2

concat_3c
zeros_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_2/Constx
zeros_2Fillconcat_3:output:0zeros_2/Const:output:0*
T0*(
_output_shapes
:����������2	
zeros_2q
shape_as_tensor_3Const*
_output_shapes
:*
dtype0*
valueB:�2
shape_as_tensor_3`
concat_4/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_4/axis�
concat_4ConcatV2packed_1:output:0shape_as_tensor_3:output:0concat_4/axis:output:0*
N*
T0*
_output_shapes
:2

concat_4c
zeros_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_3/Constx
zeros_3Fillconcat_4:output:0zeros_3/Const:output:0*
T0*(
_output_shapes
:����������2	
zeros_3X
	Equal_1/yConst*
_output_shapes
: *
dtype0*
value	B : 2
	Equal_1/yh
Equal_1Equal	time_stepEqual_1/y:output:0*
T0*#
_output_shapes
:���������2	
Equal_1R
Rank_2Const*
_output_shapes
: *
dtype0*
value	B :2
Rank_2R
Rank_3Const*
_output_shapes
: *
dtype0*
value	B :2
Rank_3X
sub_1SubRank_2:output:0Rank_3:output:0*
T0*
_output_shapes
: 2
sub_1M
Shape_3ShapeEqual_1:z:0*
T0
*
_output_shapes
:2	
Shape_3
ones_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
���������2
ones_1/Reshape/shapez
ones_1/ReshapeReshape	sub_1:z:0ones_1/Reshape/shape:output:0*
T0*
_output_shapes
:2
ones_1/Reshape^
ones_1/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
ones_1/Constm
ones_1Fillones_1/Reshape:output:0ones_1/Const:output:0*
T0*
_output_shapes
:2
ones_1`
concat_5/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_5/axis�
concat_5ConcatV2Shape_3:output:0ones_1:output:0concat_5/axis:output:0*
N*
T0*
_output_shapes
:2

concat_5s
	Reshape_1ReshapeEqual_1:z:0concat_5:output:0*
T0
*'
_output_shapes
:���������2
	Reshape_1�

SelectV2_2SelectV2Reshape_1:output:0zeros_2:output:0SelectV2:output:0*
T0*(
_output_shapes
:����������2

SelectV2_2�

SelectV2_3SelectV2Reshape_1:output:0zeros_3:output:0SelectV2_1:output:0*
T0*(
_output_shapes
:����������2

SelectV2_3�
/normalize_observations/normalize/ReadVariableOpReadVariableOp8normalize_observations_normalize_readvariableop_resource*"
_output_shapes
:*
dtype021
/normalize_observations/normalize/ReadVariableOp�
7normalize_observations/normalize/truediv/ReadVariableOpReadVariableOp@normalize_observations_normalize_truediv_readvariableop_resource*"
_output_shapes
:*
dtype029
7normalize_observations/normalize/truediv/ReadVariableOp�
(normalize_observations/normalize/truedivRealDiv7normalize_observations/normalize/ReadVariableOp:value:0?normalize_observations/normalize/truediv/ReadVariableOp:value:0*
T0*"
_output_shapes
:2*
(normalize_observations/normalize/truediv�
1normalize_observations/normalize/ReadVariableOp_1ReadVariableOp:normalize_observations_normalize_readvariableop_1_resource*"
_output_shapes
:*
dtype023
1normalize_observations/normalize/ReadVariableOp_1�
9normalize_observations/normalize/truediv_1/ReadVariableOpReadVariableOp@normalize_observations_normalize_truediv_readvariableop_resource*"
_output_shapes
:*
dtype02;
9normalize_observations/normalize/truediv_1/ReadVariableOp�
*normalize_observations/normalize/truediv_1RealDiv9normalize_observations/normalize/ReadVariableOp_1:value:0Anormalize_observations/normalize/truediv_1/ReadVariableOp:value:0*
T0*"
_output_shapes
:2,
*normalize_observations/normalize/truediv_1�
8normalize_observations/normalize/normalized_tensor/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:2:
8normalize_observations/normalize/normalized_tensor/add/y�
6normalize_observations/normalize/normalized_tensor/addAddV2.normalize_observations/normalize/truediv_1:z:0Anormalize_observations/normalize/normalized_tensor/add/y:output:0*
T0*"
_output_shapes
:28
6normalize_observations/normalize/normalized_tensor/add�
8normalize_observations/normalize/normalized_tensor/RsqrtRsqrt:normalize_observations/normalize/normalized_tensor/add:z:0*
T0*"
_output_shapes
:2:
8normalize_observations/normalize/normalized_tensor/Rsqrt�
6normalize_observations/normalize/normalized_tensor/mulMultime_step_3<normalize_observations/normalize/normalized_tensor/Rsqrt:y:0*
T0*/
_output_shapes
:���������28
6normalize_observations/normalize/normalized_tensor/mul�
6normalize_observations/normalize/normalized_tensor/NegNeg,normalize_observations/normalize/truediv:z:0*
T0*"
_output_shapes
:28
6normalize_observations/normalize/normalized_tensor/Neg�
8normalize_observations/normalize/normalized_tensor/mul_1Mul:normalize_observations/normalize/normalized_tensor/Neg:y:0<normalize_observations/normalize/normalized_tensor/Rsqrt:y:0*
T0*"
_output_shapes
:2:
8normalize_observations/normalize/normalized_tensor/mul_1�
8normalize_observations/normalize/normalized_tensor/add_1AddV2:normalize_observations/normalize/normalized_tensor/mul:z:0<normalize_observations/normalize/normalized_tensor/mul_1:z:0*
T0*/
_output_shapes
:���������2:
8normalize_observations/normalize/normalized_tensor/add_1�
Dnormalize_observations/normalize/clipped_normalized_tensor/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �@2F
Dnormalize_observations/normalize/clipped_normalized_tensor/Minimum/y�
Bnormalize_observations/normalize/clipped_normalized_tensor/MinimumMinimum<normalize_observations/normalize/normalized_tensor/add_1:z:0Mnormalize_observations/normalize/clipped_normalized_tensor/Minimum/y:output:0*
T0*/
_output_shapes
:���������2D
Bnormalize_observations/normalize/clipped_normalized_tensor/Minimum�
<normalize_observations/normalize/clipped_normalized_tensor/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ��2>
<normalize_observations/normalize/clipped_normalized_tensor/y�
:normalize_observations/normalize/clipped_normalized_tensorMaximumFnormalize_observations/normalize/clipped_normalized_tensor/Minimum:z:0Enormalize_observations/normalize/clipped_normalized_tensor/y:output:0*
T0*/
_output_shapes
:���������2<
:normalize_observations/normalize/clipped_normalized_tensor�
FActorDistributionRnnNetwork/ActorDistributionRnnNetwork/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2H
FActorDistributionRnnNetwork/ActorDistributionRnnNetwork/ExpandDims/dim�
BActorDistributionRnnNetwork/ActorDistributionRnnNetwork/ExpandDims
ExpandDims>normalize_observations/normalize/clipped_normalized_tensor:z:0OActorDistributionRnnNetwork/ActorDistributionRnnNetwork/ExpandDims/dim:output:0*
T0*3
_output_shapes!
:���������2D
BActorDistributionRnnNetwork/ActorDistributionRnnNetwork/ExpandDims�
HActorDistributionRnnNetwork/ActorDistributionRnnNetwork/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B :2J
HActorDistributionRnnNetwork/ActorDistributionRnnNetwork/ExpandDims_1/dim�
DActorDistributionRnnNetwork/ActorDistributionRnnNetwork/ExpandDims_1
ExpandDims	time_stepQActorDistributionRnnNetwork/ActorDistributionRnnNetwork/ExpandDims_1/dim:output:0*
T0*'
_output_shapes
:���������2F
DActorDistributionRnnNetwork/ActorDistributionRnnNetwork/ExpandDims_1�
[ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_flatten/ShapeShapeKActorDistributionRnnNetwork/ActorDistributionRnnNetwork/ExpandDims:output:0*
T0*
_output_shapes
:*
out_type0	2]
[ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_flatten/Shape�
cActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_flatten/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"����         2e
cActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_flatten/Reshape/shape�
]ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_flatten/ReshapeReshapeKActorDistributionRnnNetwork/ActorDistributionRnnNetwork/ExpandDims:output:0lActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_flatten/Reshape/shape:output:0*
T0*/
_output_shapes
:���������2_
]ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_flatten/Reshape�
dActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d/Conv2D/ReadVariableOpReadVariableOpmactordistributionrnnnetwork_actordistributionrnnnetwork_encodingnetwork_conv2d_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02f
dActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d/Conv2D/ReadVariableOp�
UActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d/Conv2DConv2DfActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_flatten/Reshape:output:0lActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingVALID*
strides
2W
UActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d/Conv2D�
eActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d/BiasAdd/ReadVariableOpReadVariableOpnactordistributionrnnnetwork_actordistributionrnnnetwork_encodingnetwork_conv2d_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02g
eActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d/BiasAdd/ReadVariableOp�
VActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d/BiasAddBiasAdd^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d/Conv2D:output:0mActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������2X
VActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d/BiasAdd�
SActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d/ReluRelu_ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d/BiasAdd:output:0*
T0*/
_output_shapes
:���������2U
SActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d/Relu�
fActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d_1/Conv2D/ReadVariableOpReadVariableOpoactordistributionrnnnetwork_actordistributionrnnnetwork_encodingnetwork_conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02h
fActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d_1/Conv2D/ReadVariableOp�
WActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d_1/Conv2DConv2DaActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d/Relu:activations:0nActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:��������� *
paddingVALID*
strides
2Y
WActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d_1/Conv2D�
gActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d_1/BiasAdd/ReadVariableOpReadVariableOppactordistributionrnnnetwork_actordistributionrnnnetwork_encodingnetwork_conv2d_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02i
gActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d_1/BiasAdd/ReadVariableOp�
XActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d_1/BiasAddBiasAdd`ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d_1/Conv2D:output:0oActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:��������� 2Z
XActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d_1/BiasAdd�
UActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d_1/ReluReluaActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d_1/BiasAdd:output:0*
T0*/
_output_shapes
:��������� 2W
UActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d_1/Relu�
UActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"�����  2W
UActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/flatten/Const�
WActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/flatten/ReshapeReshapecActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d_1/Relu:activations:0^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/flatten/Const:output:0*
T0*(
_output_shapes
:����������	2Y
WActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/flatten/Reshape�
cActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/MatMul/ReadVariableOpReadVariableOplactordistributionrnnnetwork_actordistributionrnnnetwork_encodingnetwork_dense_matmul_readvariableop_resource* 
_output_shapes
:
�	�*
dtype02e
cActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/MatMul/ReadVariableOp�
TActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/MatMulMatMul`ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/flatten/Reshape:output:0kActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2V
TActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/MatMul�
dActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOpReadVariableOpmactordistributionrnnnetwork_actordistributionrnnnetwork_encodingnetwork_dense_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02f
dActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOp�
UActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/BiasAddBiasAdd^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/MatMul:product:0lActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2W
UActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/BiasAdd�
RActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/ReluRelu^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/BiasAdd:output:0*
T0*(
_output_shapes
:����������2T
RActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/Relu�
kActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2m
kActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/strided_slice/stack�
mActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2o
mActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/strided_slice/stack_1�
mActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2o
mActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/strided_slice/stack_2�
eActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/strided_sliceStridedSlicedActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_flatten/Shape:output:0tActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/strided_slice/stack:output:0vActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/strided_slice/stack_1:output:0vActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask2g
eActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/strided_slice�
]ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/ShapeShape`ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/Relu:activations:0*
T0*
_output_shapes
:*
out_type0	2_
]ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/Shape�
mActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2o
mActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/strided_slice_1/stack�
oActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2q
oActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/strided_slice_1/stack_1�
oActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2q
oActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/strided_slice_1/stack_2�
gActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/strided_slice_1StridedSlicefActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/Shape:output:0vActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/strided_slice_1/stack:output:0xActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/strided_slice_1/stack_1:output:0xActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*
end_mask2i
gActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/strided_slice_1�
cActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2e
cActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/concat/axis�
^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/concatConcatV2nActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/strided_slice:output:0pActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/strided_slice_1:output:0lActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/concat/axis:output:0*
N*
T0	*
_output_shapes
:2`
^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/concat�
_ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/ReshapeReshape`ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/Relu:activations:0gActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/concat:output:0*
T0*
Tshape0	*,
_output_shapes
:����������2a
_ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/Reshape�
>ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/mask/yConst*
_output_shapes
: *
dtype0*
value	B : 2@
>ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/mask/y�
<ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/maskEqualMActorDistributionRnnNetwork/ActorDistributionRnnNetwork/ExpandDims_1:output:0GActorDistributionRnnNetwork/ActorDistributionRnnNetwork/mask/y:output:0*
T0*'
_output_shapes
:���������2>
<ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/mask�
KActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/RankConst*
_output_shapes
: *
dtype0*
value	B :2M
KActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/Rank�
RActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/range/startConst*
_output_shapes
: *
dtype0*
value	B :2T
RActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/range/start�
RActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :2T
RActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/range/delta�
LActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/rangeRange[ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/range/start:output:0TActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/Rank:output:0[ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/range/delta:output:0*
_output_shapes
:2N
LActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/range�
VActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB"       2X
VActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/concat/values_0�
RActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2T
RActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/concat/axis�
MActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/concatConcatV2_ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/concat/values_0:output:0UActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/range:output:0[ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/concat/axis:output:0*
N*
T0*
_output_shapes
:2O
MActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/concat�
PActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/transpose	TransposehActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/Reshape:output:0VActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/concat:output:0*
T0*,
_output_shapes
:����������2R
PActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/transpose�
LActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/ShapeShapeTActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/transpose:y:0*
T0*
_output_shapes
:2N
LActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/Shape�
ZActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2\
ZActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/strided_slice/stack�
\ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2^
\ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/strided_slice/stack_1�
\ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2^
\ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/strided_slice/stack_2�
TActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/strided_sliceStridedSliceUActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/Shape:output:0cActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/strided_slice/stack:output:0eActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/strided_slice/stack_1:output:0eActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2V
TActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/strided_slice�
WActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2Y
WActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/transpose_1/perm�
RActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/transpose_1	Transpose@ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/mask:z:0`ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/transpose_1/perm:output:0*
T0
*'
_output_shapes
:���������2T
RActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/transpose_1�
RActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :�2T
RActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros/mul/y�
PActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros/mulMul]ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/strided_slice:output:0[ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros/mul/y:output:0*
T0*
_output_shapes
: 2R
PActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros/mul�
SActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :�2U
SActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros/Less/y�
QActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros/LessLessTActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros/mul:z:0\ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros/Less/y:output:0*
T0*
_output_shapes
: 2S
QActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros/Less�
UActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :�2W
UActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros/packed/1�
SActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros/packedPack]ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/strided_slice:output:0^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2U
SActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros/packed�
RActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2T
RActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros/Const�
LActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zerosFill\ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros/packed:output:0[ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros/Const:output:0*
T0*(
_output_shapes
:����������2N
LActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros�
TActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :�2V
TActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_1/mul/y�
RActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_1/mulMul]ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/strided_slice:output:0]ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2T
RActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_1/mul�
UActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :�2W
UActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_1/Less/y�
SActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_1/LessLessVActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_1/mul:z:0^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2U
SActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_1/Less�
WActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :�2Y
WActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_1/packed/1�
UActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_1/packedPack]ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/strided_slice:output:0`ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2W
UActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_1/packed�
TActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2V
TActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_1/Const�
NActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_1Fill^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_1/packed:output:0]ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_1/Const:output:0*
T0*(
_output_shapes
:����������2P
NActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_1�
NActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/SqueezeSqueezeTActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/transpose:y:0*
T0*(
_output_shapes
:����������*
squeeze_dims
 2P
NActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/Squeeze�
PActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/Squeeze_1SqueezeVActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/transpose_1:y:0*
T0
*#
_output_shapes
:���������*
squeeze_dims
 2R
PActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/Squeeze_1�
MActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/SelectSelectYActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/Squeeze_1:output:0UActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros:output:0SelectV2_2:output:0*
T0*(
_output_shapes
:����������2O
MActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/Select�
OActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/Select_1SelectYActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/Squeeze_1:output:0WActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_1:output:0SelectV2_3:output:0*
T0*(
_output_shapes
:����������2Q
OActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/Select_1�
fActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/MatMul/ReadVariableOpReadVariableOpoactordistributionrnnnetwork_actordistributionrnnnetwork_dynamic_unroll_lstm_cell_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype02h
fActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/MatMul/ReadVariableOp�
WActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/MatMulMatMulWActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/Squeeze:output:0nActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2Y
WActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/MatMul�
hActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/MatMul_1/ReadVariableOpReadVariableOpqactordistributionrnnnetwork_actordistributionrnnnetwork_dynamic_unroll_lstm_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
��*
dtype02j
hActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/MatMul_1/ReadVariableOp�
YActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/MatMul_1MatMulVActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/Select:output:0pActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2[
YActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/MatMul_1�
TActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/addAddV2aActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/MatMul:product:0cActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:����������2V
TActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/add�
gActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/BiasAdd/ReadVariableOpReadVariableOppactordistributionrnnnetwork_actordistributionrnnnetwork_dynamic_unroll_lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02i
gActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/BiasAdd/ReadVariableOp�
XActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/BiasAddBiasAddXActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/add:z:0oActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2Z
XActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/BiasAdd�
VActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/ConstConst*
_output_shapes
: *
dtype0*
value	B :2X
VActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/Const�
`ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2b
`ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/split/split_dim�
VActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/splitSplitiActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/split/split_dim:output:0aActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:����������:����������:����������:����������*
	num_split2X
VActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/split�
XActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/SigmoidSigmoid_ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/split:output:0*
T0*(
_output_shapes
:����������2Z
XActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/Sigmoid�
ZActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/Sigmoid_1Sigmoid_ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/split:output:1*
T0*(
_output_shapes
:����������2\
ZActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/Sigmoid_1�
TActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/mulMul^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/Sigmoid_1:y:0XActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/Select_1:output:0*
T0*(
_output_shapes
:����������2V
TActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/mul�
UActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/TanhTanh_ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/split:output:2*
T0*(
_output_shapes
:����������2W
UActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/Tanh�
VActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/mul_1Mul\ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/Sigmoid:y:0YActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/Tanh:y:0*
T0*(
_output_shapes
:����������2X
VActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/mul_1�
VActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/add_1AddV2XActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/mul:z:0ZActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:����������2X
VActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/add_1�
ZActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/Sigmoid_2Sigmoid_ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/split:output:3*
T0*(
_output_shapes
:����������2\
ZActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/Sigmoid_2�
WActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/Tanh_1TanhZActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:����������2Y
WActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/Tanh_1�
VActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/mul_2Mul^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/Sigmoid_2:y:0[ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/Tanh_1:y:0*
T0*(
_output_shapes
:����������2X
VActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/mul_2�
UActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2W
UActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/ExpandDims/dim�
QActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/ExpandDims
ExpandDimsZActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/mul_2:z:0^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/ExpandDims/dim:output:0*
T0*,
_output_shapes
:����������2S
QActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/ExpandDims�
XActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/ReadVariableOpReadVariableOpaactordistributionrnnnetwork_actordistributionrnnnetwork_dense_1_tensordot_readvariableop_resource* 
_output_shapes
:
��*
dtype02Z
XActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/ReadVariableOp�
NActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2P
NActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/axes�
NActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2P
NActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/free�
OActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/ShapeShapeZActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/ExpandDims:output:0*
T0*
_output_shapes
:2Q
OActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/Shape�
WActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2Y
WActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/GatherV2/axis�
RActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/GatherV2GatherV2XActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/Shape:output:0WActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/free:output:0`ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2T
RActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/GatherV2�
YActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2[
YActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/GatherV2_1/axis�
TActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/GatherV2_1GatherV2XActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/Shape:output:0WActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/axes:output:0bActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2V
TActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/GatherV2_1�
OActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2Q
OActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/Const�
NActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/ProdProd[ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/GatherV2:output:0XActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/Const:output:0*
T0*
_output_shapes
: 2P
NActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/Prod�
QActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2S
QActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/Const_1�
PActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/Prod_1Prod]ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/GatherV2_1:output:0ZActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2R
PActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/Prod_1�
UActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2W
UActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/concat/axis�
PActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/concatConcatV2WActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/free:output:0WActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/axes:output:0^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2R
PActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/concat�
OActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/stackPackWActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/Prod:output:0YActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2Q
OActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/stack�
SActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/transpose	TransposeZActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/ExpandDims:output:0YActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/concat:output:0*
T0*,
_output_shapes
:����������2U
SActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/transpose�
QActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/ReshapeReshapeWActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/transpose:y:0XActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/stack:output:0*
T0*0
_output_shapes
:������������������2S
QActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/Reshape�
PActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/MatMulMatMulZActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/Reshape:output:0`ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2R
PActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/MatMul�
QActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:�2S
QActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/Const_2�
WActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2Y
WActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/concat_1/axis�
RActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/concat_1ConcatV2[ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/GatherV2:output:0ZActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/Const_2:output:0`ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2T
RActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/concat_1�
IActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/TensordotReshapeZActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/MatMul:product:0[ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:����������2K
IActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot�
VActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/BiasAdd/ReadVariableOpReadVariableOp_actordistributionrnnnetwork_actordistributionrnnnetwork_dense_1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02X
VActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/BiasAdd/ReadVariableOp�
GActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/BiasAddBiasAddRActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot:output:0^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:����������2I
GActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/BiasAdd�
DActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/ReluReluPActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/BiasAdd:output:0*
T0*,
_output_shapes
:����������2F
DActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Relu�
?ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/SqueezeSqueezeRActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Relu:activations:0*
T0*(
_output_shapes
:����������*
squeeze_dims
2A
?ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/Squeeze�
UActorDistributionRnnNetwork/CategoricalProjectionNetwork/logits/MatMul/ReadVariableOpReadVariableOp^actordistributionrnnnetwork_categoricalprojectionnetwork_logits_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype02W
UActorDistributionRnnNetwork/CategoricalProjectionNetwork/logits/MatMul/ReadVariableOp�
FActorDistributionRnnNetwork/CategoricalProjectionNetwork/logits/MatMulMatMulHActorDistributionRnnNetwork/ActorDistributionRnnNetwork/Squeeze:output:0]ActorDistributionRnnNetwork/CategoricalProjectionNetwork/logits/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2H
FActorDistributionRnnNetwork/CategoricalProjectionNetwork/logits/MatMul�
VActorDistributionRnnNetwork/CategoricalProjectionNetwork/logits/BiasAdd/ReadVariableOpReadVariableOp_actordistributionrnnnetwork_categoricalprojectionnetwork_logits_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02X
VActorDistributionRnnNetwork/CategoricalProjectionNetwork/logits/BiasAdd/ReadVariableOp�
GActorDistributionRnnNetwork/CategoricalProjectionNetwork/logits/BiasAddBiasAddPActorDistributionRnnNetwork/CategoricalProjectionNetwork/logits/MatMul:product:0^ActorDistributionRnnNetwork/CategoricalProjectionNetwork/logits/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2I
GActorDistributionRnnNetwork/CategoricalProjectionNetwork/logits/BiasAdd�
FActorDistributionRnnNetwork/CategoricalProjectionNetwork/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"����   2H
FActorDistributionRnnNetwork/CategoricalProjectionNetwork/Reshape/shape�
@ActorDistributionRnnNetwork/CategoricalProjectionNetwork/ReshapeReshapePActorDistributionRnnNetwork/CategoricalProjectionNetwork/logits/BiasAdd:output:0OActorDistributionRnnNetwork/CategoricalProjectionNetwork/Reshape/shape:output:0*
T0*'
_output_shapes
:���������2B
@ActorDistributionRnnNetwork/CategoricalProjectionNetwork/Reshape�
ZActorDistributionRnnNetwork_CategoricalProjectionNetwork_Categorical/mode/ArgMax/dimensionConst*
_output_shapes
: *
dtype0*
valueB :
���������2\
ZActorDistributionRnnNetwork_CategoricalProjectionNetwork_Categorical/mode/ArgMax/dimension�
PActorDistributionRnnNetwork_CategoricalProjectionNetwork_Categorical/mode/ArgMaxArgMaxIActorDistributionRnnNetwork/CategoricalProjectionNetwork/Reshape:output:0cActorDistributionRnnNetwork_CategoricalProjectionNetwork_Categorical/mode/ArgMax/dimension:output:0*
T0*#
_output_shapes
:���������2R
PActorDistributionRnnNetwork_CategoricalProjectionNetwork_Categorical/mode/ArgMax�
NActorDistributionRnnNetwork_CategoricalProjectionNetwork_Categorical/mode/CastCastYActorDistributionRnnNetwork_CategoricalProjectionNetwork_Categorical/mode/ArgMax:output:0*

DstT0*

SrcT0	*#
_output_shapes
:���������2P
NActorDistributionRnnNetwork_CategoricalProjectionNetwork_Categorical/mode/Castj
Deterministic/atolConst*
_output_shapes
: *
dtype0*
value	B : 2
Deterministic/atolj
Deterministic/rtolConst*
_output_shapes
: *
dtype0*
value	B : 2
Deterministic/rtol�
#Deterministic_1/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB 2%
#Deterministic_1/sample/sample_shape�
Deterministic_1/sample/ShapeShapeRActorDistributionRnnNetwork_CategoricalProjectionNetwork_Categorical/mode/Cast:y:0*
T0*
_output_shapes
:2
Deterministic_1/sample/Shape�
'Deterministic_1/sample/BroadcastArgs/s1Const*
_output_shapes
: *
dtype0*
valueB 2)
'Deterministic_1/sample/BroadcastArgs/s1�
$Deterministic_1/sample/BroadcastArgsBroadcastArgs%Deterministic_1/sample/Shape:output:00Deterministic_1/sample/BroadcastArgs/s1:output:0*
_output_shapes
:2&
$Deterministic_1/sample/BroadcastArgs
Deterministic_1/sample/ConstConst*
_output_shapes
: *
dtype0*
valueB 2
Deterministic_1/sample/Const�
&Deterministic_1/sample/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:2(
&Deterministic_1/sample/concat/values_0�
"Deterministic_1/sample/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2$
"Deterministic_1/sample/concat/axis�
Deterministic_1/sample/concatConcatV2/Deterministic_1/sample/concat/values_0:output:0)Deterministic_1/sample/BroadcastArgs:r0:0%Deterministic_1/sample/Const:output:0+Deterministic_1/sample/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Deterministic_1/sample/concat�
"Deterministic_1/sample/BroadcastToBroadcastToRActorDistributionRnnNetwork_CategoricalProjectionNetwork_Categorical/mode/Cast:y:0&Deterministic_1/sample/concat:output:0*
T0*'
_output_shapes
:���������2$
"Deterministic_1/sample/BroadcastTo�
Deterministic_1/sample/Shape_1Shape+Deterministic_1/sample/BroadcastTo:output:0*
T0*
_output_shapes
:2 
Deterministic_1/sample/Shape_1�
*Deterministic_1/sample/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2,
*Deterministic_1/sample/strided_slice/stack�
,Deterministic_1/sample/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2.
,Deterministic_1/sample/strided_slice/stack_1�
,Deterministic_1/sample/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2.
,Deterministic_1/sample/strided_slice/stack_2�
$Deterministic_1/sample/strided_sliceStridedSlice'Deterministic_1/sample/Shape_1:output:03Deterministic_1/sample/strided_slice/stack:output:05Deterministic_1/sample/strided_slice/stack_1:output:05Deterministic_1/sample/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*
end_mask2&
$Deterministic_1/sample/strided_slice�
$Deterministic_1/sample/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2&
$Deterministic_1/sample/concat_1/axis�
Deterministic_1/sample/concat_1ConcatV2,Deterministic_1/sample/sample_shape:output:0-Deterministic_1/sample/strided_slice:output:0-Deterministic_1/sample/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2!
Deterministic_1/sample/concat_1�
Deterministic_1/sample/ReshapeReshape+Deterministic_1/sample/BroadcastTo:output:0(Deterministic_1/sample/concat_1:output:0*
T0*#
_output_shapes
:���������2 
Deterministic_1/sample/Reshapet
clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
value	B :2
clip_by_value/Minimum/y�
clip_by_value/MinimumMinimum'Deterministic_1/sample/Reshape:output:0 clip_by_value/Minimum/y:output:0*
T0*#
_output_shapes
:���������2
clip_by_value/Minimumd
clip_by_value/yConst*
_output_shapes
: *
dtype0*
value	B : 2
clip_by_value/y�
clip_by_valueMaximumclip_by_value/Minimum:z:0clip_by_value/y:output:0*
T0*#
_output_shapes
:���������2
clip_by_value�
IdentityIdentityclip_by_value:z:0f^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d/BiasAdd/ReadVariableOpe^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d/Conv2D/ReadVariableOph^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d_1/BiasAdd/ReadVariableOpg^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d_1/Conv2D/ReadVariableOpe^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOpd^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/MatMul/ReadVariableOpW^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/BiasAdd/ReadVariableOpY^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/ReadVariableOph^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/BiasAdd/ReadVariableOpg^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/MatMul/ReadVariableOpi^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/MatMul_1/ReadVariableOpW^ActorDistributionRnnNetwork/CategoricalProjectionNetwork/logits/BiasAdd/ReadVariableOpV^ActorDistributionRnnNetwork/CategoricalProjectionNetwork/logits/MatMul/ReadVariableOp0^normalize_observations/normalize/ReadVariableOp2^normalize_observations/normalize/ReadVariableOp_18^normalize_observations/normalize/truediv/ReadVariableOp:^normalize_observations/normalize/truediv_1/ReadVariableOp*
T0*#
_output_shapes
:���������2

Identity�

Identity_1IdentityZActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/mul_2:z:0f^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d/BiasAdd/ReadVariableOpe^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d/Conv2D/ReadVariableOph^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d_1/BiasAdd/ReadVariableOpg^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d_1/Conv2D/ReadVariableOpe^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOpd^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/MatMul/ReadVariableOpW^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/BiasAdd/ReadVariableOpY^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/ReadVariableOph^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/BiasAdd/ReadVariableOpg^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/MatMul/ReadVariableOpi^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/MatMul_1/ReadVariableOpW^ActorDistributionRnnNetwork/CategoricalProjectionNetwork/logits/BiasAdd/ReadVariableOpV^ActorDistributionRnnNetwork/CategoricalProjectionNetwork/logits/MatMul/ReadVariableOp0^normalize_observations/normalize/ReadVariableOp2^normalize_observations/normalize/ReadVariableOp_18^normalize_observations/normalize/truediv/ReadVariableOp:^normalize_observations/normalize/truediv_1/ReadVariableOp*
T0*(
_output_shapes
:����������2

Identity_1�

Identity_2IdentityZActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/add_1:z:0f^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d/BiasAdd/ReadVariableOpe^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d/Conv2D/ReadVariableOph^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d_1/BiasAdd/ReadVariableOpg^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d_1/Conv2D/ReadVariableOpe^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOpd^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/MatMul/ReadVariableOpW^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/BiasAdd/ReadVariableOpY^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/ReadVariableOph^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/BiasAdd/ReadVariableOpg^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/MatMul/ReadVariableOpi^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/MatMul_1/ReadVariableOpW^ActorDistributionRnnNetwork/CategoricalProjectionNetwork/logits/BiasAdd/ReadVariableOpV^ActorDistributionRnnNetwork/CategoricalProjectionNetwork/logits/MatMul/ReadVariableOp0^normalize_observations/normalize/ReadVariableOp2^normalize_observations/normalize/ReadVariableOp_18^normalize_observations/normalize/truediv/ReadVariableOp:^normalize_observations/normalize/truediv_1/ReadVariableOp*
T0*(
_output_shapes
:����������2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*�
_input_shapes�
�:���������:���������:���������:���������:����������:����������::::::::::::::::2�
eActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d/BiasAdd/ReadVariableOpeActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d/BiasAdd/ReadVariableOp2�
dActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d/Conv2D/ReadVariableOpdActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d/Conv2D/ReadVariableOp2�
gActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d_1/BiasAdd/ReadVariableOpgActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d_1/BiasAdd/ReadVariableOp2�
fActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d_1/Conv2D/ReadVariableOpfActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d_1/Conv2D/ReadVariableOp2�
dActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOpdActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOp2�
cActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/MatMul/ReadVariableOpcActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/MatMul/ReadVariableOp2�
VActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/BiasAdd/ReadVariableOpVActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/BiasAdd/ReadVariableOp2�
XActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/ReadVariableOpXActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/Tensordot/ReadVariableOp2�
gActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/BiasAdd/ReadVariableOpgActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/BiasAdd/ReadVariableOp2�
fActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/MatMul/ReadVariableOpfActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/MatMul/ReadVariableOp2�
hActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/MatMul_1/ReadVariableOphActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/MatMul_1/ReadVariableOp2�
VActorDistributionRnnNetwork/CategoricalProjectionNetwork/logits/BiasAdd/ReadVariableOpVActorDistributionRnnNetwork/CategoricalProjectionNetwork/logits/BiasAdd/ReadVariableOp2�
UActorDistributionRnnNetwork/CategoricalProjectionNetwork/logits/MatMul/ReadVariableOpUActorDistributionRnnNetwork/CategoricalProjectionNetwork/logits/MatMul/ReadVariableOp2b
/normalize_observations/normalize/ReadVariableOp/normalize_observations/normalize/ReadVariableOp2f
1normalize_observations/normalize/ReadVariableOp_11normalize_observations/normalize/ReadVariableOp_12r
7normalize_observations/normalize/truediv/ReadVariableOp7normalize_observations/normalize/truediv/ReadVariableOp2v
9normalize_observations/normalize/truediv_1/ReadVariableOp9normalize_observations/normalize/truediv_1/ReadVariableOp:N J
#
_output_shapes
:���������
#
_user_specified_name	time_step:NJ
#
_output_shapes
:���������
#
_user_specified_name	time_step:NJ
#
_output_shapes
:���������
#
_user_specified_name	time_step:ZV
/
_output_shapes
:���������
#
_user_specified_name	time_step:VR
(
_output_shapes
:����������
&
_user_specified_namepolicy_state:VR
(
_output_shapes
:����������
&
_user_specified_namepolicy_state
�
(
&__inference_signature_wrapper_40981570�
PartitionedCallPartitionedCall*	
Tin
 *

Tout
 *
_collective_manager_ids
 *
_output_shapes
 * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *4
f/R-
+__inference_function_with_signature_47777202
PartitionedCall*
_input_shapes 
�
[
+__inference_function_with_signature_4777693

batch_size
identity

identity_1�
PartitionedCallPartitionedCall
batch_size*
Tin
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:����������:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *.
f)R'
%__inference_get_initial_state_47776882
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:����������2

Identityq

Identity_1IdentityPartitionedCall:output:1*
T0*(
_output_shapes
:����������2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*
_input_shapes
: :B >

_output_shapes
: 
$
_user_specified_name
batch_size
�
e
+__inference_function_with_signature_4777709
unknown
identity	��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallunknown*
Tin
2*
Tout
2	*
_collective_manager_ids
 *
_output_shapes
: *#
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *!
fR
__inference_<lambda>_7712
StatefulPartitionedCall}
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0	*
_output_shapes
: 2

Identity"
identityIdentity:output:0*
_input_shapes
:22
StatefulPartitionedCallStatefulPartitionedCall
/

__inference_<lambda>_774*
_input_shapes "�L
saver_filename:0StatefulPartitionedCall_2:0StatefulPartitionedCall_38"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
action�
4

0/discount&
action_0/discount:0���������
F
0/observation5
action_0/observation:0���������
0
0/reward$
action_0/reward:0���������
6
0/step_type'
action_0/step_type:0���������
S
1/actor_network_state/08
 action_1/actor_network_state/0:0����������
S
1/actor_network_state/18
 action_1/actor_network_state/1:0����������6
action,
StatefulPartitionedCall:0���������P
state/actor_network_state/01
StatefulPartitionedCall:1����������P
state/actor_network_state/11
StatefulPartitionedCall:2����������tensorflow/serving/predict*�
get_initial_state�
2

batch_size$
get_initial_state_batch_size:0 B
actor_network_state/0)
PartitionedCall:0����������B
actor_network_state/1)
PartitionedCall:1����������tensorflow/serving/predict*,
get_metadatatensorflow/serving/predict*Z
get_train_stepH*
int64!
StatefulPartitionedCall_1:0	 tensorflow/serving/predict:Ǯ
�
policy_state_spec

train_step
metadata
model_variables
_all_assets

signatures
�action
�distribution
�get_initial_state
�get_metadata
�get_train_step"
_generic_user_object
9
actor_network_state"
trackable_dict_wrapper
:	 (2Variable
 "
trackable_dict_wrapper
�
0
	1

2
3
4
5
6
7
8
9
10
11
12
13
14
15
16
17
18
19
20
21
22
23
 24
!25
"26
#27
$28"
trackable_tuple_wrapper
5
%0
&1
'2"
trackable_list_wrapper
d
�action
�get_initial_state
�get_train_step
�get_metadata"
signature_map
 "
trackable_list_wrapper
o:m2UActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d/kernel
a:_2SActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d/bias
q:o 2WActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d_1/kernel
c:a 2UActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/conv2d_1/bias
h:f
�	�2TActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/kernel
a:_�2RActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/bias
a:_
��2MActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/kernel
k:i
��2WActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/recurrent_kernel
Z:X�2KActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/bias
Z:X
��2FActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/kernel
S:Q�2DActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dense_1/bias
Y:W	�2FActorDistributionRnnNetwork/CategoricalProjectionNetwork/logits/kernel
R:P2DActorDistributionRnnNetwork/CategoricalProjectionNetwork/logits/bias
:2count
:2mean_sum
:2var_sum
Y:W2?ValueRnnNetwork/ValueRnnNetwork/EncodingNetwork/conv2d_2/kernel
K:I2=ValueRnnNetwork/ValueRnnNetwork/EncodingNetwork/conv2d_2/bias
Y:W 2?ValueRnnNetwork/ValueRnnNetwork/EncodingNetwork/conv2d_3/kernel
K:I 2=ValueRnnNetwork/ValueRnnNetwork/EncodingNetwork/conv2d_3/bias
R:P
�	�2>ValueRnnNetwork/ValueRnnNetwork/EncodingNetwork/dense_2/kernel
K:I�2<ValueRnnNetwork/ValueRnnNetwork/EncodingNetwork/dense_2/bias
K:I
��27ValueRnnNetwork/ValueRnnNetwork/dynamic_unroll_1/kernel
U:S
��2AValueRnnNetwork/ValueRnnNetwork/dynamic_unroll_1/recurrent_kernel
D:B�25ValueRnnNetwork/ValueRnnNetwork/dynamic_unroll_1/bias
B:@
��2.ValueRnnNetwork/ValueRnnNetwork/dense_3/kernel
;:9�2,ValueRnnNetwork/ValueRnnNetwork/dense_3/bias
1:/	�2ValueRnnNetwork/dense_4/kernel
*:(2ValueRnnNetwork/dense_4/bias
1
(ref
(1"
trackable_tuple_wrapper
1
)ref
)1"
trackable_tuple_wrapper
1
*ref
*1"
trackable_tuple_wrapper
9
actor_network_state"
trackable_dict_wrapper
3
	(state
(1"
trackable_tuple_wrapper
�
+_actor_network
,_observation_normalizer
(_policy_state_spec
-_policy_step_spec
._value_network"
_generic_user_object
�
_state_spec
/_lstm_encoder
0_projection_networks
1	variables
2trainable_variables
3regularization_losses
4	keras_api
�__call__
+�&call_and_return_all_conditional_losses"�
_tf_keras_layer�{"class_name": "ActorDistributionRnnNetwork", "name": "ActorDistributionRnnNetwork", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"layer was saved without config": true}}
^
5_flat_tensor_spec

6_count
7	_mean_sum
8_var_sum"
_generic_user_object
3
	(state
(1"
trackable_tuple_wrapper
�
9_state_spec
:_lstm_encoder
;_postprocessing_layers
<	variables
=trainable_variables
>regularization_losses
?	keras_api
�__call__
+�&call_and_return_all_conditional_losses"�
_tf_keras_layer�{"class_name": "ValueRnnNetwork", "name": "ValueRnnNetwork", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"layer was saved without config": true}}
�
_state_spec
@_conv_layer_params
A_input_encoder
B_lstm_network
C_output_encoder
D	variables
Etrainable_variables
Fregularization_losses
G	keras_api
�__call__
+�&call_and_return_all_conditional_losses"�
_tf_keras_layer�{"class_name": "LSTMEncodingNetwork", "name": "ActorDistributionRnnNetwork", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"layer was saved without config": true}}
�
H_projection_layer
I	variables
Jtrainable_variables
Kregularization_losses
L	keras_api
�__call__
+�&call_and_return_all_conditional_losses"�
_tf_keras_layer�{"class_name": "CategoricalProjectionNetwork", "name": "CategoricalProjectionNetwork", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"layer was saved without config": true}}
~
0
	1

2
3
4
5
6
7
8
9
10
11
12"
trackable_list_wrapper
~
0
	1

2
3
4
5
6
7
8
9
10
11
12"
trackable_list_wrapper
 "
trackable_list_wrapper
�

Mlayers
Nnon_trainable_variables
Ometrics
Player_regularization_losses
1	variables
2trainable_variables
3regularization_losses
Qlayer_metrics
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
�
9_state_spec
R_conv_layer_params
S_input_encoder
T_lstm_network
U_output_encoder
V	variables
Wtrainable_variables
Xregularization_losses
Y	keras_api
�__call__
+�&call_and_return_all_conditional_losses"�
_tf_keras_layer�{"class_name": "LSTMEncodingNetwork", "name": "ValueRnnNetwork", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"layer was saved without config": true}}
�

#kernel
$bias
Z	variables
[trainable_variables
\regularization_losses
]	keras_api
�__call__
+�&call_and_return_all_conditional_losses"�
_tf_keras_layer�{"class_name": "Dense", "name": "dense_4", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_4", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "RandomUniform", "config": {"minval": -0.03, "maxval": 0.03, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 128}}}, "build_input_shape": {"class_name": "TensorShape", "items": [1, 128]}}
~
0
1
2
3
4
5
6
7
 8
!9
"10
#11
$12"
trackable_list_wrapper
~
0
1
2
3
4
5
6
7
 8
!9
"10
#11
$12"
trackable_list_wrapper
 "
trackable_list_wrapper
�

^layers
_non_trainable_variables
`metrics
alayer_regularization_losses
<	variables
=trainable_variables
>regularization_losses
blayer_metrics
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
�
c_postprocessing_layers
d	variables
etrainable_variables
fregularization_losses
g	keras_api
�__call__
+�&call_and_return_all_conditional_losses"�
_tf_keras_layer�{"class_name": "EncodingNetwork", "name": "EncodingNetwork", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"layer was saved without config": true}}
�	
hcell
i	variables
jtrainable_variables
kregularization_losses
l	keras_api
�__call__
+�&call_and_return_all_conditional_losses"�
_tf_keras_layer�{"class_name": "DynamicUnroll", "name": "dynamic_unroll", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dynamic_unroll", "trainable": true, "dtype": "float32", "parallel_iterations": 20, "swap_memory": null, "cell": {"class_name": "LSTMCell", "config": {"name": "lstm_cell", "trainable": true, "dtype": "float32", "units": 256, "activation": "tanh", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}}}, "build_input_shape": {"class_name": "TensorShape", "items": [1, 1, 256]}}
'
m0"
trackable_list_wrapper
n
0
	1

2
3
4
5
6
7
8
9
10"
trackable_list_wrapper
n
0
	1

2
3
4
5
6
7
8
9
10"
trackable_list_wrapper
 "
trackable_list_wrapper
�

nlayers
onon_trainable_variables
pmetrics
qlayer_regularization_losses
D	variables
Etrainable_variables
Fregularization_losses
rlayer_metrics
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�

kernel
bias
s	variables
ttrainable_variables
uregularization_losses
v	keras_api
�__call__
+�&call_and_return_all_conditional_losses"�
_tf_keras_layer�{"class_name": "Dense", "name": "logits", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "logits", "trainable": true, "dtype": "float32", "units": 5, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "VarianceScaling", "config": {"scale": 0.1, "mode": "fan_in", "distribution": "truncated_normal", "seed": null, "dtype": "float32"}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 128}}}, "build_input_shape": {"class_name": "TensorShape", "items": [1, 128]}}
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
�

wlayers
xnon_trainable_variables
ymetrics
zlayer_regularization_losses
I	variables
Jtrainable_variables
Kregularization_losses
{layer_metrics
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
.
/0
01"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
�
|_postprocessing_layers
}	variables
~trainable_variables
regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"�
_tf_keras_layer�{"class_name": "EncodingNetwork", "name": "EncodingNetwork", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"layer was saved without config": true}}
�

	�cell
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"�
_tf_keras_layer�{"class_name": "DynamicUnroll", "name": "dynamic_unroll_1", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dynamic_unroll_1", "trainable": true, "dtype": "float32", "parallel_iterations": 20, "swap_memory": null, "cell": {"class_name": "LSTMCell", "config": {"name": "lstm_cell_1", "trainable": true, "dtype": "float32", "units": 256, "activation": "tanh", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}}}, "build_input_shape": {"class_name": "TensorShape", "items": [1, 1, 256]}}
(
�0"
trackable_list_wrapper
n
0
1
2
3
4
5
6
7
 8
!9
"10"
trackable_list_wrapper
n
0
1
2
3
4
5
6
7
 8
!9
"10"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�layers
�non_trainable_variables
�metrics
 �layer_regularization_losses
V	variables
Wtrainable_variables
Xregularization_losses
�layer_metrics
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
.
#0
$1"
trackable_list_wrapper
.
#0
$1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�layers
�non_trainable_variables
�metrics
 �layer_regularization_losses
Z	variables
[trainable_variables
\regularization_losses
�layer_metrics
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
.
:0
;1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
@
�0
�1
�2
�3"
trackable_list_wrapper
J
0
	1

2
3
4
5"
trackable_list_wrapper
J
0
	1

2
3
4
5"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�layers
�non_trainable_variables
�metrics
 �layer_regularization_losses
d	variables
etrainable_variables
fregularization_losses
�layer_metrics
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�

kernel
recurrent_kernel
bias
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"�
_tf_keras_layer�{"class_name": "LSTMCell", "name": "lstm_cell", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "lstm_cell", "trainable": true, "dtype": "float32", "units": 256, "activation": "tanh", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}}
5
0
1
2"
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�layers
�non_trainable_variables
�metrics
 �layer_regularization_losses
i	variables
jtrainable_variables
kregularization_losses
�layer_metrics
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�

kernel
bias
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"�
_tf_keras_layer�{"class_name": "Dense", "name": "dense_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_1", "trainable": true, "dtype": "float32", "units": 128, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "VarianceScaling", "config": {"scale": 2.0, "mode": "fan_in", "distribution": "truncated_normal", "seed": null, "dtype": "float32"}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 256}}}, "build_input_shape": {"class_name": "TensorShape", "items": [1, 1, 256]}}
5
A0
B1
m2"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�layers
�non_trainable_variables
�metrics
 �layer_regularization_losses
s	variables
ttrainable_variables
uregularization_losses
�layer_metrics
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
'
H0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
@
�0
�1
�2
�3"
trackable_list_wrapper
J
0
1
2
3
4
5"
trackable_list_wrapper
J
0
1
2
3
4
5"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�layers
�non_trainable_variables
�metrics
 �layer_regularization_losses
}	variables
~trainable_variables
regularization_losses
�layer_metrics
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�

kernel
recurrent_kernel
 bias
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"�
_tf_keras_layer�{"class_name": "LSTMCell", "name": "lstm_cell_1", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "lstm_cell_1", "trainable": true, "dtype": "float32", "units": 256, "activation": "tanh", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}}
5
0
1
 2"
trackable_list_wrapper
5
0
1
 2"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�layers
�non_trainable_variables
�metrics
 �layer_regularization_losses
�	variables
�trainable_variables
�regularization_losses
�layer_metrics
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�

!kernel
"bias
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"�
_tf_keras_layer�{"class_name": "Dense", "name": "dense_3", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_3", "trainable": true, "dtype": "float32", "units": 128, "activation": "elu", "use_bias": true, "kernel_initializer": {"class_name": "VarianceScaling", "config": {"scale": 2.0, "mode": "fan_in", "distribution": "truncated_normal", "seed": null, "dtype": "float32"}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 256}}}, "build_input_shape": {"class_name": "TensorShape", "items": [1, 1, 256]}}
6
S0
T1
�2"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�


kernel
	bias
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"�	
_tf_keras_layer�	{"class_name": "Conv2D", "name": "conv2d", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d", "trainable": true, "dtype": "float32", "filters": 16, "kernel_size": {"class_name": "__tuple__", "items": [4, 4]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "VarianceScaling", "config": {"scale": 2.0, "mode": "fan_in", "distribution": "truncated_normal", "seed": null, "dtype": "float32"}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 4}}}, "build_input_shape": {"class_name": "TensorShape", "items": [1, 17, 17, 4]}}
�



kernel
bias
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"�	
_tf_keras_layer�	{"class_name": "Conv2D", "name": "conv2d_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_1", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [2, 2]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "VarianceScaling", "config": {"scale": 2.0, "mode": "fan_in", "distribution": "truncated_normal", "seed": null, "dtype": "float32"}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 16}}}, "build_input_shape": {"class_name": "TensorShape", "items": [1, 7, 7, 16]}}
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"�
_tf_keras_layer�{"class_name": "Flatten", "name": "flatten", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "flatten", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}}}
�

kernel
bias
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"�
_tf_keras_layer�{"class_name": "Dense", "name": "dense", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense", "trainable": true, "dtype": "float32", "units": 256, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "VarianceScaling", "config": {"scale": 2.0, "mode": "fan_in", "distribution": "truncated_normal", "seed": null, "dtype": "float32"}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 1152}}}, "build_input_shape": {"class_name": "TensorShape", "items": [1, 1152]}}
@
�0
�1
�2
�3"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
5
0
1
2"
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�layers
�non_trainable_variables
�metrics
 �layer_regularization_losses
�	variables
�trainable_variables
�regularization_losses
�layer_metrics
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
'
h0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�layers
�non_trainable_variables
�metrics
 �layer_regularization_losses
�	variables
�trainable_variables
�regularization_losses
�layer_metrics
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�


kernel
bias
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"�	
_tf_keras_layer�	{"class_name": "Conv2D", "name": "conv2d_2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_2", "trainable": true, "dtype": "float32", "filters": 16, "kernel_size": {"class_name": "__tuple__", "items": [4, 4]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "elu", "use_bias": true, "kernel_initializer": {"class_name": "VarianceScaling", "config": {"scale": 2.0, "mode": "fan_in", "distribution": "truncated_normal", "seed": null, "dtype": "float32"}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 4}}}, "build_input_shape": {"class_name": "TensorShape", "items": [1, 17, 17, 4]}}
�


kernel
bias
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"�	
_tf_keras_layer�	{"class_name": "Conv2D", "name": "conv2d_3", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_3", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [2, 2]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "elu", "use_bias": true, "kernel_initializer": {"class_name": "VarianceScaling", "config": {"scale": 2.0, "mode": "fan_in", "distribution": "truncated_normal", "seed": null, "dtype": "float32"}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 16}}}, "build_input_shape": {"class_name": "TensorShape", "items": [1, 7, 7, 16]}}
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"�
_tf_keras_layer�{"class_name": "Flatten", "name": "flatten_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "flatten_1", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}}}
�

kernel
bias
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"�
_tf_keras_layer�{"class_name": "Dense", "name": "dense_2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_2", "trainable": true, "dtype": "float32", "units": 256, "activation": "elu", "use_bias": true, "kernel_initializer": {"class_name": "VarianceScaling", "config": {"scale": 2.0, "mode": "fan_in", "distribution": "truncated_normal", "seed": null, "dtype": "float32"}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 1152}}}, "build_input_shape": {"class_name": "TensorShape", "items": [1, 1152]}}
@
�0
�1
�2
�3"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
5
0
1
 2"
trackable_list_wrapper
5
0
1
 2"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�layers
�non_trainable_variables
�metrics
 �layer_regularization_losses
�	variables
�trainable_variables
�regularization_losses
�layer_metrics
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
(
�0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
!0
"1"
trackable_list_wrapper
.
!0
"1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�layers
�non_trainable_variables
�metrics
 �layer_regularization_losses
�	variables
�trainable_variables
�regularization_losses
�layer_metrics
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
.
0
	1"
trackable_list_wrapper
.
0
	1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�layers
�non_trainable_variables
�metrics
 �layer_regularization_losses
�	variables
�trainable_variables
�regularization_losses
�layer_metrics
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
.

0
1"
trackable_list_wrapper
.

0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�layers
�non_trainable_variables
�metrics
 �layer_regularization_losses
�	variables
�trainable_variables
�regularization_losses
�layer_metrics
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�layers
�non_trainable_variables
�metrics
 �layer_regularization_losses
�	variables
�trainable_variables
�regularization_losses
�layer_metrics
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�layers
�non_trainable_variables
�metrics
 �layer_regularization_losses
�	variables
�trainable_variables
�regularization_losses
�layer_metrics
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�layers
�non_trainable_variables
�metrics
 �layer_regularization_losses
�	variables
�trainable_variables
�regularization_losses
�layer_metrics
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�layers
�non_trainable_variables
�metrics
 �layer_regularization_losses
�	variables
�trainable_variables
�regularization_losses
�layer_metrics
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�layers
�non_trainable_variables
�metrics
 �layer_regularization_losses
�	variables
�trainable_variables
�regularization_losses
�layer_metrics
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�layers
�non_trainable_variables
�metrics
 �layer_regularization_losses
�	variables
�trainable_variables
�regularization_losses
�layer_metrics
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�2�
__inference_action_4777986
__inference_action_4778247�
���
FullArgSpec8
args0�-
jself
j	time_step
jpolicy_state
jseed
varargs
 
varkw
 
defaults�	
� 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
#__inference_distribution_fn_4778491�
���
FullArgSpec(
args �
j	time_step
jpolicy_state
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
%__inference_get_initial_state_4778507�
���
FullArgSpec!
args�
jself
j
batch_size
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
__inference_<lambda>_774"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
__inference_<lambda>_771"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
&__inference_signature_wrapper_40981549
0/discount0/observation0/reward0/step_type1/actor_network_state/01/actor_network_state/1"�
���
FullArgSpec
args� 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
&__inference_signature_wrapper_40981558
batch_size"�
���
FullArgSpec
args� 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
&__inference_signature_wrapper_40981566"�
���
FullArgSpec
args� 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
&__inference_signature_wrapper_40981570"�
���
FullArgSpec
args� 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpecL
argsD�A
jself
jobservation
j	step_type
jnetwork_state

jtraining
varargs
 
varkw
 
defaults�	
� 
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2��
���
FullArgSpecL
argsD�A
jself
jobservation
j	step_type
jnetwork_state

jtraining
varargs
 
varkw
 
defaults�	
� 
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2��
���
FullArgSpecL
argsD�A
jself
jobservation
j	step_type
jnetwork_state

jtraining
varargs
 
varkw
 
defaults�

 
� 
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2��
���
FullArgSpecL
argsD�A
jself
jobservation
j	step_type
jnetwork_state

jtraining
varargs
 
varkw
 
defaults�

 
� 
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2��
���
FullArgSpecL
argsD�A
jself
jobservation
j	step_type
jnetwork_state

jtraining
varargs
 
varkw
 
defaults�	
� 
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2��
���
FullArgSpecL
argsD�A
jself
jobservation
j	step_type
jnetwork_state

jtraining
varargs
 
varkw
 
defaults�	
� 
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2��
���
FullArgSpec?
args7�4
jself
jinputs
j
outer_rank

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2��
���
FullArgSpec?
args7�4
jself
jinputs
j
outer_rank

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2��
���
FullArgSpecL
argsD�A
jself
jobservation
j	step_type
jnetwork_state

jtraining
varargs
 
varkw
 
defaults�	
� 
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2��
���
FullArgSpecL
argsD�A
jself
jobservation
j	step_type
jnetwork_state

jtraining
varargs
 
varkw
 
defaults�	
� 
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpecL
argsD�A
jself
jobservation
j	step_type
jnetwork_state

jtraining
varargs
 
varkw
 
defaults�

 
� 
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2��
���
FullArgSpecL
argsD�A
jself
jobservation
j	step_type
jnetwork_state

jtraining
varargs
 
varkw
 
defaults�

 
� 
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2��
���
FullArgSpecH
args@�=
jself
jinputs
jinitial_state
j
reset_mask

jtraining
varargs
 
varkw
 
defaults�

 

 
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2��
���
FullArgSpecH
args@�=
jself
jinputs
jinitial_state
j
reset_mask

jtraining
varargs
 
varkw
 
defaults�

 

 
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpecL
argsD�A
jself
jobservation
j	step_type
jnetwork_state

jtraining
varargs
 
varkw
 
defaults�

 
� 
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2��
���
FullArgSpecL
argsD�A
jself
jobservation
j	step_type
jnetwork_state

jtraining
varargs
 
varkw
 
defaults�

 
� 
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2��
���
FullArgSpecH
args@�=
jself
jinputs
jinitial_state
j
reset_mask

jtraining
varargs
 
varkw
 
defaults�

 

 
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2��
���
FullArgSpecH
args@�=
jself
jinputs
jinitial_state
j
reset_mask

jtraining
varargs
 
varkw
 
defaults�

 

 
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2��
���
FullArgSpec3
args+�(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2��
���
FullArgSpec3
args+�(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec3
args+�(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2��
���
FullArgSpec3
args+�(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 7
__inference_<lambda>_771�

� 
� "� 	0
__inference_<lambda>_774�

� 
� "� �
__inference_action_4777986�	
���
���
���
TimeStep,
	step_type�
	step_type���������&
reward�
reward���������*
discount�
discount���������<
observation-�*
observation���������
���
~
actor_network_stateg�d
0�-
actor_network_state/0����������
0�-
actor_network_state/1����������

 
� "���

PolicyStep&
action�
action����������
state���
�
actor_network_states�p
6�3
state/actor_network_state/0����������
6�3
state/actor_network_state/1����������
info� �
__inference_action_4778247�	
���
���
���
TimeStep6
	step_type)�&
time_step/step_type���������0
reward&�#
time_step/reward���������4
discount(�%
time_step/discount���������F
observation7�4
time_step/observation���������
���
�
actor_network_state��~
=�:
"policy_state/actor_network_state/0����������
=�:
"policy_state/actor_network_state/1����������

 
� "���

PolicyStep&
action�
action����������
state���
�
actor_network_states�p
6�3
state/actor_network_state/0����������
6�3
state/actor_network_state/1����������
info� �
#__inference_distribution_fn_4778491�	
���
���
���
TimeStep,
	step_type�
	step_type���������&
reward�
reward���������*
discount�
discount���������<
observation-�*
observation���������
���
~
actor_network_stateg�d
0�-
actor_network_state/0����������
0�-
actor_network_state/1����������
� "���

PolicyStep�
action�����Ã}�z
`
C�@
"j tf_agents.policies.greedy_policy
jDeterministicWithLogProb
*�'
%
loc�
Identity���������
� _TFPTypeSpec�
state���
�
actor_network_states�p
6�3
state/actor_network_state/0����������
6�3
state/actor_network_state/1����������
info� �
%__inference_get_initial_state_4778507�"�
�
�

batch_size 
� "���
~
actor_network_stateg�d
0�-
actor_network_state/0����������
0�-
actor_network_state/1�����������
&__inference_signature_wrapper_40981549�	
���
� 
���
.

0/discount �

0/discount���������
@
0/observation/�,
0/observation���������
*
0/reward�
0/reward���������
0
0/step_type!�
0/step_type���������
M
1/actor_network_state/02�/
1/actor_network_state/0����������
M
1/actor_network_state/12�/
1/actor_network_state/1����������"���
&
action�
action���������
U
state/actor_network_state/06�3
state/actor_network_state/0����������
U
state/actor_network_state/16�3
state/actor_network_state/1�����������
&__inference_signature_wrapper_40981558�0�-
� 
&�#
!

batch_size�

batch_size "���
I
actor_network_state/00�-
actor_network_state/0����������
I
actor_network_state/10�-
actor_network_state/1����������Z
&__inference_signature_wrapper_409815660�

� 
� "�

int64�
int64 	>
&__inference_signature_wrapper_40981570�

� 
� "� 